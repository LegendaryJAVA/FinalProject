package pkg.movie;

import java.util.List;
import java.util.Map;

public interface MovieDAO {
	
	
	public List<MovieVO> searchMovieList(String keyword);
	public List<MovieVO> getMovieInfo(String docId);
	public List<Object> saveMovieList(List<MovieVO> saveList);
	
	public List<Object> delMovieList(List<MovieVO> delList);
	
	Map<String, Object> getMovieAPI(Map<String, Object> params);
	

}
