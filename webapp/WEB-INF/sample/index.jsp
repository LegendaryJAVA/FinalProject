<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="resource/js/sampleData.js"></script>
<link href="resource/css/sample.css" rel="stylesheet" />
<title>index.jsp</title>
</head>
<body>
    <div class="header">
        <div class="logo"></div>
        <div class="inquery"></div>
        <div class="user-profile"></div>
    </div>
    <div class="container">

    </div>
    <div class="footer">

    </div>
</body>

<script>
    function setCarousel (carouselTitle, movieArray) {
        let carouselHTML = movieArray.map(movie => {
        return `
            <div class="movie">
                <div class="movie-title"> ${ movie.title } </div>    
                <div class="movie-desc"> ${ movie.directors[0].directorNm } </div>
                <div class="movie-star"> ${ movie.star } </div> 
                <div class="movie-summary"> ${ movie.summary } </div> 
            </div>
        `;
    });
    return `
    <div class="carousel">
        <div class="carousel-title"> ${ carouselTitle } </div>
        <div class="carousel-movie"> ${ carouselHTML } </div>
    </div>`;
    }

    $(document).ready(function () {
        document.querySelector(".container").innerHTML += setCarousel("인기 상영작", sampleData.movie);
        document.querySelector(".container").innerHTML += setCarousel("인기 상영작", sampleData.movie);
        document.querySelector(".container").innerHTML += setCarousel("인기 상영작", sampleData.movie);
    });

</script>



</html>