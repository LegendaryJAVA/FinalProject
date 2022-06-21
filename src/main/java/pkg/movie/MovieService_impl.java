package pkg.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService_impl implements MovieService {

	
	
	@Autowired
	private MovieDAO movieDAO;
	
	

	public List<MovieVO> getMovieList(String keyword) {
		
		return movieDAO.getMovieList(keyword);
				
	}
    
}
