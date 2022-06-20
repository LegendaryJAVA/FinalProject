package pkg.$;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 메인 컨트롤러
@Controller
public class PageController {

	@RequestMapping("/") 
	public String mainPage2 (Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "index";
	}
    @RequestMapping("test") 
	public String testPage (Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "test";
	}
	@RequestMapping("update")
	public String updateSQL () {

		return "";
	}

}
