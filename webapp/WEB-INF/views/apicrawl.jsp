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
    <div>데이터 크롤링 도구</div>
    <div> <img src="resource/image/testImage.png"></div> 
    <div class="wrapper">
        <div> <div>releaseDte</div> <input class="releaseDte" value="20220601" /> </div>
        <div> <div>releaseDts</div> <input class="releaseDts" value="20220501" /> </div>
        <div> <div>listcount</div> <input class="listcount" value="500" /> </div>
        <div> <button class="create-api-url">create ajax url</button></div>
        <div> <input class="api-plain" type="text" /></div>
        <div> <button class="request-api">request date</button> </div>
        <div> <div class="response-info"></div> </div>
        <div> <div class="response-parsed"></div></div>
        <div> <textarea class="response-source"></textarea></div>
    </div>
</body>

<style>
    body, input, button {
        font-family: Consolas;
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
    }
    .stand > div {
        min-width: 100px;
        padding: 10px;
    }
    .details {
        display: flex;
        flex-direction: column;
    }
    .details > div {
        display: flex;
    }
    .key {
        width: 150px;
    }
    .value {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }

</style>

<script>

    let parsedData = "";

    $(document).on("click", ".stand", function () {
        console.log(this.dataset.docid);
        $(`.details[data-set='\${this.dataset.docid}']`).toggle();
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
            console.log(parsedData.Data[0].Result);
            let totalCount = parsedData.Data[0].TotalCount;
            let count = parsedData.Data[0].Count;

            let parsedHTML = parsedData.Data[0].Result.map(obj => {
                let details = Object.keys(obj).map(key => {
                    return `<div class=\${key}> <div class="key">\${key}</div> <div class="value">\${obj[key]}</div> </div>`;
                }).join("");
                return `
                <div class="movie-row">
                    <div class="stand" data-DOCID='\${obj.DOCID}'> <div>\${obj.DOCID}</div> <div>\${obj.title}</div> <div>\${obj.company}</div> </div>
                    <div class="details" data-DOCID='\${obj.DOCID}'>\${details}</div>
                </div>`;

            }).join("");

            document.querySelector(".response-info").innerHTML = `\${count} / \${totalCount} `;
            document.querySelector(".response-parsed").innerHTML = parsedHTML;
            document.querySelector(".response-source").value = JSON.stringify(parsedData.Data[0].Result);
            }
        };
        xhr.send('');
    })
    $(document).on("click", ".update-database", function () {
        $.ajax({ 
            url : "!update-database",
            data : JSON.stringify({ Result : parsedData.data[0].Result }),
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