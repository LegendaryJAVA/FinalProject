package pkg.$;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;


import pkg.movie.MovieService;
import pkg.movie.MovieVO;
import pkg.movieCast.MovieCastService;
import pkg.staff.StaffService;

@Controller
public class AdminController {

	@Autowired
	StaffService staffService;
	@Autowired
	MovieCastService movieCastService;
	@Autowired
	MovieService movieService;

	@GetMapping(value={"admin.{menu}"}) 
	public String landing (@PathVariable("menu") String menu, Model model, HttpServletRequest request, HttpServletResponse response) {
		model.addAttribute("content", menu);
		return "admin."+menu;
	}
	
	@ResponseBody
	@PostMapping("admin.movie.select")
	public String selectMovie (@RequestBody Map<String, Object> params, HttpServletRequest request, HttpServletResponse response) {

		return new Gson().toJson("");
	}

	@ResponseBody
	@PostMapping("admin.movie.update")
	public String updateMovieDatabase (@RequestBody Map<String, Object> params, HttpServletRequest request, HttpServletResponse response) {
		
		// Map<String, Object> oracleResult = movieService.update(params);
		// actorService.update(actors);
		// directorService.update(directors);
		ArrayList<Map<String,Object>> result = (ArrayList<Map<String, Object>>)params.get("Result");
		Map<String, Object> movie = result.get(0);
		Map<String, Object> actors = (Map<String, Object>)movie.get("actors");
		List<Object> actor = (List<Object>)actors.get("actor");
		System.out.println(">> admin.movie.update");
		System.out.println(actors);
		System.out.println(actor);
			

		return new Gson().toJson("");
	}
	@PostMapping("admin.movie.delete")
	public String deleteMovie (@RequestBody Map<String, Object> params, HttpServletRequest request, HttpServletResponse response) {

		return new Gson().toJson("");
	}

	@ResponseBody
	@PostMapping("admin.movie.reflect")
	public String testMember (@RequestBody Map<String, Object> params) {

		System.out.println("/admin.movie.relfect ---");
		List<Map<String, Object>> movieArray = (List<Map<String, Object>>) params.get("Result");
		List<OracleResult> oracleReturn = new ArrayList<OracleResult>();

		//System.out.println(movieArray); 입력된 원본 데이터 배열 (RAW데이터)
		
		for (Map<String, Object> movie : movieArray) {
			String docId = (String)movie.get("DOCID");

			// 일치하는 DOCID의 영화가 테이블에 존재하는 지 확인
			List<MovieVO> result = movieService.getMovieInfo(docId);

			boolean alreadyExistMovie = result.size() == 0;
			System.out.println( movie.get("title")+"("+docId+")"+" : "+ alreadyExistMovie );

			// 존재하지 않는다면 데이터 분해
			if (alreadyExistMovie) {
				
				//title 정규표현식을 이용한 제목 정규화
				movie.put("title", ((String)movie.get("title")).replaceAll("^\\s|\\s!HS\\s|\\s!HE\\s", ""));

				//plot 속성 평탄화 (plots : plot : [plotLang: ..., plotText : "플롯내용"] => plots : "플롯내용")
				Map<String, Object> plots = (Map<String, Object>) movie.get("plots");
				List<Map<String, Object>> plot = (List<Map<String, Object>>)plots.get("plot");

				String extractedPlot = null;
				for(Map<String, Object> p : plot) {
					if( p.get("plotLang").equals("한국어") ) {
						 extractedPlot = (String)p.get("plotText");
					}
				}
				movie.put("plots", extractedPlot);
				
				// staff 배열을 Map으로 변환 (일치하는 값을 찾기 편하게 하기 위함)
				Map<String, String> convertedStaffMap = new HashMap<String, String>();

				Map<String, Object> sMap = (Map<String, Object>) movie.get("staffs");
				List<Map<String, Object>> staff = (ArrayList<Map<String, Object>>) sMap.get("staff");

				for(Map<String, Object> s : staff) {
					convertedStaffMap.put((String)s.get("staffNm"), (String)s.get("staffRoleDetail"));
				}
			
				// actor 배열 추출 및 정규화
				Map<String, Object> aMap = (Map<String, Object>) movie.get("actors");
				List<Map<String, Object>> actor = (ArrayList<Map<String, Object>>) aMap.get("actor"); // actor[{}, {}]

				for(Map<String, Object> a : actor) {
					// 출연한 배우가 없는 영화의 경우 (더빙영화 등은 감독만 존재) 바로 break;
					if(a.get("actorNm").equals("") && a.get("actorId").equals("")) {
						actor.clear();
						break;
					} else {
						a.put("DOCID", docId);
						a.put("staffId", a.get("actorId"));
						a.put("staffNm", a.get("actorNm"));
						a.put("staffEnNm", a.get("actorEnNm"));
						a.put("role", "actor");		
						a.put("refDate", "2022/02/02");	
						a.put("roleDetail", convertedStaffMap.get(a.get("actorNm")));
					}

				}
				
				// director 배열 추출 및 정규화
				Map<String, Object> dMap = (Map<String, Object>) movie.get("directors");
				List<Map<String, Object>> director = (List<Map<String, Object>>) dMap.get("director"); // director[]

				for(Map<String, Object> d : director) {
					d.put("DOCID", docId);
					d.put("staffId", d.get("directorId"));
					d.put("staffNm", d.get("directorNm"));
					d.put("staffEnNm", d.get("directorEnNm"));
					d.put("role", "director");
					d.put("refDate", "2022/02/02");		
					d.put("roleDetail", convertedStaffMap.get(d.get("directorNm")));
				}

				// actor, director 배열 합치기
				List<Map<String, Object>> staffArray = new ArrayList<Map<String, Object>>();
				staffArray.addAll(actor);
				staffArray.addAll(director);

				List<Map<String, Object>> movieWrapper = new ArrayList<Map<String, Object>>();
				movieWrapper.add(movie);

				oracleReturn.add(movieService.reflect(movieWrapper).get(0));
				staffService.reflect(staffArray);

				// for(Map<String, Object> s : staffArray) {
				// 	s.put("castId", s.get("staffIdx"));
				// } 
				movieCastService.reflect(staffArray);
				
			}

		}

		return new Gson().toJson(oracleReturn);
	}

	@PostMapping("admin.member.select")
	public String selectMember () {
		
		return new Gson().toJson("");
	}
	@PostMapping("admin.member.update")
	public String updateMember () {
		
		return new Gson().toJson("");
	}
	@PostMapping("admin.member.delete")
	public String deleteMember () {
		
		return new Gson().toJson("");
	}

	//	///
}
