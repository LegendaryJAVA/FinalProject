<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, pkg.article.ArticleVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<title>${movieName}의 영화정보</title>


</head> 
<body>
    <%@ include file="../comp/header.jsp" %>
    <div class="container-section">
        <div class="container movie-info">          
            <div class="title">${ movieTitle }</div>
            <div class="desc-wrapper">
                <div class="posters"> <img src=""/> </div>
                <div class="desc">
                    <div>${ movieGenre }</div>
                    <div>${ moviePlot }</div>
                </div>
            </div>
        </div>
        <div class="container articles">
 
            <div class="title">사용자 후기</div>
            <!-- ajax로 구현할 부분 -->
           	<% 
           		List<ArticleVO> articleList = (List<ArticleVO>)request.getAttribute("articleList");
           	%>
            
        </div>


    </div>
    <%@ include file="../comp/footer.jsp" %>
</body>

<style>
    .movie-info.container > .title {
        font-weight: 600;
        font-size: 20px;
    }
    .movie-info > .desc-wrapper {
        display: flex;
    }
    .desc-wrapper > div {
        margin : 10px 15px 0 0;
    }
    .desc-wrapper > .posters {
        background: #d9d9d9;
        height: 450px;
        border-radius: 5px;
        width: 300px;
    }
    .articles.container {
        margin-top : 50px;
    }
    .articles.container > .title {
        font-weight: 600;
        font-size: 20px;
    }

</style>
</html>