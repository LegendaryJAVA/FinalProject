function setCarousel (carouselTitle, movieArray) {
    let carouselHTML = movieArray.map( (movie, idx) => {
    return `
        <div class="movie">
            <div class="movie-poster">
                <div class="over"> <div class="rank">${ idx+1 }</div> </div> 
                <div class="image-wrapper"> <img src=${ movie.posterUrl }> </div>
            </div>
            <div class="movie-title"> ${ movie.title } </div>    
            <div class="movie-desc">  ${ movie.star } · ${ movie.directors[0].directorNm } </div>
            <div class="movie-summary"> ${ movie.summary } </div> 
        </div>
    `;
}).join(""); 
return `
<div class="carousel">
    <div class="carousel-title"> ${ carouselTitle } </div>
    <div class="carousel-movie"> ${ carouselHTML } </div>
</div>`;
}

$(document).ready(function () {
    document.querySelector(".container").innerHTML += setCarousel("인기 상영작", sampleData.result);
    document.querySelector(".container").innerHTML += setCarousel("인기 상영작", sampleData.result);
    document.querySelector(".container").innerHTML += setCarousel("인기 상영작", sampleData.result);
});
