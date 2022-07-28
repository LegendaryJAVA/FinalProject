package pkg.$;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pkg.movie.MovieService;
import pkg.movie.MovieUtil;

// 메인 컨트롤러
@Controller
public class PageController {

	@Autowired
	MovieService movieService;

	@RequestMapping("/") 
	public String welcome (Model model, HttpServletRequest request, HttpServletResponse response) {
		
		model.addAttribute("carousel_1", MovieUtil.HTML_carousel(movieService.random(6)));
		model.addAttribute("carousel_2", MovieUtil.HTML_carousel(movieService.random(6)));
		model.addAttribute("carousel_3", MovieUtil.HTML_carousel(movieService.random(6)));

		return "index";
	}
}
