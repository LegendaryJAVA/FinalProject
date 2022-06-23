package pkg.movieCast;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
public class MovieCastController {
    
	
	
	
	@Autowired
	MovieCastDAO movieCastDAO;
	
	
	@ResponseBody
	@RequestMapping("DirectorAPI")
	public String 감독_API_데이터_가져오기(@RequestBody Map<String, Object> params) {
		
		
		Map<String, Object> resultErrorMsg = movieCastDAO.InsertDirectorAPI(params);

		
		List<Map<String, String>> resultList = (List<Map<String, String>>)resultErrorMsg.get("result");
	
		 for(Map<String, String> errList : resultList) {
			 
			 //0623 15:34 예외처리에 추가된 데이터
			 System.out.println(errList.get("DOCID"));
			 
			 
			 
			 System.out.println(errList.get("ErrMsg"));
			 System.out.println(errList.get("sqlCode"));
			 System.out.println(errList.get("sqlErrm"));
			 System.out.println("--------------------------------");
		 }
		 
		 
		 return new Gson().toJson(resultList); 
	}
	
	@ResponseBody
	@RequestMapping("ActorAPI")
	public String 배우_API_데이터_가져오기(@RequestBody Map<String, Object> params) {
		
		
		Map<String, Object> resultErrMsgMap =  movieCastDAO.InsertActorAPI(params);
		List<Map<String,String>> resultList = (List<Map<String,String>>)resultErrMsgMap.get("result");
		
		for(Map<String,String> result : resultList) {
			System.out.println(result.get("ACTORID"));
			System.out.println(result.get("ErrMsg"));
			System.out.println(result.get("sqlCode"));
			System.out.println(result.get("sqlErrm"));
			System.out.println("-----------------------------------------------");
		}
		
		
		return new Gson().toJson(resultList);
	}
	
	
	
}
