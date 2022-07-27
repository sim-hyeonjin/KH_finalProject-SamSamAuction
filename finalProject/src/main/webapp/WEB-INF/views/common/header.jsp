<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


 <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    
    <!-- alert창 예쁘게 꾸미는 구문 Started -->
    <!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>

  	 <link href="${path}/resources/css/reset.css" rel="stylesheet"/> 
	<link href="${path}/resources/css/style.css" rel="stylesheet"/>
    <style>
      *{
        margin: 0;
        padding: 0;
        box-sizing: border-box !important;
    }
    .menubar{
        width: 100%;
        height: 140px;
        position:fixed;
        border: solid 1px black;
        z-index: 1000;
    }
    .navbar {
        width: 100%;
        height: 40px;
        position: relative;
        display: flex;
        justify-content: space-between;
        border: solid 1px black;
        background-color: white;
    }
    .navbar div:not(.alarmList, #alarmListDiv){
        width: 35%;
        height: 100%;
        font-size: 14px;
        display: flex;
        align-items: center;
      
    }
    #clock{
        margin-left: 100px;
    }
    .nav-list{
        width: 90%;
        list-style-type: none;
        display: flex;
        justify-content: space-evenly;
    }
    .nav-list a{
        text-decoration: none;
        color: black;
    }
    .header{
        background-color: black;
        width: 100%;
        height: 100px;
        position: relative;
        display: flex;
        justify-content: center;
        box-shadow: 0px 5px 7px rgba(0, 0, 0, 0.5);
    }
    .head-inner{
        width: 80%;
        height: 100%;
        display: flex;
        justify-content: space-evenly;
    }
    .h1{
        width: 10%;
    }
    .h2{
        width: 50%;
    }
    .head-inner>div{
        font-size: 22px;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .header-nav{
        width: 100%;
        list-style: none;
        display: flex;
        justify-content: space-evenly;
    }
    .header a{
        text-decoration: none;
        color: white;
        margin: 45px;
    }
    .search-bar{
        height: 30px;
        font-size: 15px;
    }
    
    <%--2022.07.25 alarm css--%>
	#alarmB, .alarmList{
		cursor:pointer;
	}
	#alarmNo{
	}
	#alarmListDiv{
	margin-top:10px;	
	width:300px;
	background-color:white;
	flex-direction:column;
	position:fixed;
	right:13%;
	z-index:1;
	border: 1px solid black;
	}
	#alarmListDiv div{
	width:100%;
	flex-direction:column;
	text-align:center;
	}
	.alarmList{

	}
	.suBid, .suProduct, .faProduct, .topBid{
		border:1px solid black;
	}

	
	#titleBOx{width:100px;}
    </style>
       	 <link href="${path}/resources/css/reset.css" rel="stylesheet"/> 
	<link href="${path}/resources/css/style.css" rel="stylesheet"/>
</head>
<body>
	<div class="menubar">
    <!-- Navigation-->
    <div class="navbar">
        <div id="clock" style="color:black"></div>
        <div>
            <ul class="nav-list">
             	<c:choose>
				    <c:when test="${ empty loginUser }">
		                <li><a href="#!">samsam은 처음이신가요?</a></li>
		                <li><a data-toggle="modal" data-target="#login_modal2">로그인</a></li>
		                <li><a href="enrollForm.me">회원가입</a></li>
		                <li><a href="noticeList.no">고객센터</a></li>
                  	</c:when>      
                  	<c:otherwise>
	                    <c:choose>
	                    	<c:when test="${loginUser.userId eq 'admin' }">
	                    		<b>${ loginUser.userName }님 환영합니다</b> &nbsp;&nbsp;
	                   	 		<a href="logout.me">로그아웃</a>
	                    		<a href="noticeList.no">고객센터</a>
	                    		<a href="new.me">차트</a>
	                    	</c:when>
	                    	<c:otherwise>
	                    		<b>${ loginUser.userName }님 환영합니다</b> &nbsp;&nbsp;
	                    		
	                    		
	                    		<%-- 2022.07.24 알림 시작 --%>
    	                    	<b id="alarmB" onclick="clickk(document.getElementById('alarmNo'));" >알림</b>
	                   			<span id="alarmNo"></span> 
	                    		<%-- 2022.07.24 알림 끝 --%>
	                    		
	                    		<a href="myPageSale.me">마이페이지</a>
	                   	 		<a href="logout.me">로그아웃</a>
	                    		<a href="noticeList.no">고객센터</a>
	                    	</c:otherwise>
	                    </c:choose>
            		</c:otherwise>	                
                </c:choose>
            </ul>
        </div>
    </div>
    
    
    <!-- chat -->
