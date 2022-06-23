<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>index.jsp</title>
</head>
<body>
   		<div id="msg">
   		
   		
   		</div>
       <script>
       		$(document).ready(function(){
       			
       			var sessionmember = "<%=(String)session.getAttribute("memberid")%>";
       			$.ajax({
       				url: "myform",
      				data: JSON.stringify({
      						memberid : sessionmember
      				}),
      				type : "post", //post or get
    				async : true, //true or false
    				dataType : "json",
    				contentType : "application/json",
    				success: function(result){
    					var strHTML ="<div>";
    					strHTML += '<div> <input type="text" value="'+result.memberid+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.memberprofile+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.membernickname+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.memberauth+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.memberbirth+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.membergender+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.memberhob1+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.memberhob2+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.memberhob3+'"/></div>';
    					strHTML += '<div> <input type="text" value="'+result.membersigndate+'"/></div>';
    					strHTML += '</div>';
    					
    					console.log(result);
    					
    					$("#msg").html(strHTML);
    				},
    				error: function(){
    					
    				}
       				
       				
       			})
       		})
       		
       
       
       
       </script>
       
       
       
</body>

</html>