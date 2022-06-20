package pkg.article;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ArticleDAOImpl implements ArticleDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ArticleVO> getArticleList(String articleId){
		
		Map<String, Object> map = new HashMap<String, Object>(); 
		map.put("articleId", articleId);
		
		sqlSession.selectList("selectArticleList", map);
		List<ArticleVO> articleList = (List<ArticleVO>)map.get("result");
				
		return articleList;
	}

	@Override
	public void updateArticle(String artId, ArticleVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertArticle(ArticleVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteArticle(String artId) {
		// TODO Auto-generated method stub
		
	}

}
