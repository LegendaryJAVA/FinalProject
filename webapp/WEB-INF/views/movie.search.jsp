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
            <div class="title"><span class="hightlight">${ keyword }</span>에 대한 검색 결과</div>

            <div> ${ searchResult } </div>

        </div>
    </div>
<%@ include file="../comp/footer.jsp" %>
</body>

<script>
    $(document).on("click", ".dagger", function () {
        let docid = this.dataset.docid;
        location.href=`movie.info?docid=\${docid}`;
    });

</script>

<style>
    .container > .title {
        font-weight: 600;
        font-size: 20px;
        margin-bottom: 30px;
    }
    .dagger {
        display: flex;
        margin-bottom: 25px;
    }
    .poster {
        display: flex;
    }
    .poster > img {
        width: 180px;
        border-radius: 5px;
    }
    .desc {
        display: flex;
        flex-direction: column;
    }
</style>
</html>