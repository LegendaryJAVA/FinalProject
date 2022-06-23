package pkg.article;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	// 조건에 맞는 게시글 가져오기
	@RequestMapping("articleList")
	@ResponseBody
    public String getArticles (Map<String, Object> params, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		
		return "/views/movie.info";
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
