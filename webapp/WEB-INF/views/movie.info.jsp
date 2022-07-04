<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <div class="posters"> <img src="${ posters }"/> </div>
                <div class="desc">
                    <div>${ movieGenre }</div>
                    <div>${ moviePlot }</div>
                </div>
            </div>
        </div>
        <div class="container articles">
            <div class="title">사용자 후기</div>
            <div class="article-list">
                ${articleList}
                <!-- 샘플 데이터 -->
                <div class="article" data-articleid="AR0001">
                    <div class="outer">
                        <div class="article_stars">ㅁㅁㅁㅁㅁ</div>
                        <div class="article_title">대충 사용자 후기 내용 부분 대충 사용자 후기 내용 부분 대충 사용자 후기 내용 부분 대충 사용자 후기 내용 부분 대충 사용자 후기 내용 부분</div>
                        <div class="article_author_emoji">😎</div>
                        <div class="article_author">작성자</div>
                    </div>
                    <div class="inner" style="display: none;">
                        <div class="inner_header">
                            <div class="close"><i class="fa-solid fa-chevron-left"></i></div>
                            <div class="article_stars">ㅁㅁㅁㅁㅁ</div>
                            <div class="article_regDate">2022-06-03</div>
                        </div>
                        <div class="v">
                            아무튼 이것저것 inner 내용
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <%@ include file="../comp/footer.jsp" %>
</body>

<script>
    $(document).on("click", ".article > .outer",  function (event) {
        console.log(event);
        console.log(event.currentTarget);
        $(event.currentTarget).hide();
        $(event.currentTarget).next(".inner").show();
    });
    $(document).on( "click", ".article > .inner .close", function (event) {
        console.log(event);
        $(event.currentTarget).parents(".inner").hide();
        $(event.currentTarget).parents(".inner").prev(".outer").show();
    });
    $(document).on( "click", ".pagenation > li", function (event) {
        $.ajax({
            url : "",
            data : "",
            contentType : "",
            dataType : "",
            success : function (res) {
                console.log(res);
                
                if(true) {
                    //set article-list
                    document.querySelector("article-list").innerHTML = res;
                    //set pagenation
                } else {

                }
            },
            error : function (err) {
                console.error(err);
            }
        })
    });
</script>

<style>
    .outer {
        background-color: red;
        display: flex;
        background-color: #e1e1e1;
        border: 1px solid grey;
    }
    .article_stars {
        padding-right: 15px;
    }
    .article_title {
        white-space: nowrap;
        overflow: hidden;
        width: 550px;
        text-overflow: ellipsis;
    }
    .inner {
        background-color: #e2e2e2;
        display: flex;
        flex-direction: column;
        position: relative;
        padding: 10px;
    }
    .inner .inner_header {
        display: flex;
        position: relative;
        border-bottom: 1px solid grey;
    }
    .inner .article_stars {
        font-size: 30px;
        width: auto;
    }
    .inner .article_regDate {
        display: flex;
        align-items: center;
    }
    .inner .article_regDate::before {
        content : "|";
    }
    .inner .close {
        cursor: pointer;
        font-size: 25px;
        padding-left: 15px;
        padding-right: 15px;
        display: flex;
        align-items: center;
    }
    .v {
        padding: 10px 0 0 50px;
    }
    .pagenation > li {
        cursor: pointer;
    }
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
    .desc-wrapper > .posters > img {
        width: 100%;
        border-radius: 5px;
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