let _ajax = function () {
}

//header.section
$(document).on("click", ".header .logo", function () {
    location.href = `/`;  // <<<
}); 

//header.section
$(document).on("click", ".header .search-button", function () {
    
    let keyword = document.querySelector(".search-input").value;
    console.log(keyword); 
    if (!keyword || keyword.length < 2) alert("키워드는 2글자 이상 입력하셔야합니다");
    else location.href = `movie.search?keyword=${keyword}`; 
}); 