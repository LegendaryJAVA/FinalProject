<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>ajaxTester</title>
</head>
<body>
    <div> <img src="resource/image/testImage.png"></div> 
    <div> <div>url</div> <input class="url" value="test" /> </div>
    <div> <div>contentType</div> <input class="contentType" value="application/json" /> </div>
    <div> <div>type</div> <input class="type" value="POST" /> </div>
    <div> <div>dataType</div> <input class="dataType" value="json" /> </div>
    <div> <div>data</div> <input class="data" value="{ foo : bar }" /> </div>
    <div> <button id="submit">test</button> </div>
    <div class="success"></div>
    <div class="error"></div>
     <div>${ greeting }</div>
     <div>${ servingData }</div>
     <div>${ servingDataHTML }</div>
</body>

<script>
    $(document).on("click", "#submit", function (e) {
        $.ajax({
            url : document.querySelector(".url").value,
            contentType : document.querySelector(".contentType").value,
            dataType : document.querySelector(".dataType").value,
            data : document.querySelector(".data").value,
            type : document.querySelector(".type").value,
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
    })
</script>

<style>
    body, input, button {
        font-family: Consolas;
    }
    body > div {
        display : flex;
        margin : 0 0 8px 0;
    } 
    body > div > div {
        width: 100px;
        margin : 0 5px 0 0;
    }
    body > div > input {

    }
    .error {
        flex-direction: column;
    }
</style>
</html>