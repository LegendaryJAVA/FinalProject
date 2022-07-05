package pkg.movie;

import java.util.List;
import java.util.Map;

import pkg.$.OracleResult;

public interface MovieDAO {
	
	List<MovieVO> searchMovieList(String keyword);
	List<MovieVO> getMovieInfo(String docId);
	List<MovieVO> saveMovieList(List<MovieVO> saveList);
	Map<String, Object> getMovieAPI(Map<String, Object> params);
	Map<String, Object> quickSearch(String keyword);
	List<OracleResult> insert (List<Map<String, Object>> params);

}
