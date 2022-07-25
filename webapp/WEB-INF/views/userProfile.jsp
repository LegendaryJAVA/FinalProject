<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@ include file="../comp/script.jsp" %>
  
<title>index.jsp</title>
</head>
<body>
  
 	 <%@ include file="../comp/header.jsp" %>
    
    <div class="container">

	   	<div class="">
			<div class="">아이디 : </div>
			<div class=""><input type="text" id="ida" maxlength="12" readonly/></div>
			<div id="msg" class="" ></div>
		</div>
		
		<div class="">
			<div class="">변경 비밀번호 : </div>
			<div class=""><input type="password" id="passa" onblur="chkFunc()" maxlength="12" readonly/></div>
		</div>
		<div class="">
			<div class="">변경 비밀번호 확인: </div>
			<div class=""><input type="password" id="passb" onblur="chkFunc()" maxlength="12" readonly/></div>
		</div>
		<div id="msgchkcpass">
	
		</div>
		<div>
			<div>등급</div>
			<div><input type="text"  id="auth" readonly/></div>
		</div>
		
		<div>
			<div class="">프로필</div>
			<div><input type="text" id="profile" readonly/></div>
	
			<div class=""><input type="button" value="목록" onclick="emotionlist()" /></div>
			<div id="toc-content" class="toc-content">
			  <div class="profileemoticon">😊</div>
			  <div class="profileemoticon">😢</div>
			  <div class="profileemoticon">😍</div>
					  
			</div>
			
		
		</div>
		<div>
			<div class="">닉네임 : </div>
			<div class=""><input type="text" id="nicka" readonly/></div>
			<div id="msg2" class=""></div>
		</div>
		<div class="">
			<div class="">생년월일</div>
		</div>
		<div class="">
			<div class="">
				<input id="year" type="text" placeholder="년(4자)" onkeyup="checkFinish('year')" maxlength=4 readonly/>
			</div>
			<div class="">
				<select disabled="disabled" id="month" onchange="dayList()">
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
		
			
			<div class="date-container">
				<select disabled="disabled" id="date" onchange="dayList()">
					<option value="">일</option>
					<option value="1">1일</option>
					<option value="2">2일</option>
					<option value="3">3일</option>
					<option value="4">4일</option>
					<option value="5">5일</option>
					<option value="6">6일</option>
					<option value="7">7일</option>
					<option value="8">8일</option>
					<option value="9">9일</option>
					<option value="10">10일</option>
					<option value="11">11일</option>
					<option value="12">12일</option>
					<option value="13">13일</option>
					<option value="14">14일</option>
					<option value="15">15일</option>
					<option value="16">16일</option>
					<option value="17">17일</option>
					<option value="18">18일</option>
					<option value="19">19일</option>
					<option value="20">20일</option>
					<option value="21">21일</option>
					<option value="22">22일</option>
					<option value="23">23일</option>
					<option value="24">24일</option>
					<option value="25">25일</option>
					<option value="26">26일</option>
					<option value="27">27일</option>
					<option value="28">28일</option>
					<option value="29">29일</option>
					<option value="30">30일</option>
					<option value="31">31일</option>
					
				</select>
			</div>
		</div>
		<div class="">
			<div class="">성별 : </div>
			<div class="">
			<select id="gender" disabled="disabled">
					<option value="">성별을 입력하세요</option>
					<option value="M">남자</option>
					<option value="F">여자</option>
			</select>
			
			</div>
		</div>
		<div class="">
			<div> 취향</div>
			<div class=""><input id="hob1" type="text" placeholder="취향 1순위" readonly/></div>
			<div class=""><input id="hob2" type="text" placeholder="취향 2순위" readonly/></div>
			<div class=""><input id="hob3" type="text" placeholder="취향 3순위" readonly/></div>
		</div>
		
		<div class="">
			<div class=""><input type="button" value="수정하기" id="btnUpdate" disabled/></div>
			<div class=""><input type="button" value="뒤로가기" id="btnBack" /></div>
			<div class=""><input type="button" value="회원탈퇴" id="btnSecession" disabled/></div>
		</div>
	
	
	
	
	</div>
    <%@ include file="../comp/footer.jsp" %>
	
	
       <script>
	   $(document).ready(function(){
       
       			$.ajax({
       				
       				url: "profile",
      				data :  JSON.stringify({ 	memberid : "<%=request.getParameter("memberid")%>" } ),
       				type : "post", //post or get
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
    					$("select#date").val(date.getDate());
    					$("select#gender").val(result.membergender);
    					$("input#hob1").val(result.memberhob1);
    					$("input#hob2").val(result.memberhob2);
    					$("input#hob3").val(result.memberhob3);
    					if(result.isOwn == true){
    						$("input#passa").attr("readonly",false);
    						$("input#passb").attr("readonly",false);
    						$("input#nicka").attr("readonly",false);
    						$("input#year").attr("readonly",false);
    						$("select#month").removeAttr("disabled");
    						$("#profilelist").html("목록");
    						$("select#gender").removeAttr("disabled");
    						$("select#date").removeAttr("disabled");
    						$("#btnUpdate").removeAttr("disabled");
    						$("#btnSecession").removeAttr("disabled");
    						
    						
    					}else{
    						
    					}
    					
    					
    				},
    				error: function(){
    					
    				}
       				
       				
       			})
       		})
       		
       		$("input#btnUpdate").click(function(){
       			// 수정조건 (빈값) 불응시 되돌림 
    			if($("#ida").val() == ""){
    				
    				$("input#btnGaip").removeAttr("disabled");				
    				alert("아이디를 입력하세요.");
    				return;
    			}
    			
    			if($("input#passa").val() == ""){
    				
    				$("input#btnGaip").removeAttr("disabled");				
    				alert("비밀번호를 입력하세요.");
    				return;
    			}
    			if($("input#profile").val()==""){
    				
    				$("input#btnGaip").removeAttr("disabled");				
    				alert("프로필을 입력하세요.");
    				return;
    			}
    			if($("input#passb").val() == ""){
    				
    				$("input#btnGaip").removeAttr("disabled");				
    				alert("비밀번호를 입력하세요.");
    				return;
    			}
    			if($("input#passb").val() != $("input#passb").val()){
    				
    				$("input#btnGaip").removeAttr("disabled");
    				alert("비밀번호가 틀렸습니다.");
    				return;
    			}
    			
    			if($("input#nicka").val() == ""){
    				
    				$("input#btnGaip").removeAttr("disabled");				
    				alert("닉네임을 입력하세요.");
    				return;
    			}
    			if($("input#year").val() == ""){
    				
    				$("input#btnGaip").removeAttr("disabled");								
    				alert("년도를  입력하세요");
    				return;
    			}
    			if($("select#month").val() == ""){
    				
    				$("input#btnGaip").removeAttr("disabled");				
    				alert("월을 입력하세요.");
    				return;
    			}
    			if($("select#date").val() == ""){
    				
    				$("input#btnGaip").removeAttr("disabled");				
    				alert("일을 입력하세요.");
    				return;
    			}
       			
       			console.log($("input#mid").val());
       			
       			
       			var update ={
       					memberid : $("#ida").val(),
       					memberprofile :$("#profile").val(),
       					membernickname : $("#nicka").val(),
       					memberbirth	:$("input#year").val() +"/"+ $("select#month").val() +"/" + $("select#date").val(),
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
    					history.back();
    				},
    				error : function(){
    					
    				}
       			})
       			
       			
       			
       		})
       		
       		$("input#btnBack").click(function(){
    			history.back();
    		
    			
    		})
    		
    		
    	const nickname = document.querySelector("input#nicka") 
		nickname.addEventListener("change", function(event){
		
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
       		
       	var checkFinish = function(a){ // 숫자만입력 (날짜)
    		let wantChar = "0123456789";
    		let eachChr="";
    		let resultStr="";
    		let nowStr= document.getElementById(a).value;
    		for(var i=0; i<nowStr.length;i++){
    			eachChr=nowStr.substr(i,1);
    			if(wantChar.indexOf(eachChr)!=-1){
    				resultStr +=eachChr;
    			}
    		}
    		document.getElementById(a).value=resultStr;
    	}
       		
       		
		var emotionlist = function(){ // 이모티콘 리스트 보여주고 끄기 (사용자 id일 경우)
    		if(document.getElementById('toc-content').style.display === 'block') {
    			document.getElementById('toc-content').style.display = 'none';
    		} 
    		else {
    			document.getElementById('toc-content').style.display = 'block';
    		}
    			
    	}
		$(".profileemoticon").click(function(){ // 이모티콘 클릭시 프로필란에 표시
			
			$("input#profile").val($(this).text());
			
			
		})
		
		$("#year").change(function(){
		
			
			var year = Number($("#year").val());
			
			
			if (isNaN(year) ){
				$("#year").val("");
			}
			let today = new Date();
			if (!(year>1900 && year<2022)){
				$("#year").val("");
				$("select#month").val("");
							
				
				return ;				
			}
			
		})
		
       	var dayList = function(){
			var year = Number($("#year").val());
			if($("#year").val()==""){
				alert("년도를 입력하세요.");
				$("select#month").val("");
				return ;
			}
			
			
			var month = $("#month option:selected").text();
			if(month.length==2){
				month = month.substr(0,1);	
			}else if (month.length==3){
				month = month.substr(0,2);
			}
			console.log(month);
			
			if(Number(month)==12){
				month = 0;
				year = year+1;
			}
			var date = new Date(year+'-'+(Number(month)+1));
			date.setDate(date.getDate()-1);
			var strHTML = "<select id=date>";
			for(var i=1; i<=date.getDate(); i++)
				{
				strHTML += "<option value=" + i + ">" + i +"일";
			 	strHTML += "</option>";
				}
			
			strHTML += "</select>";
			$(".date-container").html(strHTML);
			
		}	
	
		$("#btnSecession").click(function(){
			if(confirm("정말로 탈퇴하시겠습니까?")){
				console.log($("#ida").val());
				console.log("반영");
				$.ajax({
					url: "membersecsession",
					data: JSON.stringify({ memberid: $("#ida").val() }),
					type: "post",
					dataType : "json",
					contentType:"application/json",
					success : function(result){
						console.log(result.result);
						if(result.result == 'SUC'){
							alert("회원탈퇴가 성공하였습니다.");
							location.href="/";
						}
						else if(result.result == 'FAIL'){
							alert("실패하셨습니다.");
						}
					},
					error : function(error){
						console.log(error);
					}
					
				})
				
			}else{
				alert("취소 버튼을 눌리셨습니다.");
			}
			
				
		})
		
       		
       
       </script>
       
       
       
</body>

<style>
    .carousel {
        height: 300px;
    }
    .carousel .title {
        font-weight: 600;
        font-size: 20px;
    }
    .toc-content{
		display: none;
		
	}
	.profileemoticon{
		float:left;
		
	}

</style>

</html>