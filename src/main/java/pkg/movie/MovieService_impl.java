package pkg.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MovieService_impl implements MovieService{
	
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
}
