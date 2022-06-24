package pkg.movie;

import java.util.List;
import java.util.Map;

public interface MovieDAO {
	
	
	public List<MovieVO> searchMovieList(String keyword);
	public List<MovieVO> getMovieInfo(String docId);
	  
	Map<String, Object> getMovieAPI(Map<String, Object> params);
	Map<String, Object> quickSearch(String keyword);

}
