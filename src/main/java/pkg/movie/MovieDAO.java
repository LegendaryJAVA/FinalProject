package pkg.movie;

import java.util.List;
import java.util.Map;

public interface MovieDAO {

	
	
	 List<MovieVO> getMovieList(String keyword);
	 
	 Map<String, List<String>> getMovieAPI(Map<String, Object> params);
	
}
