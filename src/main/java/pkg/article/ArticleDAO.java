package pkg.article;

import java.util.List;

public interface ArticleDAO{
	
	public List<ArticleVO> getArticleList(String articleMovieid);
	
	public void updateArticle(String articleId, ArticleVO vo);
	
	public void insertArticle(ArticleVO vo);
	
	public void deleteArticle(String articleId);
}