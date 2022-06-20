<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<title>${ keyword }에 대한 검색 결과</title>
</head> 
<body>
    <%@ include file="../comp/header.jsp" %>
    <div class="container-section">
        <div class="container">          
            <div class="title">${ keyword }에 대한 검색 결과</div>
            <!--
            <div> ${ result } </div>
            -->

            <div>검색된 영화 중 첫번째 영화(테스트용)</div>
            <div>제목&nbsp;&nbsp;<a href="movie.info?docid=${docId}">${title}</a></div>
            <div>영어제목&nbsp;&nbsp;${titleEng}</div>
            <div>장르&nbsp;&nbsp;${genre}</div>
            <div>상영시간&nbsp;&nbsp;${runtime}</div>

            <div> <a href="movie.info?docid=F01071">테스트 링크</a></div>
        </div>
    </div>
    <%@ include file="../comp/footer.jsp" %>
</body>

<style>
    .title {
        font-weight: 600;
        font-size: 20px;
    }
</style>
</html>