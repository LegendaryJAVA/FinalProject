package pkg.movie;

import java.util.List;
import java.util.Map;

public interface MovieDAO {

	
	 List<MovieVO> getMovieList(String keyword);
	 
	 Map<String, Object> getMovieAPI(Map<String, Object> params);
	
}
