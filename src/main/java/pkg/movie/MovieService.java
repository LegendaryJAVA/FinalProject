package pkg.movie;

import java.util.List;
import java.util.Map;

import pkg.$.OracleResult;

public interface MovieService {
	
	public List<MovieVO> searchMovieList(String keyword);
	public List<MovieVO> getMovieInfo(String docId);
	public List<MovieVO> saveMovieList(List<MovieVO> saveList);
	public Map<String, Object> quickSearch(String keyword);
	public List<OracleResult> reflect (List<Map<String, Object>> params);
}
