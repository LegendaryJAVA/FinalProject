package pkg.movie;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService_impl implements MovieService {
	
	MovieDAO movieDAO;
	@Autowired
	public MovieService_impl(MovieDAO movieDAO){
		this.movieDAO = movieDAO;
	}
	@Override
	public List<MovieVO> searchMovieList(String keyword) {
		return movieDAO.searchMovieList(keyword);
	}
	
	@Override
	public List<MovieVO> getMovieInfo(String docId) {
		//별점, 출연 배우들 등 추가하기
		return movieDAO.getMovieInfo(docId);
	}
	@Override
	public List<MovieVO> saveMovieList(List<MovieVO> saveList) {
		
		return null;
	}
	@Override
	public Map<String, Object> quickSearch(String keyword) {
		//별점, 출연 배우들 등 추가하기
		return movieDAO.quickSearch(keyword);
	}
    
}
