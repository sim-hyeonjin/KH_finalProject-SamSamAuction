<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 정보</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
<style>
div{
    box-sizing: border-box;
/* border: 1px solid red */
}
.wrap{
    width: 1000px;
    height: 500px;
    margin: auto;
}
.wrap>div{ 
    width: 100%;
}
#header,#footer{
    height: 20%;
}

#content>div{
    height: 100%;
    float: left;
}
#title{
    height: 100%;
    font-family: "Malgun Gothic";
    font-size: 25px;
    font-weight: 700;
    padding-bottom: 50px;
    padding-top: 35px;
}
#content{
    height: 60%;
    
}
#content1{
    float: left;
    width:12%;
}
#content2{
    float: left;
    width:88%;
}
#content_1_1{
    height: 42px;
    padding-top: 8%;
    text-align: center;
    background-color: #efefef;
    border-top: 1px solid gray;
    border-bottom: 1px solid gray;
    font-weight: bold;
    font-family: "Malgun Gothic";
}
#content_1_2{
    height: 42px;
    padding-top: 8%;
    text-align: center;
    background-color: #efefef;
    border-bottom: 1px solid gray;
    font-weight: bold;
    font-family: "Malgun Gothic";
}
#content_1_3{
    height: 42px;
    padding-top: 8%;
    text-align: center;
    background-color: #efefef;
    border-bottom: 1px solid gray;
    font-weight: bold;
    font-family: "Malgun Gothic";
    
}
#content_1_4{
    height: 84px;
    padding-top: 25%;
    text-align: center;
    background-color: #efefef;
    border-bottom: 1px solid gray;
    font-weight: bold;
    font-family: "Malgun Gothic";
}
#content_1_5{
    height: 50px;
    padding-top: 10%;
    text-align: center;
    background-color: #efefef;
    border-bottom: 1px solid gray;
    font-weight: bold;
    font-family: "Malgun Gothic";
}
#content_2_1{
    height: 42px;
    padding-top: 0.8%;
    border-top: 1px solid gray;
    border-bottom: 1px solid gray;
    font-family: "Malgun Gothic";
}
#content_2_2{
    height: 42px;
    padding-top: 1%;
    border-bottom: 1px solid gray;
    font-family: "Malgun Gothic";
    
}
#content_2_3{
    height: 42px;
    padding-top: 0.8%;
    border-bottom: 1px solid gray;
    font-family: "Malgun Gothic";
}
#content_2_4{
    height: 42px;
    padding-top: 0.8%;
    border-bottom: 1px solid gray;
    font-family: "Malgun Gothic";
}
#content_2_5{
    height: 42px;
    padding-top: 0.8%;
    border-bottom: 1px solid gray;
    font-family: "Malgun Gothic";
}
#content_2_6{
    height: 50px;
    padding-top: 1.2%;
    border-bottom: 1px solid gray;
    font-family: "Malgun Gothic";
}
/* #content_2_7{ */
/*     height: 42px; */
/*     padding-top: 0.8%; */
/*     border-bottom: 1px solid gray; */
/*     font-family: "Malgun Gothic"; */
/* } */
.email_1{
    width: 80px;
    height: 20px;
}
.email_2{
    width: 160px;
    height: 20px;
}
.btn{
    border-radius: 5px;
    background-color: rgb(134,134,134);
    color: white;
    border: 0px;
    height: 25px;
}
.btn2{
    border-radius: 4px;
    border: 0px;
    height: 25px;
    background-color: rgb(134,134,134);
    color: white;
    width: 70px;
    height: 30px;
    text-align: center;
    margin-left: 400px;
}
.btn3{
    border-radius: 4px;
    border: 0px;
    height: 25px;
    background-color: black;
    color: white;
    width: 70px;
    height: 30px;
}
.btn4{
    border-radius: 4px;
    border: 0px;
    height: 25px;
    background-color: #efefef;
    color: dimgrey;
    width: 70px;
    height: 30px;
}




</style>
</head>
<body>

<c:if test="${ not empty alertMsg }">
<script>
	alert("${alertMsg}");
