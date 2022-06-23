<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<title>ajaxTester</title>
</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div class="--tl1">데이터 크롤링 도구</div>
		    <div> <img src="resource/image/testImage.png"></div> 
		    <div class="wrapper">
		        <div class="option"> <div>releaseDte</div> <div class="--iwp"><input class="releaseDte" value="20220601" /></div> </div>
		        <div class="option"> <div>releaseDts</div> <div class="--iwp"><input class="releaseDts" value="20220501" /></div> </div>
		        <div class="option"> <div>listcount</div> <div class="--iwp"><input class="listcount" value="2" /></div> </div>
		        <div class="option ralign"> <div class="create-api-url --btn1">요청 API 주소 생성</div></div>
		        <div class=""> <div class="--iwp" style="width : 100%"><input class="api-plain" type="text" /></div></div>
		        <div class="ralign"> <div class="request-api --btn1">KMDb API 요청</div> </div>
		        <div class=""> <div class="--tl1">검색결과</div> </div>
		        <div class=""> <div class="response-info"></div> </div>
		        <div class=""> <div class="response-parse"></div></div>
		        <div class=""> <div class="--tl1">검색결과(RAW)</div> </div>
		        <div class=""> <textarea class="response-source"></textarea></div>
                <div class=""> <div class="update-database --btn1">데이터베이스 갱신</div> </div>
		    </div>							
		</div>
	</div>
    
</body>

<style>
	input {
		background: none;
	    border: 0px solid;
	    padding-left: 10px;
	    flex-grow: 1;
	    font-size: 14px;	
	}
    body, input, button {
        font-family: Consolas;
    }
    .--iwp {
    	width: 150px;
    }
    .--iwp > input {
    	width : 100%;
    }
    .ralign {
    	display: flex;
    	justify-content: flex-end;
    }
    .wrapper {
    	display: flex;
    	width : 800px;
    	flex-direction: column;
    }
    .wrapper > div {
    	display: flex;
    	margin: 5px 0 0 0;
    }
    .wrapper > .option > div:nth-child(1) {
    	width : 150px;
    }
    .api-plain {
        width : 800px;
    }
    .response {
        width: 800px;
        height: 700px;
    }
    .movie-row {
        display : flex;
        flex-direction : column;
    }
    .stand {
        display: flex;
        border: 1px solid #80808033;
    }
    .stand > div {
        min-width: 100px;
        padding: 10px;
    }
    .stand > div:nth-child(1) {
    	width : 50px;
    }
    .stand > div:nth-child(2) {
    	flex-grow : 1;
    }
    .stand > div:nth-child(3) {
    	width : 200px;
    }
    .details {
        display : flex;
        flex-direction: column;
        border: 1px solid #80808033;
        background: #efefef;
        font-size: 13px;
    }
    .details > div {
        display: flex;
    	padding: 1px 5px 1px 45px;
    }
    .key {
        width: 150px;
    }
    .value {
    	width : 500px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .option {
    	margin-bottom: 5px;
    }
    .option > div {
    	display: flex;
    	align-content: center;
    }
    .response-parse {
    width: 100%;
    display: flex;
    flex-direction: column;
    }
    .response-source {
    	width : 100%;
    	height: 250px;
    }
	.--btn1 {
		display : flex;
	    padding : 0 15px 0 15px;
	    height: 40px;
	    justify-content: center;
	    align-items: center;
	    border-radius: 5px;
	    font-weight: 500;
	    background-color: #8947CC;
	    color: whitesmoke;
	    transition: 0.5s color, 0.5s background-color;
	    cursor: pointer;
	}
</style>

<script>

    let parsedData = "";

    $(document).on("click", ".stand", function () {
        $(`.details[data-docid='\${this.dataset.docid}']`).toggle();
    });
    $(document).on("click", ".create-api-url", function () {
        let releaseDte = document.querySelector(".releaseDte").value;
        let releaseDts = document.querySelector(".releaseDts").value;
        let listcount = document.querySelector(".listcount").value;
        let requestUrl = `http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&detail=Y&ServiceKey=PNYIG396ZLS92MWQ4730&listCount=\${listcount}&releaseDts=\${releaseDts}&releaseDte=\${releaseDte}`;
        document.querySelector(".api-plain").value = requestUrl;
    })
    $(document).on("click", ".request-api", function () {
        var xhr = new XMLHttpRequest();
        var url = document.querySelector(".api-plain").value;
        xhr.open('GET', url);
        xhr.onreadystatechange = function () {
        if (this.readyState == 4) {
           
            parsedData = JSON.parse(this.responseText);
            //console.log(this.responseText);
            //console.log(parsedData);
            //console.log(parsedData.Data[0].Result);
            let totalCount = parsedData.Data[0].TotalCount;
            let count = parsedData.Data[0].Count;

            let parsedHTML = parsedData.Data[0].Result.map(obj => {
                let details = Object.keys(obj).map(key => {
                    return `<div class=\${key}> <div class="key">\${key}</div> <div class="value">\${obj[key].toString()}</div> </div>`;
                }).join("");
                return `
                <div class="movie-row">
                    <div class="stand" data-DOCID='\${obj.DOCID}'> <div>\${obj.DOCID}</div> <div>\${obj.title}</div> <div>\${obj.company}</div> </div>
                    <div class="details" data-DOCID='\${obj.DOCID}' style="display : none">\${details}</div>
                </div>`;

            }).join("");

            document.querySelector(".response-info").innerHTML = `\${count} / \${totalCount} `;
            document.querySelector(".response-parse").innerHTML = parsedHTML;
            document.querySelector(".response-source").value = JSON.stringify(parsedData.Data[0].Result);
            }
        };
        xhr.send('');
    })
    $(document).on("click", ".update-database", function () {
        console.log(parsedData);
        $.ajax({ 
            url : "admin.movie.reflect",
            data : JSON.stringify({ Result : parsedData.Data[0].Result }),
            contentType : "application/json",
            type : "POST",
            dataType : "json",
            success : function (res) {
                console.log(res);
            },
            error : function (err) {
                console.log(err);
            }
        })
    })
</script>

</html>