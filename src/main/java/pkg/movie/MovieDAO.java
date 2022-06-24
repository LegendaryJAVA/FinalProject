package pkg.movie;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Repository
public class MovieDAO {
    SqlSessionTemplate sqlSession;
	@Autowired
	public MovieDAO(SqlSessionTemplate sqlSession){
		this.sqlSession = sqlSession;
	}
	
	public List<MovieVO> searchMovieList(String keyword){
		Map<String, Object> map = new HashMap<>();
		map.put("keyword",keyword);
		
		sqlSession.selectList("searchMovieList",map);
		List<MovieVO> list = (List<MovieVO>) map.get("result");
		
		return list;
	}
	
	public List<MovieVO> getMovieInfo(String docId){
		Map<String, Object> map = new HashMap<>();
		map.put("docId",docId);
		
		sqlSession.selectList("getMovieInfo",map);
		List<MovieVO> list = (List<MovieVO>) map.get("result");
		
		return list;
	}
	
}
