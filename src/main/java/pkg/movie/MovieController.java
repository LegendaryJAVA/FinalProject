package pkg.movie;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	// 검색 결과를 보여주는 페이지
    @RequestMapping("movie.search")
    public String searchResultPage (String keyword, Model model, HttpServletRequest request, HttpServletResponse response) {
    	System.out.println(keyword  +  "  - - -  keyWord   여기는 movie.search로 매핑되어있는 곳.");
	
		model.addAttribute("keyword", keyword);
	
		List<MovieVO> list = movieService.searchMovieList(keyword);
	
		
		String strHTML = "";
		for(MovieVO vo : list){
			strHTML += "<div>";
			strHTML += "<div>제목&nbsp;&nbsp;<a href=\"movie.info?docid="+vo.getDOCID()+"\">"+vo.getTitle()+"</a></div>";
			strHTML += "<div>영어제목&nbsp;&nbsp;"+vo.getTitleEng()+"</div>";
			strHTML += "<div>장르&nbsp;&nbsp;"+vo.getGenre()+"</div>";
			strHTML += "<div>상영시간&nbsp;&nbsp;"+vo.getRuntime()+"</div>";
			strHTML += "</div>";
		}
	
		model.addAttribute("searchResult",strHTML);
	
		return "movie.search";
    }
	
	//  영화 정보를 보여주는 페이지
    @RequestMapping("movie.info")
    public String movieInfoPage (String docid, Model model, HttpServletRequest request, HttpServletResponse response) {

        if(docid == null || docid.length() == 0) return "errorPage";

	
		List<MovieVO> list = movieService.getMovieInfo(docid);
		MovieVO resultVO = list.get(0);
		//model.addAttribute("resultVO",resultVO);
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
	
    
    @RequestMapping("test2")
    public String asasdsq() {
    	return "test2";
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
