package pkg.$;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

@RestController
public class AdminController {

	@PostMapping("admin.movie.update")
	public String updateMovieDatabase () {
		
		return new Gson().toJson("");
	}
	@PostMapping("admin.member.update")
	public String updateMember () {
		
		return new Gson().toJson("");
	}
	
}
