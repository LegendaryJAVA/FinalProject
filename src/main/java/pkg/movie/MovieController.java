package pkg.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pkg.movieCast.MovieCastService;

@Controller
public class MovieController { 

    MovieService movieService;
    MovieCastService movieCastService; 
 
    // 검색 결과를 보여주는 페이지
    @RequestMapping("movie.search")
    public String searchResultPage (String keyword, Model model, HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("keyword", keyword);
        model.addAttribute("result", keyword);
        return "movie.search";
    }
 
    //  영화 정보를 보여주는 페이지
    @RequestMapping("movie.info")
    public String movieInfoPage (String docid, Model model, HttpServletRequest request, HttpServletResponse response) {

        if(docid == null || docid.length() == 0) return "errorPage";

        MovieVO movie = new MovieVO();
        movie.setTitle("영화제목");
        movie.setGenre("genre");
        movie.setCompany("company");
        movie.setPlot("dasdadsddsadsdsadsdasdasdddsada");

        model.addAttribute("docid", docid);
        model.addAttribute("movieTitle", movie.getTitle());
        model.addAttribute("movieGenre", movie.getGenre());
        model.addAttribute("movieCompany", movie.getCompany());
        model.addAttribute("moviePlot", movie.getPlot());

        return "movie.info";
    }
    
}
