<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>index.jsp</title>
</head>
<body>


   	<div class="">
		<div class="">아이디 : </div>
		<div class=""><input type="text" id="ida" maxlength="12" readonly/></div>
		<div id="msg" class="" ></div>
	</div>
	<div class="">
		<div>현재 비밀번호 확인</div>
		<div class=""><input type="password" id="passchk"  maxlength="12"/> </div>
		<div> <input type="button" onclick="chkmyform()" value="비밀번호확인"/></div>
	</div>
	<div class="">
		<div class="">변경 비밀번호 : </div>
		<div class=""><input type="password" id="passa" onblur="chkFunc()" maxlength="12"/></div>
	</div>
	<div class="">
		<div class="">변경 비밀번호 확인: </div>
		<div class=""><input type="password" id="passb" onblur="chkFunc()" maxlength="12"/></div>
	</div>
	<div class="">
		<input type="button" value ="확인" onclick="chkFunc()"/>
	</div>
	<div id="msgchkcpass">
	</div>
	<div>
		<div>등급</div>
		<div><input type="text" readonly id="auth"/></div>
	</div>
	<div>
		<div class="">프로필</div>
		<div><input type="text" id="profile"/></div>
	</div>
	<div>
		<div class="">닉네임 : </div>
		<div class=""><input type="text" id="nicka" /></div>
		<div id="msg2" class=""></div>
	</div>
	<div class="">
		<div class="">생년월일</div>
	</div>
	<div class="">
		<div class="">
			<input id="year" type="text" placeholder="년(4자)" onkeyup="checkFinish('year')" maxlength=4 />
		</div>
		<div class="">
			<select id="month">
				<option value="">월</option>
				<option value="1">1월</option>
				<option value="2">2월</option>
				<option value="3">3월</option>
				<option value="4">4월</option>
				<option value="5">5월</option>
				<option value="6">6월</option>
				<option value="7">7월</option>
				<option value="8">8월</option>
				<option value="9">9월</option>
				<option value="10">10월</option>
				<option value="11">11월</option>
				<option value="12">12월</option>
			</select>
		</div>
		<div class="">
			<input id="date" type="text" placeholder="일" onkeyup="checkFinish('date')" maxlength=2/>
		</div>
	</div>
	<div class="">
		<div class="">성별 : </div>
		<div class="">
		<select id="gender">
				<option value="">성별을 입력하세요</option>
				<option value="M">남자</option>
				<option value="F">여자</option>
		</select>
		
		</div>
	</div>
	<div class="">
		<div> 취향</div>
		<div class=""><input id="hob1" type="text" placeholder="취향 1순위"/></div>
		<div class=""><input id="hob2" type="text" placeholder="취향 2순위"/></div>
		<div class=""><input id="hob3" type="text" placeholder="취향 3순위"/></div>
	</div>
	<div class="">
		<div class=""><input type="button" value="수정하기" id="btnUpdate"/></div>
		<div class=""><input type="button" value="뒤로가기" id="btnBack"/></div>
	</div>
	
       <script>
       		$(document).ready(function(){
       			$.ajax({
       			
       				url: "profile2?memberid=<%=request.getParameter("memberid")%>" ,
      				type : "get", //post or get
    				async : true, //true or false
    				dataType : "json",
    				contentType : "application/json",
    				success: function(result){
    					// if (result.isOwn == true) { 여기는 변경내용 저장 버튼  } else { 여기는 readonly 속성이 추가되어야함 }
    					//
    					var date = new Date(result.memberbirth);
    					$("#ida").val(result.memberid);   			
    					$("#profile").val(result.memberprofile);
    					$("#nicka").val(result.membernickname);
    					$("#auth").val(result.memberauth);
    					$("input#year").val(date.getFullYear());
    					$("select#month").val(date.getMonth()+1);
    					$("input#date").val(date.getDate());
    					$("select#gender").val(result.membergender);
    					$("input#hob1").val(result.memberhob1);
    					$("input#hob2").val(result.memberhob2);
    					$("input#hob3").val(result.memberhob3);
    					if(result.isOwn == true){
    						$("input#btnUpdate").attr("readonly", false);
    						
    					}else{
    						$("input#btnUpdate").attr("disabled", true);
    						
    					}
    					
    					
    				},
    				error: function(){
    					
    				}
       				
       				
       			})
       		})
       		$("input#btnUpdate").click(function(){
       			console.log($("input#mid").val());
       			var update ={
       					memberid : $("#ida").val(),
       					memberprofile :$("#profile").val(),
       					membernickname : $("#nicka").val(),
       					memberbirth	:$("input#year").val() +"/"+ $("select#month").val() +"/" + $("input#date").val(),
       					membergender : $("select#gender").val(),
       					msigndate : "now",
       					memberhob1		: $("input#hob1").val(),
       					memberhob2		: $("input#hob2").val(),
       					memberhob3		: $("input#hob3").val()
       					
       				
       			}
       			$.ajax({
       				url: "updatemember",
      				data: JSON.stringify({
      						  						
      						updatedata : update
      						
      						
      				}),
      				type : "post", //post or get
    				async : true, //true or false
    				dataType : "json",
    				contentType : "application/json",
    				success : function(result){
    					alert(result.result+ "하였습니다.");
    				},
    				error : function(){
    					
    				}
       			})
       			
       			
       			
       		})
       		var chk = function(){
       			alert("거");
       			
       		}
       		$("input#btnBack").click(function(){
    			history.back();
    		
    			
    		})
    		
    		
    	const nickname = document.querySelector("input#nicka") 
		nickname.addEventListener("blur", function(event){
		
			$.ajax({
				url: "chk",
				data: JSON.stringify({data : { membernickname : this.value }}),
				type:"post",
				dataType : "json",
				contentType:"application/json",
				success : function(result){
					if(result.result == "SUC"){
						if(document.querySelector("input#nicka").value ==""){
							document.querySelector("div#msg2").innerHTML="닉네임을 입력하세요.";
						}
						else{
						document.querySelector("div#msg2").innerHTML="사용가능한 닉네임입니다.";
					
						}
					}
					else{
						document.querySelector("div#msg2").innerHTML="중복된 닉네임입니다.";
									
					}
					
				},
				error : function(error){
					console.log(error);
					
				}
				
			})
		})
		
		
		var chkFunc = function(){
			if(document.getElementById("passa").value != "" &
				document.getElementById("passb").value !=""){
				if(document.getElementById("passa").value == document.getElementById("passb").value){
					document.querySelector("div#msgchkcpass").innerHTML="비밀번호가 일치합니다.";
				}else{
					document.querySelector("div#msgchkcpass").innerHTML="비밀번호가 일치하지 않습니다.";
				}
					
				
			}	
		}
       		
       		
       
       </script>
       
       
       
</body>

</html>