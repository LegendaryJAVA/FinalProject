package pkg.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonObject;

@RestController
public class MemberJSonController {
	
	@Autowired
	MemberService memberService;

	
	@PostMapping("loginchk")
	public String loginchk(@RequestBody Map<String, Object> map, HttpSession session) {
		System.out.println(memberService.loginchk(map));
		if(!(memberService.loginchk(map).equals("FAIL"))) {
			session.setAttribute("mid", memberService.loginchk(map));
			JsonObject obj = new JsonObject();	
			obj.addProperty("result", "SUC");
			
			return obj.toString();
		}
		
		return "{\"result\": \"FAIL\" }";
		
	}
	@PostMapping("chk")
	public String chk(@RequestBody Map<String,Object> map) {
		
		JsonObject obj = new JsonObject();
		obj.addProperty("result", memberService.chk(map));
		
		
		return  obj.toString();
	}
	@PostMapping("test2")
	public String gaip(@RequestBody Map<String,Object> map) {
		Map<String, Object> jmap = (Map<String, Object>) map.get("data");
		System.out.println(map.get("data"));
		System.out.println(jmap);
		memberService.insmem(jmap);
		
		return  "";
	}

	
	
	
}
