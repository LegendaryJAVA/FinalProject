package pkg.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonObject;

@RestController
public class MemberController_JSON {

	@Autowired
	MemberService memberService;

	
	@PostMapping("loginchk")
	public String loginchk(@RequestBody Map<String, Object> map, HttpSession session) {
		System.out.println(memberService.loginchk(map));
		if(!(memberService.loginchk(map).equals("FAIL"))) {
			session.setAttribute("memberid", memberService.loginchk(map));
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
		System.out.println("-------------");
		String memberid = (String)jmap.get("memberid");
		System.out.println(memberid);
		System.out.println(memberService.insmem(jmap));
		System.out.println("----------------");
		if (memberid.equals(memberService.insmem(jmap))) {
			
			return "{\"result\": \"SUC\" }";
		}
		
		
		
		return "{\"result\": \"FAIL\" }";
		
	}
	@PostMapping("myform") // profile // profile?memberId=this9999
	public String myform(@RequestBody Map<String,Object> map) {
		List<MemberVO> memlist = (List<MemberVO>)memberService.selmem(map);
		System.out.println("----myform-----");
		System.out.println(map);
		JsonObject obj = new JsonObject();
		for(MemberVO vo : memlist) {
		
			obj.addProperty("memberid", vo.getMemberid());
			obj.addProperty("memberbirth", vo.getMemberbirth());
			obj.addProperty("memberauth", vo.getMemberauth());
			obj.addProperty("membergender", vo.getMembergender());
			obj.addProperty("memberhob1", vo.getMemberhob1());
			obj.addProperty("memberhob2", vo.getMemberhob2());
			obj.addProperty("memberhob3", vo.getMemberhob3());
			obj.addProperty("membernickname", vo.getMembernickname());
			obj.addProperty("memberprofile", vo.getMemberprofile());
			obj.addProperty("membersigndate", vo.getMembersigndate());
			
			System.out.println(vo.getMemberid());
			System.out.println(vo.getMemberbirth());
			System.out.println(vo.getMemberauth());
			System.out.println(vo.getMembergender());
			System.out.println(vo.getMemberhob1());
			System.out.println(vo.getMemberhob2());
			System.out.println(vo.getMemberhob3());
			System.out.println(vo.getMembernickname());
			System.out.println(vo.getMemberprofile());
			System.out.println(vo.getMembersigndate());			
		}
		System.out.println("-------");
		return obj.toString();
	}
	@PostMapping("updatemember")
	public String updateprofile(@RequestBody Map<String,Object> map) {
		System.out.println("----update controller");
		System.out.println(map.get("updatedata"));
		memberService.selmem(map);
		
		if(memberService.updatemem((Map<String, Object>) map.get("updatedata")).equals("SUC")) {
			System.out.println("성공");
			return "{\"result\": \"SUC\" }";
		}
		
		System.out.println("실패");
		return "{\"result\": \"FAIL\" }";
	}
	
	
	
	@GetMapping("profile2")
	public String profile(String memberid, HttpSession session) {
		boolean isOwn = false;
		System.out.println(session.getAttribute("memberid"));
		// session 체크
		System.out.println("---getmapping---");
		System.out.println(memberid);
		if (session.getAttribute("memberid").equals(memberid)) {
			isOwn = true;
		}
		else {
			isOwn = false;
		}
		Map<String , Object> map =new HashMap<String, Object>() ;
		map.put("memberid", memberid);
		List<MemberVO> memlist = (List<MemberVO>)memberService.selmem(map);
		JsonObject obj = new JsonObject();
		for(MemberVO vo : memlist) {
			
			obj.addProperty("memberid", vo.getMemberid());
			obj.addProperty("memberbirth", vo.getMemberbirth());
			obj.addProperty("memberauth", vo.getMemberauth());
			obj.addProperty("membergender", vo.getMembergender());
			obj.addProperty("memberhob1", vo.getMemberhob1());
			obj.addProperty("memberhob2", vo.getMemberhob2());
			obj.addProperty("memberhob3", vo.getMemberhob3());
			obj.addProperty("membernickname", vo.getMembernickname());
			obj.addProperty("memberprofile", vo.getMemberprofile());
			obj.addProperty("membersigndate", vo.getMembersigndate());
			obj.addProperty("isOwn", isOwn);
			System.out.println(vo.getMemberid());
			System.out.println(vo.getMemberbirth());
			System.out.println(vo.getMemberauth());
			System.out.println(vo.getMembergender());
			System.out.println(vo.getMemberhob1());
			System.out.println(vo.getMemberhob2());
			System.out.println(vo.getMemberhob3());
			System.out.println(vo.getMembernickname());
			System.out.println(vo.getMemberprofile());
			System.out.println(vo.getMembersigndate());			
		
		}
		
		
		
	
		return obj.toString();
	}
	
}
