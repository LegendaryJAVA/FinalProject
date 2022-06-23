<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="header-section">
    <div class="header"> 
        <div class="logo-wrapper">
            <div class="logo">LOGO</div>
        </div>
        <div class="search-wrapper">
            <div class="search-box">
                <input class="search-input" placeholder="영화 또는 출연진 이름으로 검색하기" />
                <div class="search-button-wrapper"><button class="search-button">검색</button></div>
            </div>
        </div>
        
        <div class="user-profile-wrapper">
          <%if(session.getAttribute("mid")==null) {%> 
        	<div> <a href="login">login</a></div>
        	<%} else{%>	
        	<div> <a href="logout">logout</a></div>
<<<<<<< HEAD
	        <div class="user-profile"><div><a href="myform">😯</a></div></div>
    		
        <%} %>
        	
=======
<<<<<<< HEAD
			<div> <a href="myform">내정보</a></div>
=======
			<div> <a href="myinform">내정보</a></div>
>>>>>>> 55659e3988baea79019f14122be85d6a1f8e99e7
        <%} %>
        	
            <div class="user-profile"><div>😯</div></div>
>>>>>>> b37b148715169ba61a068e2ac45e086c6f331e19
        </div>
    </div>
</div>

<script>

</script> 

<style>
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
        padding-left: 10px;
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
        background-color: #d9d9d9;
        width: 50px;
        height: 50px;
        justify-content: center;
        align-items: center;
        cursor: pointer;
    }
    .user-profile > div {
        font-size: 33px;
        margin-bottom: 5px;
    }
</style>