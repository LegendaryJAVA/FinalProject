<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<title>%프로젝트이름% : 로그인</title>
</head>
<body>
	
	<div class="container-section">
		<div class="container login">
			<div class="logo-wrapper">
				<div class="logo"><a href="/">LOGO</a></div>
			</div>
			<div class="title">로그인</div>
			<div class="e i">
				<div class='login'></div>
				<div class='login --iwp'><div class="--fwi"><i class="fa-solid fa-circle-user"></i></div><input type="text" class="mid v" name="mid" maxlength="12" placeholder="아이디"/></div>
			</div>
		
			<div class="e j" style="clear:both;">
				<div class='login'></div>
				<div class='login --iwp'><div class="--fwi"><i class="fa-solid fa-key"></i></div><input type="password" class="mpass v" name="mpass" maxlength="12" placeholder="비밀번호"/></div>
			</div>
	
			<div class="e k" style="clear:both;">
				<div><input class="btn_login" type="button" value="로그인" id="btnLogin"/></div>
			</div>
			<div class="e l">
				<div onclick="gaipFunc()">회원가입</div>
				<div onclick="Yaho()">무조건로그인</div>
				<div onclick="Yaho()">뚜비뚜밥바바랍</div>
			</div>
		</div>
	</div>

    <script>
  		$("input#btnLogin").click(function(){
  			
  			$.ajax({
  				url: "loginchk",
  				data: JSON.stringify({
  						memberid : $("input.mid").val(),
  						memberpass: $("input.mpass").val()
  				}),
  				type : "post", //post or get
				async : true, //true or false
				dataType : "json",
				contentType : "application/json",
  				success : function(result){
  					var str = document.referrer;
  					if(result.result=='SUC'){
  						alert("로그인에 성공하셨습니다.");
  						location.href=str;				
  					}
  					else{
  						alert("로그인에 실패하셨습니다.");
  					}
  				},
  				error: function(error){
  					console.log(error);
  				}
  				
  			})
  			
  		})
  		
    	
    	var gaipFunc = function(){
    		location.href="register";
    	}
  		var Yaho = function(){
  			location.href=document.referrer;
  			
  		}
  	</script>
    
</body>

<style>
	.btn_login {
		border: 0px solid black;
		background: #8947cc;
		border-radius: 5px;
		width: 100%;
		height: 40px;
		font-size: 15px;
		font-weight: 700;
		color: whitesmoke;
		cursor: pointer;
	}
	.container-section {
		background-color: #8947CC;
	}
	.container.login {
		align-items: center;
		background-color: #f4f4f4;
    	width: 400px;
    	padding: 20px;
		box-shadow: 14px 12px 0px 2px rgb(0 0 255 / 20%);
		border-radius: 5px;
	}
	.container.login > div {
		width: 400px;
		display: flex;
	}
	.container.login .title {
		font-size: 33px;
		font-weight: 600;
		margin-bottom: 10px;
		justify-content: center;
	}
	.e {
		display: flex;
		margin-bottom: 5px;
	}
	.k {
		margin-top: 40px;
	}
	.k > div {
		width: 100%;
	}
	.l {
		position: relative;
		justify-content: center;
	}
	.l > div {
		position: relative;
		padding-left: 24px;
		align-items: center;
    	justify-content: center;
    	font-size: 14px;
    	color: #636363;
		cursor: pointer;
	}
	.l > div+div::before {
		content: '';
		position: absolute;
		top: 3.5px;
		left: 12px;
		width: 1px;
		height: 14px;
		border-radius: 0.5px;
		background-color: #636363;
	}
	.v {
		font-weight: 500;
    	letter-spacing: -0.5px;
		font-family: Consolas;
	}
	.logo-wrapper {
		justify-content: center;
    	margin: 50px 0 50px 0;
	}
	.logo-wrapper > .logo {
        display: flex;
        font-size: 28px;
        background-color: #8947CC;
        height: 40px;
        width: 130px;
        color: #53178F; 
        font-weight: 600;
        border-radius: 5px;
        cursor: pointer;
        transition : 0.5s color, 0.5s background-color;
    }
    .logo-wrapper > .logo > a {
        width: 100%;
        justify-content: center;
        align-items: center;
        display: flex;
    }
    .logo-wrapper > .logo:hover {
        background-color: #a56ddd;
    } 

</style>

</html>