package pkg.test;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @Autowired
    TestService testService; 

    @GetMapping("test") 
	public String testPage (Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "test";
	}

}
