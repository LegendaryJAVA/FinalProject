package pkg.article;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class articleDAOImpl implements ArticleDAO{
	
	SqlSessionTemplate sqlSession;
	
	@Autowired
	public articleDAOImpl(SqlSessionTemplate sqlSession){
		this.sqlSession = sqlSession;
	}
	@Override
	public List<Object> getArticleList(String articleMovieId) {
		Map<String, Object> map = new HashMap<>();
		map.put("articleMovieId",articleMovieId);
		
		sqlSession.selectList("searchArticleList",map);
		List<ArticleVO> list = (List<ArticleVO>) map.get("result");
		
		Map<String,Object> resultMap = new HashMap<>();
		resultMap.put("articleMovieId",articleMovieId);
		resultMap.put("result", list);
		resultMap.put("ErrMsg", map.get("ErrMsg"));
		resultMap.put("sqlCode", map.get("sqlCode"));
		resultMap.put("sqlErrm", map.get("sqlErrm"));
		
		List<Object> resultList = new ArrayList<>();
		resultList.add(resultMap);
		
		return resultList;
	}
	
	
	
}
