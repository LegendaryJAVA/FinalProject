<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.edatagrid.js"></script>
<title>관리자 페이지</title>
</head> 
	<style>
		.row{  /*회원 속성 row*/   
			width:100px;
			float:left;
		
		
		}
		
	
	</style>
<body>
    <%@ include file="../comp/admin.header.jsp" %>
		
		<div >
			<div class='row'>회원ID</div>
			<div class='row'>회원프로필</div>	
			<div class='row'>회원닉네임</div>
			<div class='row'>회원권한</div>
			<div class='row'>회원생년월일</div>
			<div class='row'>회원성별</div>
			<div class='row'>회원가입일</div>
			<div class='row'>회원취향1</div>
			<div class='row'>회원취향2</div>
			<div class='row'>회원취향3</div>
			
		</div>
		<div id="memberform" style="clear:both">
			
		</div>
		
		<div style="clear:both">
			<div> <input type="text" value="1" id="pageNum" onblur="chkmaxpage()"/></div>
			
		</div>
		<div>
			<input type="button" value = "up" onclick="pageNumup()"/>
		</div>
		<div>
			<input type="button" value = "down" onclick="pageNumdown()"/>
		</div>
		

    
    
    
    <%@ include file="../comp/footer.jsp" %>
    
    <script>
		var maxpage = 0;
	    $(document).ready(function(){
	    	console.log($("#pageNum").val());
	    	$.ajax({
	    		url : "memberform",
	    		data: JSON.stringify({ pagenum : $("#pageNum").val()   	}),
	    		type : "post", //post or get
				async : true, //true or false
				dataType : "json",
				contentType : "application/json",
				success : function(result){
					$("#memberform").html("가");
					console.log(result);
					maxpage=result.maxpage;
					
					
				},
				error : function(){
					
				}
	    		
	    		
	    	})
	    	
	    	
	    })
	    
	    var chkmaxpage = function(){
	    	if($("input#pageNum").val() <=maxpage){
	    		
	    	}else{
	    		console.log("나");
	    	}
	    }
	    
	    var pageNumup = function(){
	    	
	    	$("#pageNum").val(Number($("#pageNum").val())+1);
	    	var pagenum = $("#pageNum").val();
	    	pagenum = pagenum +"";
	    	console.log(pagenum);
	    	$.ajax({
	    		url : "memberform",
	    		data: JSON.stringify({ pagenum : pagenum 	}),
	    		type : "post", //post or get
				async : true, //true or false
				dataType : "json",
				contentType : "application/json",
				success : function(result){
					$("#memberform").html("가");
					console.log(result);
					maxpage = result.maxpage;
					
					
				},
				error : function(){
					
				}
	    		
	    		
	    	})
	    	
	    }
	    
   var pageNumdown = function(){
	    	
	    	$("#pageNum").val(Number($("#pageNum").val())-1);
	    	var pagenum = $("#pageNum").val();
	    	pagenum = pagenum +"";
	    	console.log(pagenum);
	    	$.ajax({
	    		url : "memberform",
	    		data: JSON.stringify({ pagenum : pagenum 	}),
	    		type : "post", //post or get
				async : true, //true or false
				dataType : "json",
				contentType : "application/json",
				success : function(result){
					$("#memberform").html("가");
					console.log(result);
					maxpage = result.maxpage;
				
					
					
					
				},
				error : function(){
					
				}
	    		
	    		
	    	})
	    	
	    } 
	    
    
    
    </script>
    
    
</body>

</html>