package pkg.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pkg.movieCast.MovieCastService;

import java.util.List;

@Controller
public class MovieController { 

    MovieService movieService;
    MovieCastService movieCastService;
    @Autowired
    public MovieController(MovieService movieService, MovieCastService movieCastService){
        this.movieService = movieService;
        this.movieCastService = movieCastService;
    }
 
    // 검색 결과를 보여주는 페이지
    @RequestMapping("movie.search")
    public String searchResultPage (String keyword, Model model, HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("keyword", keyword);
        
        List<MovieVO> list = movieService.searchMovieList(keyword);
        
        //테스트용
        String strHTML = "";
        for(MovieVO vo : list){
            strHTML += "<div>";
            strHTML += "<div>제목&nbsp;&nbsp;<a href=\"movie.info?docid="+vo.getDocId()+"\">"+vo.getTitle()+"</a></div>";
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
        model.addAttribute("docid", docid);
    
        List<MovieVO> list = movieService.getMovieInfo(docid);
        MovieVO resultVO = list.get(0);
        //model.addAttribute("resultVO",resultVO);
        model.addAttribute("movieName",resultVO.getTitle());
        model.addAttribute("movieTitle",resultVO.getTitle());
        model.addAttribute("movieGenre",resultVO.getGenre());
        model.addAttribute("moviePlot",resultVO.getPlot());
        
        return "movie.info";
    }
    
}
