package pkg.article;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleService_impl implements ArticleService{

	@Autowired
	private ArticleDAO articleDAO;
    
    @Override
    public List<ArticleVO> getArticleList(String articleMovieid){
    	return articleDAO.getArticleList(articleMovieid);
    }
}
