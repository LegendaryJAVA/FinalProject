<!-- 영화 정보를 보여주는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>#{ movieName } : 영화정보</title>
</head>
<body>
    <div class="heaeder">

    </div>
    <div class="container">
        <div class="movie-info">
            <div class="title"> ${ movieName }</div>
            <div class="">
                <div class="poster"></div>
                <div class="movie-desc"></div>
            </div>
        </div>
        <div class="cast-info">
            <div class="title">출연진 정보</div>
            <div class="">
                #{ casts } 
            </div>
        </div>
        <div class="article">
                #{ articles }
        </div>
    </div>
    <div class="footer">

    </div>
</body>
</html>

<!--
    요청주소 예시 : /movie.info?mid=108473
    영화 SELECT ... FROM MOVIE WHERE MID = 108473
    출연진 SELECT ... FROM MOVIECAST WHERE MID = 108473
    후기 SELECT ... FROM 
-->