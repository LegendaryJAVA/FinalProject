<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="header-section">
    <div class="header"> 
        <div class="logo-wrapper">
            <div class="logo">LOGO</div>
        </div>
        <div class="search-wrapper">
            <div class="search-box">
                <div class="-fw-search"> <i class="fa-solid fa-magnifying-glass"></i>  </div>
                <input class="search-input" placeholder="영화 또는 출연진 이름으로 검색하기" />
                <div class="search-button-wrapper"><button class="search-button">검색</button></div>
            </div>
            <div class="auto-completaion"></div>
        </div>
        
        <div class="user-profile-wrapper">
          <%if(session.getAttribute("memberid")==null) {%> 
        	<div> <a href="login">login</a></div>
        	<%} else{%>	
        	<div> <a href="logout"> <%out.println(session.getAttribute("memberid")); %> </a></div>
	        <div class="user-profile">
	        	<div>😯</div>
	        	<div class="menu-wrapper">
	        		<div class="menu my-profile"><a href="myform?memberid=<%=session.getAttribute("memberid")%>">내 정보</a></div>
	        		<div class="menu logout"><a href="logout">로그아웃</a></div>
	        	</div>
	        </div>
        <%} %>
        	
        </div>
    </div>
</div>

<script>
    let timeoutObjectId = undefined;
    let acArray = 0;
    let acIndex = 0;
    let acLength = 0;
    document.querySelector(".search-input").addEventListener("keyup",function (key) {
        if (!document.querySelector(".search-input").value.trim()) {
                document.querySelector(".auto-completaion").innerHTML = "";
                return;
        }
        console.log(key);
        console.log(document.querySelector(".search-input").value.trim());
    });
    document.querySelector(".search-input").addEventListener("keydown",function (key) {
        //console.log(key);


        let qs = function () {
            //console.log("commit "+timeoutObjectId);
            
            $.ajax({
                url : `qs?keyword=\${document.querySelector(".search-input").value}`,
                type : `post`,
                dataType : `json`,
                contentType : `application/json`,
                success : function (res) {
                    console.log(res);
                    let HTML = res.result.map( e => `<div class="ar"> \${e.DOCID} \${e.title} </div>`).join("");
                    document.querySelector(".auto-completaion").innerHTML = HTML;
                    acArray = [ document.querySelector(".search-input"), ...document.querySelectorAll(".ar") ];
                    acIndex = 0;
                    acLength = acArray.length;
                    console.log(acArray, acIndex);
                },
                error : function (err) {

                }
            });
            clearTimeout(timeoutObjectId);
        }

        if(key.keyCode == 13) {
            document.querySelector(".search-button").click();
        }
        else if(key.keyCode == 40) { // bottom
            if(acIndex == acLength-1) acIndex = 0;
            acArray.map( e => e.classList.remove("selected"));
            acArray[++acIndex].classList.add("selected");
            console.log('bottom');
        }
        else if(key.keyCode == 38) { // top
            if(acIndex == 0) acIndex = acLength-1;
            acArray.map( e => e.classList.remove("selected"));
            acArray[--acIndex].classList.add("selected");
            console.log('top');
        }
        else if(key.isComposing == true) {
            clearTimeout(timeoutObjectId);
            timeoutObjectId = setTimeout(qs, 500);
        }
    });


</script> 

<style>
    .selected {
        background-color: #53178F;
    }
    .auto-completaion {
        display: flex;
        flex-direction: column;
        position: absolute;
        float: right;
        width: 550px;
        background: #d9d9d9;
        font-size: 13px;
        top: 70px;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .auto-completaion > div {
        padding : 10px 10px 10px 50px;
    }
    .-fw-search {
        justify-content: center;
        align-items: center;
        padding-left: 20px;
        position: absolute;
        height: 100%;
    }
	.header .user-profile .menu-wrapper {
		position: absolute;
    	display: none;
    	flex-direction: column;
    	width: 150px;
    	top: 40px;
    	right : 0%;
    	font-size: 14px;
    	justify-content: center;
    	align-items: center;
    	background: #8947cc;
    	border-radius: 5px;
    	padding : 5px;
    	color: white;
	}
	.menu {
		border-top : 1px solid white;
		padding: 5px 0 5px 0;
		width: 100%;
	}
	.menu:nth-child(1) {
		border-top : 0px solid;
	}
    .menu a:link, .menu a:visited { 
        color : whitesmoke;
        text-decoration: none;
    } 
    
    .header-section {
        width: 100%;
        border-bottom: 1px solid #BEBEBE;
    }
    .header {
        margin: 0 auto; 
        display: flex;
        width: 1080px;
        height: 100px;
    }
    .header div { 
        display: flex;
    }
    .header > .logo-wrapper {
        justify-content: center;
        align-items: center;

    }
    .header > .logo-wrapper > .logo {
        display: flex;
        font-size: 28px;
        background-color: #8947CC;
        height: 40px;
        width: 130px;
        justify-content: center;
        align-items: center;
        color: #53178F; 
        font-weight: 600;
        border-radius: 5px;
        cursor: pointer;
        transition : 0.5s color, 0.5s background-color;
    }
    .header > .logo-wrapper > .logo:hover {
        background-color: #a56ddd;
    } 
    .header > .search-wrapper {
        flex-grow: 3;
        justify-content: center;
        align-items: center;
        position: relative;
    }
    .search-box {
        position: relative;
        height: 40px;
        background: #D9D9D9;
        width: 550px;
        border-radius: 5px;
    }
    .search-box .search-input {
        background: none;
        border: 0px solid;
        padding-left: 50px;
        flex-grow: 1;
        font-size: 14px;
    }
    .search-box .search-input::placeholder {
        color: #7B7B7B;
        font-size: 14px;
    }
    .search-box .search-button-wrapper {
        float: right;
        position: absolute;
        right: 1px; 
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .search-box .search-button {
        border: 0px solid;
        background: none;
        font-weight: 600;
        cursor: pointer;
        height: 28px;
        border-radius: 5px;
        width: 40px;
        height: 28px;
        margin-right: 5px;
        padding-right: 9px; /* tt */
        transition : 0.5s color, 0.5s background-color;
        font-size : 14px;
    }
    .search-box .search-button:hover {
        background-color: #8947CC;
        color : whitesmoke;
        transition : 0.5s color, 0.5s background-color;
    }      
    .header > .user-profile-wrapper {
        justify-content: center;
        align-items: center;
    }
    .user-profile {
        border-radius: 50px;
        position : relative;
        background-color: #d9d9d9;
        width: 50px;
        height: 50px;
        justify-content: center;
        align-items: center;
        cursor: pointer;
    }
    .user-profile:hover > .menu-wrapper, .menu-wrapper:hover {
    	display : flex !important;
    }
    .user-profile > div {
        font-size: 33px;
        margin-bottom: 5px;
    }
</style>