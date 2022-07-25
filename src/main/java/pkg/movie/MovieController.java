package pkg.movie;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

//import pkg.movieCast.MovieCastService;

@Controller
public class MovieController { 

	@Autowired
    MovieService movieService;
	//@Autowired
    //MovieCastService movieCastService; 
	@Autowired
	MovieDAO movieDAO;
	
	// 검색결과 HTML SET, movie.search에 수직 목록 보여줄 때 사용됨
	public String HTML$movies_large (List<MovieVO> list) {
		String HTML = "";

		for(MovieVO vo : list) {
			HTML += "<div class='dagger dagger-horizontal' data-docid=" + vo.getDOCID()  + ">";
			HTML += 	"<div class='poster'> <img src='" + vo.getPosters() + "'> </div>";
			HTML += 	"<div class='desc'>";
			HTML += 		"<div class='title'>" + vo.getTitle() + "</div>";
			HTML += 		"<div class='edge'>";
			HTML += 			"<div class='i'>" + vo.getReleaseDate() + "</div>";
			HTML += 			"<div class='j'>" + vo.getGenre() + "</div>";
			HTML += 			"<div class='k'>" + vo.getRuntime() + "</div>";
			//HTML += 			"<div class='l'>" + 출연진 정보 + "</div>";
			//HTML += 			"<div class='m'>" + 감독 정보 등 + "</div>";
			HTML +=			"</div>";
			HTML += 	"</div>";
			HTML += "</div>";
		}

		return HTML;
	}
	// 영화 목록 HTML SET, 메인 페이지에서 수평 목록 보여줄 떄 사용됨
	public String HTML$movies_small (List<MovieVO> list) {
		String HTML = "";

		for(MovieVO vo : list) {
			// create html doms
		}

		return HTML;
	}

	// 검색 결과를 보여주는 페이지
    @GetMapping("movie.search")
    public String searchResultPage (String keyword, Model model, HttpServletRequest request, HttpServletResponse response) {
    	System.out.println(keyword  +  "  - - -  keyWord   여기는 movie.search로 매핑되어있는 곳.");
		List<MovieVO> list = movieService.searchMovieList(keyword);
		// TODO : 인덱스 카운터가 필요함, movieService.searchMovieList(keyword, 1);
		// TODO : 결과값이 N개가 존재할 때, P 개 단위로 페이지를 나눠 그 중, 1 페이지를 가져오는 형태

		model.addAttribute("keyword", keyword);
		model.addAttribute("searchResult", HTML$movies_large(list));
		
		return "movie.search";
    }
	// 검색 결과를 전달하는 메서드
	@PostMapping("movie.search")
    public String searchResult (String keyword, Model model, HttpServletRequest request, HttpServletResponse response) {
		List<MovieVO> list = movieService.searchMovieList(keyword);
		// TODO : 검색 결과 창에서 처음 1 페이지만 보여주고, 아래 [더보기] 버튼을 누르면 이 메서드를 통해 추가적인 데이터를 불러오도록 함
		// TODO : ajax를 통해서 HTML 문자열을 던져주고 그걸 받아서 바로 페이지에 삽입

		return HTML$movies_large(list);
    }
	
	//  영화 정보를 보여주는 페이지
    @RequestMapping("movie.info")
    public String movieInfoPage (String docid, Model model, HttpServletRequest request, HttpServletResponse response) {

        if(docid == null || docid.length() == 0) return "errorPage";

		List<MovieVO> list = movieService.getMovieInfo(docid);
		MovieVO resultVO = list.get(0);
		//model.addAttribute("resultVO",resultVO);
		model.addAttribute("posters",resultVO.getPosters());
		model.addAttribute("movieName",resultVO.getTitle());
		model.addAttribute("movieTitle",resultVO.getTitle());
		model.addAttribute("movieGenre",resultVO.getGenre());
		model.addAttribute("moviePlot",resultVO.getPlots());
	
		//+해당영화게시물
		//+그 게시물의 댓글
	
		return "movie.info";
    }
	
	@RequestMapping("moviegrid")
	public String movieGridPage(Model model, HttpServletRequest request, HttpServletResponse response){
		
		return "moviegrid";
	}
	@ResponseBody
	@RequestMapping("moviegridData")
	public String movieGridData(Model model, HttpServletRequest request, HttpServletResponse response){
		
		List<MovieVO> list = movieService.loadMovieList("");
		
		return new Gson().toJson(list);
	}
	

	@RequestMapping("moviegridSave")
	public String moviegridSave(Model model, HttpServletRequest request, HttpServletResponse response){
		List<MovieVO> saveList = new ArrayList<>();
		
		//saveRow
		MovieVO movie = new MovieVO();
		movie.setDOCID(request.getParameter("DOCID"));
		movie.setTitle(request.getParameter("title"));
		movie.setTitleEng(request.getParameter("titleEng"));
		movie.setTitleEtc(request.getParameter("titleEtc"));
		movie.setProdYear(request.getParameter("prodYear"));
		movie.setNation(request.getParameter("nation"));
		movie.setRuntime(request.getParameter("runtime"));
		movie.setGenre(request.getParameter("genre"));
		movie.setPlots(request.getParameter("plots"));
		movie.setPosters(request.getParameter("posters"));
		movie.setReleaseDate(request.getParameter("releaseDate"));
		movie.setKeywords(request.getParameter("keywords"));
		movie.setCompany(request.getParameter("company"));
		saveList.add(movie);
		
		List<Object> list = movieService.saveMovieList(saveList);
		
		return "moviegrid";
	}
	
	@RequestMapping("moviegridDelete")
	public String moviegridDelete(Model model, HttpServletRequest request, HttpServletResponse response){
		
		
		List<MovieVO> delList = new ArrayList<>();
		MovieVO movie = new MovieVO();
		movie.setDOCID(request.getParameter("id"));
		delList.add(movie);
		
		List<Object> list = movieService.delMovieList(delList);
		
		return "moviegrid";
	}
    
    @ResponseBody
    @RequestMapping("MovieAPI")
    public String KMDB에서_영화API_갸져와서_INSERT하기(@RequestBody Map<String, Object> params) {
    	
    	Map<String, Object> chkResultMap = movieDAO.getMovieAPI(params);
 
    	List<Map<String, String>> resultList = (List<Map<String, String>>)chkResultMap.get("result");
    	System.out.println("MovieAPI 리턴");
    	for(Map<String, String> element : resultList) {
        	System.out.println("-----------");
    		System.out.println("sqlCode : "+ element.get("sqlCode"));
    		System.out.println("sqlErrm : "+ element.get("sqlErrm"));
    		System.out.println("ErrMsg : "+ element.get("ErrMsg"));
    		
    	}
    	
    	return new Gson().toJson(resultList);
    }
  
	@ResponseBody
    @RequestMapping("qs")
    public String quickSearch(String keyword) {
    	
		Map<String, Object> movies = movieService.quickSearch(keyword);
 
    	return new Gson().toJson(movies);
    }

}
