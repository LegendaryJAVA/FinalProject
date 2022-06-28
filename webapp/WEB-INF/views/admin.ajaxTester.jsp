<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<title>관리자 페이지</title>
</head> 
<body>
    <%@ include file="../comp/admin.header.jsp" %>
    
    <div class="container-section">
        <div class="container">
            <div class="title">AJAX 테스트 도구</div>
                <div> <img src="resource/image/testImage.png"></div> 
                <div class="wrapper">
                    <div class="ajax-tester"> 
                        <div> <div>url</div> <input class="url" value="test" /> </div>
                        <div> <div>contentType</div> <input class="contentType" value="application/json" /> </div>
                        <div> <div>type</div> <input class="type" value="POST" /> </div>
                        <div> <div>dataType</div> <input class="dataType" value="json" /> </div>
                        <div> <div>data</div> <input class="data" value="{ foo : bar }" /> </div>
                        <div> <button id="submit">test</button> </div>
                    </div> 
                    <div class="ajax-convert">
                        <textarea class="ajax-convert"> </textarea>
                    </div>
                </div>
                <div class="result">
                    <div>response</div>
                    <div class="success"></div>
                    <div class="error"></div>
            </div>
        </div>
    </div>

    <%@ include file="../comp/footer.jsp" %>
</body>

<script>
    $(document).on("click", "#submit", function (e) {
        let url, contentType, dataType, data, type;
        $.ajax({
            url : url = document.querySelector(".url").value,
            contentType : contentType = document.querySelector(".contentType").value,
            dataType : dataType = document.querySelector(".dataType").value,
            data : data = document.querySelector(".data").value,
            type : type = document.querySelector(".type").value,
            success : function (res) {
                console.log(res);
                document.querySelector(".success").innerHTML = JSON.stringify(res);
                document.querySelector(".error").innerHTML = "";
            },
            error : function (err) {
                console.log(err);
                document.querySelector(".success").innerHTML = "";
                document.querySelector(".error").innerHTML = JSON.stringify(err);
            }
        })
        requestString = `{\n url : "\${url}",\n contentType : "\${contentType}",\n dataType : "\${dataType}",\n data : JSON.stringify(\${data}),\n type : "\${type}",\n success : %callback%,\n error : %failCallback%\n}`;
    document.querySelector("textarea.ajax-convert").value = requestString;
    })

</script>

<style>
    body, input, button {
        font-family: Consolas;
    }
    .wrapper {
        display: flex;
    }
    .wrapper > div {
        margin-right: 10px;
    }
    .ajax-tester {
        display: flex;
        flex-direction: column ;
    }
    .ajax-tester > div {
        display: flex;
        margin: 0 0 8px 0;
    }
    .ajax-tester > div > div {
        width: 100px;
    }
    textarea.ajax-convert {
        width: 400px;
        height: 100%;
    }
    .error {
        flex-direction: column;
    }
</style>


</html>