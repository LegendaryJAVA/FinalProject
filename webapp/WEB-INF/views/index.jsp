<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<title>index.jsp</title>
</head> 
<body>

    <%@ include file="../comp/header.jsp" %>

    <div class="container-section">

        <div class="container stash">
            <div><a href="moviegrid">영화관리테스트</a></div>
            <div><a href="test2">asasas</a></div>
            <a href="admin.kmdb">관리자 페이지</a>
        </div>
        <div class="container">

            <div class="cw">
                <div class="cw--title">캐러셀 샘플</div>
                ${carousel_1}
            </div>

            <div class="cw">
                <div class="cw--title">캐러셀 샘플</div>
                ${carousel_2}
            </div>

            <div class="cw">
                <div class="cw--title">캐러셀 샘플</div>
                ${carousel_3}
            </div>
            
        </div>
    </div>
    <%@ include file="../comp/footer.jsp" %>
</body>


<style>
    .cw {
        display: flex;
        flex-direction: column;
        margin-bottom: 40px;
    }
    .cw--title {
        font-weight: 600;
        font-size: 20px;
        margin-bottom: 3px;
    }
    .cw--carousel {
        display: flex;
    }
    .poster {
        height: 250px;
        width: 175px;
        background-color: #d9d9d9;
        border-radius: 5px;
        overflow: hidden;
    }
    .poster > img {
        border-radius: 5px;
        height: 100%;
        width: 104%;
    }
    .dagger {
        margin-right: 5px;
        width : 175px;
    }
    .desc .title, .i, .j, .k {
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        word-break: break-all;
    }
    .j {
        font-size: 13px;
    }
    .desc .title {
        font-weight: 600;
    }
    .stash {
        float: right;
        right: 1px;
        bottom: 10%;
        position: absolute;
        width: 300px;
        background: #8947cc;
        color: whitesmoke;
    }

</style>
</html>