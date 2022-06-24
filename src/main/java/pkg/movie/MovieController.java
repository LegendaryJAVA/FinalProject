package pkg.movie;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	
	
    // 寃��깋 寃곌낵瑜� 蹂댁뿬二쇰뒗 �럹�씠吏�
    @RequestMapping("movie.search")
    public String searchResultPage (String keyword, Model model, HttpServletRequest request, HttpServletResponse response) {
    	System.out.println(keyword  +  "  - - -  keyWord   여기는 movie.search로 매핑되어있는 곳.");
  	
    	List<MovieVO> menuList = movieService.getMovieList(keyword);
  	
    	String strHTML = "";
    	String docID = "";
    	for(MovieVO vo : menuList) {
    		strHTML += "<div>";
    		strHTML += "<div>" + vo.getTitle() + "</div>";
    		strHTML += "<div>" + vo.getTitleEng() + "</div>";
    		strHTML += "<div>" + vo.getTitleEtc() + "</div>";
    		strHTML += "<div>" + vo.getGenre() + "</div>";
    		strHTML += "</div>";
    		//docID = vo.getDocId();
    	}
    	
    	model.addAttribute("docID", docID);
        model.addAttribute("keyword", keyword);
        model.addAttribute("result", strHTML);
        return "movie.search";
    }
 
    //  �쁺�솕 �젙蹂대�� 蹂댁뿬二쇰뒗 �럹�씠吏�
    @RequestMapping("movie.info")
    public String movieInfoPage (String docid, Model model, HttpServletRequest request, HttpServletResponse response) {

        if(docid == null || docid.length() == 0) return "errorPage";

        MovieVO movie = new MovieVO();
        movie.setTitle("�쁺�솕�젣紐�");
        movie.setGenre("genre");
        movie.setCompany("company");
       // movie.setPlot("dasdadsddsadsdsadsdasdasdddsada");

        model.addAttribute("docid", docid);
        model.addAttribute("movieTitle", movie.getTitle());
        model.addAttribute("movieGenre", movie.getGenre());
        model.addAttribute("movieCompany", movie.getCompany());
        //model.addAttribute("moviePlot", movie.getPlot());

        return "movie.info";
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
  
}
