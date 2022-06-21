package pkg.article;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ArticleDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	
}
