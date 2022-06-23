<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>index.jsp</title>
</head>
<body>
   로그인에 사용될 화면
   
   		<div>
			<div class='login'>로그인 : </div>
			<div class='login'><input type="text" class="mid" name="mid"/></div>
		</div>
	
		<div style="clear:both;">
			<div class='login'>패스워드 :</div>
			<div class='login'><input type="text" class="mpass" name="mpass"/></div>
		</div>

    <div style="clear:both;">
        <div><input type="button" value="로그인" id="btnLogin"/></div>
        <div><input type="button" value="회원가입" onclick="gaipFunc()"/></div>  
    </div>
    
    <script>
    
  		$("input#btnLogin").click(function(){
  			$.ajax({
  				url: "test",
  				data: JSON.stringify({
  						mid : $("input.mid").val(),
  						mpass: $("input.mpass").val()
  				}),
  				type : "post", //post or get
				async : true, //true or false
				dataType : "json",
				contentType : "application/json",
  				
  				
  			})
  			
  		})
  		
    	
    	var gaipFunc = function(){
    		location.href="signup.jsp";
    	}
    
   
   </script>
   
</body>

</html>