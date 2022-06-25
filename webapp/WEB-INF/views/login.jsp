<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>index.jsp</title>
</head>
<body>
	
   	<div>
			<div class='login'>로그인 : </div>
			<div class='login'><input type="text" class="mid" name="mid" maxlength="12"/></div>
		</div>
	
		<div style="clear:both;">
			<div class='login'>패스워드 :</div>
			<div class='login'><input type="password" class="mpass" name="mpass" maxlength="12"/></div>
		</div>

    <div style="clear:both;">
        <div><input type="button" value="로그인" id="btnLogin"/></div>
        <div><input type="button" value="회원가입" onclick="gaipFunc()"/></div>  
        <div><input type="button" value="무조건로그인" onclick="Yaho()"/></div>
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

</html>