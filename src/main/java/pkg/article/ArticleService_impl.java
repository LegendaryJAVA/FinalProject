package pkg.article;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleService_impl implements ArticleService{
    ArticleDAO articleDAO;
	
	@Autowired
	public ArticleService_impl(ArticleDAO articleDAO){
		this.articleDAO = articleDAO;
	}
	
	public List<Object> getArticleList(String articleMovieId){return articleDAO.getArticleList(articleMovieId);}
	
}
