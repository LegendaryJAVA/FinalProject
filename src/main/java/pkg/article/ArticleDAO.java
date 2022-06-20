package pkg.article;

import java.util.List;

public interface ArticleDAO{
	
	public List<ArticleVO> getArticleList(String artId);
	
	public void updateArticle(String artId, ArticleVO vo);
	
	public void insertArticle(ArticleVO vo);
	
	public void deleteArticle(String artId);
}