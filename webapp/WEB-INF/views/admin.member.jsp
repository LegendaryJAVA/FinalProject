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
		.row{ 
			clear:both;
		
		
		}
		.cell{
			width:100px;
			float:left;
		}
		
		
	
	</style>
<body>
    <%@ include file="../comp/admin.header.jsp" %>
		
		<div >
			<div class='cell'>회원ID</div>
			<div class='cell'>회원프로필</div>	
			<div class='cell'>회원닉네임</div>
			<div class='cell'>회원권한</div>
			<div class='cell'>회원생년월일</div>
			<div class='cell'>회원성별</div>
			<div class='cell'>회원가입일</div>
			<div class='cell'>회원취향1</div>
			<div class='cell'>회원취향2</div>
			<div class='cell'>회원취향3</div>
			
		</div>
		<div id="memberform" style="clear:both">
			
		</div>
		
		<div style="clear:both">
			<div> <input type="text" value="1" id="pageNum" onblur="chkmaxpage()" style="width:35px;"/></div>
			<div> <input type="text" value="" id="pagemaxNum" onblur="chkmaxpage()" style="width:35px;"/></div>			
		</div>
		
		<div class='clearbox'>
			<input type="button" class="up-box" value = "up" onclick="pageNumup()" onchange="chkmaxpage()"/>
		</div>
		<div>
			<input type="button" value = "down" onclick="pageNumdown()" />
		</div>
		
		<div>
			<input type="button" value = "수정" onclick="btnUpdate()"/>
		</div>
		
		<div>
			<input type="button" value = "삭제" onclick=""/>
		</div>
		

    
    
    
    <%@ include file="../comp/footer.jsp" %>
    
    <script>
      
    
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
					var strHTML = "";
					
					$(result.result).each(function(){
						strHTML += "<div class='row' data-memberidx='"+this.memberidx +"'>";						
						strHTML += "<div class='cell memberid'><input type='text' name='memberid' value='"+this.memberid+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberprofile'><input type='text' name='memberprofile' value='"+this.memberprofile+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membernickname'><input type='text' name='membernickname' value='"+this.membernickname+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberauth'><input type='text' name='memberauth' value='"+this.memberauth+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberbirth'><input type='text' name='memberbirth' value='"+this.memberbirth+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membergender'><input type='text' name='membergender' value='"+this.membergender+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membersigndate'><input type='text' name='membersigndate' value='"+this.membersigndate+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob1'><input type='text' name='memberhob1' value='"+this.memberhob1+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob2'><input type='text' name='memberhob2' value='"+this.memberhob2+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob3'><input type='text' name='memberhob3' value='"+this.memberhob3+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell hidden'><input type='hidden' name='hidden' value='가' style='width:70px;'/></div>";
						
						strHTML += "</div>";
					})
				
					$("#pagemaxNum").val(result.maxpage);
					$("div#memberform").html(strHTML);
					
					
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
					var strHTML = "";
					$(result.result).each(function(){
						strHTML += "<div class='row' data-memberidx='"+this.memberidx +"'>";						
						strHTML += "<div class='cell memberid'><input type='text' name='memberid' value='"+this.memberid+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberprofile'><input type='text' name='memberprofile' value='"+this.memberprofile+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membernickname'><input type='text' name='membernickname' value='"+this.membernickname+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberauth'><input type='text' name='memberauth' value='"+this.memberauth+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberbirth'><input type='text' name='memberbirth' value='"+this.memberbirth+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membergender'><input type='text' name='membergender' value='"+this.membergender+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membersigndate'><input type='text' name='membersigndate' value='"+this.membersigndate+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob1'><input type='text' name='memberhob1' value='"+this.memberhob1+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob2'><input type='text' name='memberhob2' value='"+this.memberhob2+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob3'><input type='text' name='memberhob3' value='"+this.memberhob3+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell hidden'><input type='hidden' name='hidden' value='가' style='width:70px;'/></div>";
						
						strHTML += "</div>";
					})
					$("#pagemaxNum").val(result.maxpage);
					$("div#memberform").html(strHTML);
					
					
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
					var strHTML = "";
					$(result.result).each(function(){
						strHTML += "<div class='row' data-memberidx='"+this.memberidx +"'>";						
						strHTML += "<div class='cell memberid'><input type='text' name='memberid' value='"+this.memberid+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberprofile'><input type='text' name='memberprofile' value='"+this.memberprofile+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membernickname'><input type='text' name='membernickname' value='"+this.membernickname+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberauth'><input type='text' name='memberauth' value='"+this.memberauth+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberbirth'><input type='text' name='memberbirth' value='"+this.memberbirth+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membergender'><input type='text' name='membergender' value='"+this.membergender+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell membersigndate'><input type='text' name='membersigndate' value='"+this.membersigndate+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob1'><input type='text' name='memberhob1' value='"+this.memberhob1+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob2'><input type='text' name='memberhob2' value='"+this.memberhob2+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell memberhob3'><input type='text' name='memberhob3' value='"+this.memberhob3+"' style='width:70px;'/></div>";
						strHTML += "<div class='cell hidden'><input type='hidden' name='hidden' value='가' style='width:70px;'/></div>";
						strHTML += "</div>";
					})
					$("#pagemaxNum").val(result.maxpage);
					$("div#memberform").html(strHTML);
					
					
					
				},
				error : function(){
					
				}
	    		
	    		
	    	})
	    	
	    } 
	    	
	   $(document).on("change", ".cell input", function(event){ // 관리자가 수정 할때 hidden type에 value는 이벤트
			$(event.target).parents(".row").find(".hidden > input").val("U");
		 
		});
	   
	   var btnUpdate = function(){ // 수정 버튼 클릭시 이벤트 발생
		   console.log ("-----수정버튼 클릭");
		   let row = document.querySelectorAll(".row");
	
		   let voArray = [...row].map(function(e){
			   let  vo;
			   if(e.querySelector(".hidden > input").value==="U"){
				   vo ={
					   memberid : e.querySelector(".memberid > input").value,
					   memberprofile : e.querySelector(".memberprofile > input").value,
					   membernickname : e.querySelector(".membernickname > input").value,
					   memberauth : e.querySelector(".memberauth > input").value,
					   memberbirth : e.querySelector(".memberbirth > input").value,
					   membergender : e.querySelector(".membergender > input").value,
					   membersigndate : e.querySelector(".membersigndate > input").value,
					   memberhob1 : e.querySelector(".memberhob1 > input").value,
					   memberhob2 : e.querySelector(".memberhob2 > input").value,
					   memberhob3 : e.querySelector(".memberhob3 > input").value
				   }
			   }else {
				   vo = null;
			   }
			   return vo;
		   }).filter(e=>e);
		   console.log(voArray);
		   $.ajax({
			   
		      url : "memberlistupdate",
	    	  data: JSON.stringify({ data : voArray}),
	    	  type : "post", //post or get
			  async : true, //true or false
			  dataType : "json",
			  contentType : "application/json",
			  success : function(result){
				  
			  },
			  error : function(error){
				  console.log(error);
			  }
		   })		   
	   } 
	   
	   
	   /* $(document).on("change", ".cell", function(event){
			console.log(event);
			console.log("--");
		    globalevent = event;
		});	  */
    
    </script>
  	
  	

  	
  	   
</body>

</html>