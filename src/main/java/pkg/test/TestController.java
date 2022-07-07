package pkg.test;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
public class TestController {

    @Autowired
    TestService testService; 

    @GetMapping("test") 
	public String testPage (Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "test";
	}
    @ResponseBody
    @PostMapping("test") 
    public String test (@RequestBody Map<String, Object> params) {
        // testService.function(params);
        return new Gson().toJson(params);
    }
    @ResponseBody
    @PostMapping("testoc") 
    public String testOracleCloud (@RequestBody Map<String, Object> params) {
        List<TestVO> vos = testService.getData("1");
        return new Gson().toJson(vos);
    } 

}