<div id="chatAl"></div>
<div id="sellAl"></div>

<%-- 채팅, 알람 시작 ver 2022.07.25 --%>

<script>
var login = '${loginUser.userId}'
$(document).ready(function(){
// 	bidCheck();
	if(login!=null && login!=""){
		alarm(login);
	}
})
// function bidCheck(){
// 	if(login != ""){
// 		$.ajax({
// 			url : "ajaxBid.ch",
// 			data : {userId : login},
// 			success : function(list){
// 				var listStr="";
// 				var listStr2="";
// 				if(list.chatList!=null){
// 					console.log("1")
// 					for(var i=0;i<list.chatList.length;i++){
// 						listStr+="<div>경매에 낙찰되셨습니다<br>아래 채팅에 참여하여 판매자와 거래해보세요"+
// 						"<a href='chatenter.ch?chatRoomNo="+list.chatList[i].chatRoomNo+"&name="+list.chatList[i].buyerId+"'>이동</a><br></div>";
// 					}
// 					$("#chatAl").html(listStr);
// 				}
// 				if(list.sellList!=null){
// 					console.log("2")
// 					for(var i=0;i<list.sellList.length;i++){
						
// 						listStr2+="<div>물품이 판매 되었습니다<br>아래 채팅에 참여하여 구매자와 거래해보세요"+
// 						"<a href='chatenter.ch?chatRoomNo="+list.sellList[i].chatRoomNo+"&name="+list.sellList[i].sellId+"'>이동</a><br></div>"
// 					}
// 					$("#sellAl").html(listStr2)
// 				}
// 			},
// 			error : function(){
					
// 			}
// 		})
		
// 	}
	
// }
function clickk(a){
	console.log("123");
	console.log(a.children[0].style.display)
	console.log(a.children);
	if(a.children[0].style.display=='none') {
		for(var i = 0 ; i<a.children.length;i++){
			a.children[i].style.display="";
		}
	}else{
		for(var i = 0 ; i<a.children.length;i++){
			a.children[i].style.display='none';
		}	
	}
// 	if(a.children.style.display == "none")
// 	else a.children.style.display="none";
}
function alarm(userId){
	$.ajax({
		url : 'ajaxAlarm.ax',
		data : {
			userId : userId
		},
		success : function(alarmList){
			if(alarmList.suBid == "") console.log("123");
			var str ="<div id='alarmListDiv' style='display:none'>";
			if(alarmList.suBid == "" &&
					alarmList.suProduct == "" &&
					alarmList.faProduct == "" &&
					alarmList.topBid == ""){
				str="<div class='noAlarm alarmList'>알람이 없습니다.</div>"
			}else{
				if(alarmList.suBid != ""){
					str+="<div class='suBid alarmList' onclick='clickk(this);'>낙찰 상품이 있습니다.";
					for(var i in alarmList.suBid) {
						str+="<div class='alarmList' style='display:none;'><a href='chatenter.ch?chatRoomNo="+alarmList.suBid[i].proNo+"&name=${loginUser.userId}' class='suBidChil'> 경매 "+alarmList.suBid[i].proTitle+"이(가) 낙찰 되었습니다.</a></div>";
					}
					str+="</div>";
				}
				if(alarmList.suProduct != ""){
					str+="<div class='suProduct alarmList' onclick='clickk(this);'>판매 상품이 있습니다.";
					for(var i in alarmList.suProduct) {
						str+="<div class='alarmList' style='display:none;'><a href='chatenter.ch?chatRoomNo="+alarmList.suProduct[i].proNo+"&name=${loginUser.userId}' class='suProChil'> 경매 "+alarmList.suProduct[i].proTitle+"이(가) 판매 되었습니다.</a></div>";
					}
					str+="</div>";
				}
				if(alarmList.faProduct != ""){
					str+="<div class='faProduct alarmList'>유찰 상품이 있습니다.";
					for(var i in alarmList.faProduct) {
						str+="<div class='alarmList' style='display:none;'><a href='#' class='faProChil'> 경매 "+alarmList.faProduct[i].proTitle+"이(가) 유찰 되었습니다.</a></div>";
					}
					str+="</div>";
				}
				if(alarmList.topBid != ""){
					str+="<div class='topBid alarmList'>입찰하신 상품에 상위 입찰자가 있습니다.";
					for(var i in alarmList.topBid) {
						str+="<div class='alarmList' style='display:none;'><a href='#' class='topBidChil'> 경매 "+alarmList.topBid[i].proTitle+"에 상위 입찰자가 있습니다.</a></div>";
					}
					str+="</div></div>";
				}
				$("#alarmNo").html(str);
			}
		},
		error : function(){
			
			
		}
	})
	
}
</script>
<%-- 채팅, 알람 끝 --%>



    <script>
        var clockTarget = document.getElementById("clock");
        function clock() {
            var today = new Date();
            clockTarget.innerText =today;
        }
        function init() {
            clock();
            setInterval(clock, 1000);
        }
        init();
    </script>
    <!-- Header-->
    <div class="header">
        <div class="head-inner">
            <div class="h1">
                <img src="#" alt="">
                <a href=${path }>samsam<br>Auction</a>
            </div>
            <div class="h2">
                <ul class="header-nav">
                
                    <li><a href="#">신규경매</a></li>
                    <li><a href="#">마감임박경매</a></li>
                    <li><a href="#">카테고리</a></li>
                    <li><a href="insertProductForm.pr">물품등록</a></li>
                
                </ul>
            </div>


		<!-- 검색폼 -->
		<form name="searchForm" action="searchList.pr">
			<div class="search-wrap">
				<select class="form-control search-select" name="searchType" id="titleBOx">
					<option value="proTitle">제목</option>
					<option value="proContent">내용</option>
					<option value="sellId">판매자</option>
				</select>
				<input type="hidden" value="1" name="cPage">
				<input type="text" class="form-control search-input" name="searchKeyword" value="${searchKeyword}">
				<button type="submit" class="btn btn-info search-btn">검색</button>
			</div>
		</form>
		

		
		
		
        </div>
    </div>
