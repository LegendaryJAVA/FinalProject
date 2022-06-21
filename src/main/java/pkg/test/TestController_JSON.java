package pkg.test;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

@RestController
public class TestController_JSON {

    @Autowired
    TestService testService; 

    // 받은 객체를 그대로 돌려주는 메서드
    // >> MAP{ key : value }
    // << MAP{ key : value }
    @PostMapping("test") 
    public String test (@RequestBody Map<String, Object> params) {
        // testService.function(params);
        return new Gson().toJson(params);
    } 
    @PostMapping("testoc") 
    public String testOracleCloud (@RequestBody Map<String, Object> params) {
        List<TestVO> vos = testService.getData("1");
        return new Gson().toJson(vos);
    } 
}
