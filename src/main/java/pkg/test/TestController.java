package pkg.test;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.google.gson.Gson;

@Controller
public class TestController {

    @Autowired
    TestService testService; 

    @GetMapping("test") 
	public String testPage (Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "test";
	}
    // 받은 객체를 그대로 돌려주는 메서드
    // >> MAP{ key : value }
    // << MAP{ key : value }
    @PostMapping("test") 
    public String test (@RequestBody Map<String, Object> params) {
        // testService.function(params);
        return new Gson().toJson(params);
    }
}
