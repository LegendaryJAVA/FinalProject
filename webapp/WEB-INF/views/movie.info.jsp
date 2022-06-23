<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, pkg.article.ArticleVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<title>${movieName}의 영화정보</title>

<script>

	var article = {articleId : $("input[name='articleID']").val()}
	$(document).ready(
		function(){
			$("#btnAdd").click(
				function(){
					$.ajax({
						url : "articleList",
						dataType: "Json",
						contentType : "application/json; charset=utf-8",
						data : JSON.stringify(article),
						success : function(){
							alert("success");
						},
						error : function(){
							alert("error");
						}
					});
				}	
			);
		}	
	);
</script>
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
           	<div>
           		<table>
           			<tr>
						<td width="50px" height="30px" align="center">
							글번호
						</td>
						<td width="100px" height="30px" align="center">
							사용자아이디
						</td>
						<td width="400px" height="30px" align="center">
							후기
						</td>
						<td width="75px" height="30px" align="center">
							날짜
						</td>
						<td width="75px" height="30px" align="center">
							별점
						</td>
						<td width="100px" height="30px" align="center">
							영화아이디
						</td>
					</tr>
					<input type="button" value="show" id="show"/>
           		</table>
                
           	</div>
            
            
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