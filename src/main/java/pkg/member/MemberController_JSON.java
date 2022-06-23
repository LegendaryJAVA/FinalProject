package pkg.member;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberController_JSON {

	@PostMapping
	public String getMember() {
		
		return "";
	}
}
