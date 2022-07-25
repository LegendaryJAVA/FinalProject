package pkg.article;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ArticleController {

	ArticleService articleService;
	@Autowired
	public ArticleController(ArticleService articleService){
		this.articleService = articleService;
	}
	// 조건에 맞는 게시글 가져오기
	@RequestMapping("articleSearch")
    public String getArticles (Map<String, Object> params, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		
		//List<ArticleVO> list = articleService.
		
		return "";
	}

	// 게시글 수정 (여러개를 동시에 처리 가능)
	public String updateArticles (Map<String, Object> params, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "";
	}

	// 게시글 삭제 (여러개를 동시에 처리 가능)
	public String deleteArticles (Map<String, Object> params, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "";
	}
    
}
