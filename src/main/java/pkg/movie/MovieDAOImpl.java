package pkg.movie;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MovieDAOImpl implements MovieDAO{
    
	
	@Autowired
	SqlSessionTemplate sqlSession;

	

	
	
	public List<MovieVO> getMovieList(String keyword) {
		
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			
			//reply.selectMovieList
			map.put("keyword", keyword);
			
			sqlSession.selectList("movie.selectMovieList", map);
			
			List<MovieVO> movieList =  (List<MovieVO>)map.get("result");
			
			
			
			
			
			
			return movieList;
			
		}
		
		
	}
	


