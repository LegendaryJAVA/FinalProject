package pkg.article;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public class ArticleController {

	// 조건에 맞는 게시글 가져오기
    public String getArticles (Map<String, Object> params, Model model, HttpServletRequest request, HttpServletResponse response) {
		
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
