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
            
            <%
                String loginToken = (String)request.getSession().getAttribute("isLogined");
                boolean a = loginToken == null ? false : true;
                if (a == true) {
                    %><div class="user-profile"><div>😯</div></div> <%
                } else {
                    %><div class="login">로그인</div><%
                }
            %>
            
        </div>
    </div>
</div>

<script>
    $(document).on("click", ".login", function () {
        location.href = "login";
    })
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
    .login {
        width: 100px;
        height: 40px;
        justify-content: center;
        align-items: center;
        border-radius: 5px;
        font-weight: 500;
        background-color: #8947CC;
        color : whitesmoke;
        transition : 0.5s color, 0.5s background-color;
        cursor: pointer;
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