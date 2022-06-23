<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../comp/script.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>index.jsp</title>
</head>
<body>
   <div class="">
		<div class="">아이디 : </div>
		<div class=""><input type="text" id="ida" maxlength="12"/></div>
		<div id="msg" class="" ></div>
	</div>
	<div class="">
		<div class="">비밀번호 : </div>
		<div class=""><input type="password" id="a" onblur="chkFunc()" maxlength="12"/></div>
	</div>
	<div class="">
		<div class="">비밀번호 확인: </div>
		<div class=""><input type="password" id="b" onblur="chkFunc()" maxlength="12"/></div>
	</div>
	<div id="msg3">
	</div>
	<div class="">
		<input type="button" value ="확인" onclick="chkFunc()"/>
	</div>
	<div>
		<div class="">프로필</div>
		<div><input tpye="text" id="profile"/></div>
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
		<div class=""><input type="button" value="가입하기" id="btnGaip"/></div>
		<div class=""><input type="button" value="뒤로가기" id="btnBack"/></div>
	</div>
	
	<script>
		
		var chkFunc = function(){
			if(document.getElementById("a").value != "" &
				document.getElementById("b").value !=""){
				if(document.getElementById("a").value == document.getElementById("b").value){
					console.log("비밀번호가 일치합니다.");
				}else{
					console.log("비밀번호가 일치하지않습니다.");
				}
					
				
			}	
		}
		const id = document.querySelector("input#ida");
		id.addEventListener('blur', function(event) {
			var first = /[a-zA-Z]/;		
			String.prototype.replaceAt=function(index, character) { 
				return this.substr(0, index) + character + this.substr(index+character.length); 
			}
			
			var inputVal = $(this).val();
			
			for(var i=0; i<inputVal.length;i++){
				if(first.exec(inputVal[i]) ==null){
					inputVal = inputVal.replaceAt(i, " ");
					console.log("첫글자는 영어만 입력가능합니다.");
				}else{
					console.log("영어드디어입력");
					break;
				}
			}		
			var str = /[^A-Za-z0-9]/;
			if(!(str.exec(inputVal)==null)){
				console.log("유효하지않은 입력입니다.");
			}			  
			$(this).val(inputVal.replace(/[^A-Za-z0-9]/gi,''));
			
			$.ajax({
				url: "chk",
				data: JSON.stringify({data : {memberid : this.value}}),
				type:"post",
				dataType : "json",
				contentType:"application/json",
				success : function(result){
					if(result.result == "SUC"){
						if(document.querySelector("input#ida").value=="")
							{
							document.querySelector("div#msg").innerHTML="아이디를 입력하세요.";
									
						}
						else{
							document.querySelector("div#msg").innerHTML="사용가능한 아이디입니다.";
						}
					}
					else{
						document.querySelector("div#msg").innerHTML="중복된 아이디입니다.";
									
					}
				},
				error : function(error){
					console.log(error);
					
				}
				
			})
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
		const gaipButtion = document.querySelector("input#btnGaip");
		gaipButtion.addEventListener("click", function(){
			
			
			var year = Number($("input#year").val());
			var month = Number($("select#month").val())+1;
			var day = Number($("input#date").val());
			console.log(year);
			console.log(month);
			var date = new Date(year+'-'+month);
			date.setDate(date.getDate()-1);
			if(Number($("input#date").val()) >date.getDate()){
				alert("잘못된 날짜 형식입니다. ex) 1월달은 1~31일까지");
				return;
			}
			

			
			// $("select#month").val()
			
			var alldata = {	
					
				memberid : $("#ida").val(),
				memberpass : $("#a").val(),
				memberprofile :$("#profile").val(),
				membernickname : $("#nicka").val(),
				memberbirth	:$("input#year").val() +"/"+ $("select#month").val() +"/" + $("input#date").val(),
				membergender : $("select#gender").val(),
				msigndate : "now",
				memberhob1		: $("input#hob1").val(),
				memberhob2		: $("input#hob2").val(),
				memberhob3		: $("input#hob3").val()
				
				
			}
			
			if(alldata.memberid == ""){
				alert("아이디를 입력하세요.");
				return;
			}
			
			if(alldata.memberpass == ""){
				alert("비밀번호를 입력하세요.");
				return;
			}
			if(alldata.memberprofile==""){
				alert("프로필을 입력하세요.");
				return;
			}
			if($("input#b").val() == ""){
				alert("비밀번호를 입력하세요.");
				return;
			}
			if($("input#b").val() != alldata.memberpass){
				alert("비밀번호가 틀렸습니다.");
				return;
			}
			
			if(alldata.membernickname == ""){
				alert("닉네임을 입력하세요.");
				return;
			}
			if($("input#year").val() == ""){
				alert("년도를  입력하세요");
				return;
			}
			if($("select#month").val() == ""){
				alert("월을 입력하세요.");
				return;
			}
			if($("input#date").val() == ""){
				alert("일을 입력하세요.");
				return;
			}
			
			if(alldata.membergender == ""){
				alert("성별을 입력하세요.");
				return;
			}
			
			if(alldata.memberhob1 == ""){
				alert("취미를 입력하세요.");
				return;
			}
			
			if(alldata.memberhob2 == ""){
				alert("취미를 입력하세요.");
				return;
			}
			
			if(alldata.memberhob3 == ""){
				alert("취미를 입력하세요.");
				return;
			}
			
			
		
			
			
			console.log(alldata);
			$.ajax({
				url: "test2",
				data: JSON.stringify({data : alldata}),
				type: "post",
				dataType: "json",
				contentType:"application/json",
				success : function(result){
					
					alert(result.result + "가입완료되었습니다.");
					history.back();
					
				},
				error: function(error){
					console.log(error);
				}
				
			})
			
			
		})
			
		var checkFinish = function(a){
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
		
		$("input#btnBack").click(function(){
			history.back();
		
			
		})
		
		
	
	
	</script>
</body>

</html>