</div>



    <div class="modal fade ch" id="login_modal2" >
      <h2 class="blind">로그인 팝업</h2>
      <div class="login-modal-box">
        <div class="login-modal-head">
          <button class="close-btn"></button>
          <h3 class="login-modal-title">로그인</h3>
        </div>
        <div class="topline"></div>
        <div style="text-align:center;">
        <img class="logoimg" src="resources/images/중고경매.png" alt="">
        </div>
        <p class="sub-text">SAMSAM AUCTION</p>
        <form class="user-input-wrap" action="login.me" method="post">
          <input
            id="userId"
            name="userId"
            class="user-input-box"
            type="text"
            placeholder="아이디"
          />
          <div class="error-line"></div>
          <strong class="id-error">아이디를 입력해 주세요.</strong>
          <input
            id="userPw"
            name="userPw"
            class="user-input-box"
            type="password"
            placeholder="비밀번호"
          />
          <div class="info-error">
            아이디 혹은 비밀번호가 일치하지 않습니다.
          </div>
          <input
            id="login-status-btn"
            class="login-status-btn"
            type="checkbox"
          />
        
          <label for="login-status-btn" class="login-status-text"
            >로그인 상태 유지</label
          >
          <button id="modal-login-btn" class="login-btn">로그인</button>
        </form>
        <ul class="user-function-wrap">
          <li class="user-function-list">
            <a href="" class="user-function-link">회원가입</a>
          </li>
          <li class="user-function-list">
            <a href="" class="user-function-link">아이디/비밀번호 찾기</a>
          </li>
        </ul>
        <div class="line">또는</div>
        <ul class="easy-login-wrap">
          <li>
            <a class="easy-login-link google" href="https://www.google.com/"
              >구글 계정으로 로그인</a
            >
          </li>
          <li>
            <a class="easy-login-link facebook" href="https://www.facebook.com/"
              >페이스북 계정으로 로그인</a
            >
          </li>
          <li>
            <a class="easy-login-link naver" href="https://www.naver.com/"
              >네이버 계정으로 로그인</a
            >
          </li>
          <li>
            <a
              class="easy-login-link kakao"
              href="https://www.kakaocorp.com/page/"
              >카카오톡 계정으로 로그인</a
            >
          </li>
        </ul>
      </div>
    </div>

    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous"
    ></script>
    <script>
      let modalCheck = false;
      $(".login-btn").click(function () {
        if (!modalCheck) {
          $(".login-modal").show();
          modalCheck = true;
        }
      });
      $(".close-btn").click(function () {
        if (modalCheck) {
          $(".login-modal").hide();
          modalCheck = false;
        }
      });
      $("#modal-login-btn").click(function () {
        let userID = $("#user-id").val();
        if (userID =="") {
        	$(".info-error").show();
          $("#user-id").css("border", "2px solid #F4492E");
        } else {
          
        }
      });
      
//       $("#user-id").focus(function () {
//         $("#user-id").css("border", "");
//         $(".id-error").hide();
//         $(".error-line").hide();
//         $(".info-error").hide();
//       });
    </script>

</body>


</html>