package pkg.movie;


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

	// 무작위 영화를 size 개수만큼 출력
	@ResponseBody
	@PostMapping("movie.random")
	public String pick_random_movies(int size) { 
		return MovieUtil.HTML_carousel(movieService.random(size));
	}

	// 검색 결과를 보여주는 페이지
    @GetMapping("movie.search")
    public String searchResultPage (String keyword, Model model, HttpServletRequest request, HttpServletResponse response) {
    	System.out.println(keyword  +  "  - - -  keyWord   여기는 movie.search로 매핑되어있는 곳.");
		List<MovieVO> list = movieService.searchMovieList(keyword);
		// TODO : 인덱스 카운터가 필요함, movieService.searchMovieList(keyword, 1);
		// TODO : 결과값이 N개가 존재할 때, P 개 단위로 페이지를 나눠 그 중, 1 페이지를 가져오는 형태

		model.addAttribute("keyword", keyword);
		model.addAttribute("searchResult", MovieUtil.HTML_movieInfo(list));
	
		return "movie.search";
    }
	// 검색 결과를 전달하는 메서드
	@PostMapping("movie.search")
    public String searchResult (String keyword, Model model, HttpServletRequest request, HttpServletResponse response) {
		List<MovieVO> list = movieService.searchMovieList(keyword);
		// TODO : 검색 결과 창에서 처음 1 페이지만 보여주고, 아래 [더보기] 버튼을 누르면 이 메서드를 통해 추가적인 데이터를 불러오도록 함
		// TODO : ajax를 통해서 HTML 문자열을 던져주고 그걸 받아서 바로 페이지에 삽입

		return MovieUtil.HTML_movieInfo(list);
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
		
		List<MovieVO> list = movieService.searchMovieList("");
		
		return new Gson().toJson(list);
	}
	
	@RequestMapping("moviegridSave")
	public String moviegridSave(Model model, HttpServletRequest request, HttpServletResponse response){
		
		
		
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
