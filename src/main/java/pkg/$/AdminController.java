package pkg.$;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

@RestController
public class AdminController {

	@PostMapping("admin.movie.select")
	public String selectMovie (@RequestBody Map<String, Object> params, HttpServletRequest request, HttpServletResponse response) {

		return new Gson().toJson("");
	}
	@PostMapping("admin.movie.update")
	public String updateMovieDatabase (@RequestBody Map<String, Object> params, HttpServletRequest request, HttpServletResponse response) {
		
		// Map<String, Object> oracleResult = movieService.update(params);
		// actorService.update(actors);
		// directorService.update(directors);
		ArrayList<Map<String,Object>> result = (ArrayList<Map<String, Object>>)params.get("Result");
		Map<String, Object> movie = result.get(0);
		Map<String, Object> actors = (Map<String, Object>)movie.get("actors");
		List<Object> actor = (List<Object>)actors.get("actor");
		System.out.println(">> admin.movie.update");
		System.out.println(actors);
		System.out.println(actor);
			

		return new Gson().toJson("");
	}
	@PostMapping("admin.movie.delete")
	public String deleteMovie (@RequestBody Map<String, Object> params, HttpServletRequest request, HttpServletResponse response) {

		return new Gson().toJson("");
	}

	@PostMapping("admin.member.select")
	public String selectMember () {
		
		return new Gson().toJson("");
	}
	@PostMapping("admin.member.update")
	public String updateMember () {
		
		return new Gson().toJson("");
	}
	@PostMapping("admin.member.delete")
	public String deleteMember () {
		
		return new Gson().toJson("");
	}
	
}