</script>
<c:remove var="alertMsg" scope="session"/>
</c:if>


    <div class="wrap">
         <form action="update.me" method="post">
			        <div id="header">
			            <div id="title">나의정보</div>
			        </div>
			        <div id="content">
                    <div id="content1">
                        <div id="content_1_1">아이디</div>
                        <div id="content_1_2">이름</div>
                        <div id="content_1_3">E-mail</div>
                        <div id="content_1_4">주소</div>
                        <div id="content_1_5">휴대폰 번호</div>
                    </div>
                    <div id="content2">
                    <input type="hidden" value="${loginUser.userId}">
                        <div id="content_2_1">&nbsp&nbsp&nbsp&nbsp ${loginUser.userId}
                            &nbsp&nbsp<button  type="button" class="btn" onclick="pwdChange()">비밀번호변경</button>
                        </div>
                        <div id="content_2_2">&nbsp&nbsp&nbsp&nbsp ${loginUser.userName}</div>
                        <div id="content_2_3">
                            &nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" class="" id="emailthis" value="${loginUser.email}" name="email">  
<!--                             <select style="width: 100px;" id="site"> -->
<!--                                 <option value="0">선택하세요</option> -->
<!--                                 <option value="naver.com">naver.com</option> -->
<!--                                 <option value="daum.com">daum.com</option> -->
<!--                                 <option value="nate.com">nate.com</option> -->
<!--                                 <option value="gmail.com">gmail.com</option> -->
<!--                             </select> -->
                        </div>
                        <div id="content_2_4">
                            &nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" id="address_kakao" name="addressNum" class="email_1" value="${loginUser.addressNum }">
                            &nbsp&nbsp<button type="button" class="btn" id="address_kakaoo" >우편번호검색</button>
                        </div>
                        <div id="content_2_5">
                            &nbsp&nbsp&nbsp&nbsp <input type="text" class="email_2" id="address_detail" value="${loginUser.address }" name="address">&nbsp&nbsp&nbsp<input type="text"class="email_2" id="" value="${loginUser.addressDetail }" name="addressDetail">
                        </div>
                        <div id="content_2_6">
                        &nbsp&nbsp&nbsp&nbsp&nbsp<input id="phone" type="text" name="phone" value="${loginUser.phone }"title="전화번호 입력" required/>
						</div>
                    </div>
        </div>
        <div id="footer">
        	<input type="submit" class="btn2" value="변경">
            <button type="button" class="btn3" onclick="deleteMe()">탈퇴</button>
            <button type="button" class="btn4" onclick="backbackback()">취소</button>
        </div>

		</form>
    </div>
    
    <script>
		$("#site").change(function(){
			$("#emailback").val($("#site").val()); //input(emaliback)의 value(site.value)값에 넣는다
		})
		
		function pwdChange(){
			location.href="pwdChangeHome.me";
		}
		
		function deleteMe(){
			location.href="delete.me";
		}
		
		function backbackback(){
			location.href="myPageSuccess.me"
		}
    </script>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	window.onload = function(){
	    document.getElementById("address_kakaoo").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("address_kakao").value = data.zonecode; // 주소 넣기
	                document.getElementById("address_detail").value = data.address; // 주소 넣기
	                document.querySelector("input[name=address_focus]").focus(); //상세입력 포커싱
	            }
	        }).open();
	    });
	}
	</script>
	
	<script>
	//휴대폰 번호 인증
	var code2 = "";
	$("#phoneChk").click(function(){
		alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
		var phone = $("#phone").val();
		$.ajax({
	        type:"GET",
	        url:"phoneCheck?phone=" + phone,
	        cache : false,
	        success:function(data){
	        	if(data == "error"){
	        		alert("휴대폰 번호가 올바르지 않습니다.")
					$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
					$(".successPhoneChk").css("color","red");
					$("#phone").attr("autofocus",true);
	        	}else{	        		
	        		$("#phone2").attr("disabled",false);
	        		$("#phoneChk2").css("display","inline-block");
	        		$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
	        		$(".successPhoneChk").css("color","green");
	        		$("#phone").attr("readonly",true);
	        		code2 = data;
	        	}
	        }
	    });
	});
	</script>
	
	<script>
	//휴대폰 인증번호 대조
	$("#phoneChk2").click(function(){
		if($("#phone2").val() == code2){
			$(".successPhoneChk").text("인증번호가 일치합니다.");
			$(".successPhoneChk").css("color","green");
			$("#phoneDoubleChk").val("true");
			$("#phone2").attr("disabled",true);
		}else{
			$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
			$(".successPhoneChk").css("color","red");
			$("#phoneDoubleChk").val("false");
			$(this).attr("autofocus",true);
		}
	});
	</script>
    
    
</body>
</html>