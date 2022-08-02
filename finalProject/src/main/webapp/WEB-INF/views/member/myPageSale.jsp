<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지(판매)</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/ee429cabba.js" crossorigin="anonymous"></script>
    
<style>
div{
    box-sizing: border-box;
    border: 1px solid red;
}
.wrap{
    width: 1000px;
    height: 700px;
    margin: auto;
}
.wrap>div{ 
    width: 100%;
}
#header{
    height: 20%;
}
#content{
    height: 80%; 
}
#footer{
    height: 10%;
}
#title{
    height: 100%;
    font-family: "Malgun Gothic";
    font-size: 25px;
    font-weight: 700;
    padding-bottom: 50px;
    padding-top: 70px;
}
#content_1{
    height: 130px;
}
#content_1_1{
    float: left;
    width:20%;
    height: 130px;
    background-color: gray;
    color : white;
    font-family: "Malgun Gothic";
    font-size: 15px;
    font-weight: 550;
    border-bottom: 1px solid gray;
    border-top: 1px solid gray;
    padding-top:15px;
}
#content_1_2{
    float: left;
    width:80%;
    height: 130px;
    border-bottom: 1px solid gray;
    border-top: 1px solid gray;
}
#content_2{
   height: 30px;
}
#content_3{
    font-family: "Malgun Gothic";
    font-size: 20px;
    font-weight: 550;
    height: 40px;
}
#td{
    text-align: center;
}
#content_5{
    height: 40px;
    padding-top: 9px;
}
.btn1{
    border-radius: 4px;
    border: 0px;
    height: 25px;
    background-color: rgb(134,134,134);
    color: white;
    width: 70px;
    height: 30px;
    text-align: center;
    margin-left: 925px;
}
#content_6{
    height: 25px;
    text-align: center;
}
#content_7{
    font-family: "Malgun Gothic";
    font-size: 20px;
    font-weight: 550;
    height: 40px;
}
#content_8{
/*     height: 88px; */
}
#content_9{
    height: 40px;
    padding-top: 10px;
}
#content_10{
    height: 25px;
    text-align: center;
}
/* #tata{
    background-color: black;
    color: white;
} */
thead{
    background-color: gray;
    color: white;
    text-align: center;
}


#top_icon{
    display: inline-block;
    text-align: center;
    padding: 20px;
    padding-left: 70px;
    font-size: smaller;
}
#top_icon1, #top_icon2, #top_icon3, #top_icon4, #top_icon5{
    margin-bottom: -5px;
}
table {
    border-top: 1px solid black;
    border-bottom: 1px solid black;
}
#icon{
    float: right;
    color: black;
    padding-right: 20px;
    font-size: larger;
}

#check_all:checked~div{
	background-color: black;
	
}
</style>
    
</head>

<body>
<jsp:include page="../common/header.jsp"/>
<!--     <link rel="stylesheet" href="resources/css/myPageSale.css"> -->
    
<br><br><br><br><br>

    <div class="wrap">
        <div id="header">
            <div id="title">마이페이지(판매)</div>
        </div>
        <div id="content">
                <form action="">
                    <div id="content_1">
                        <div id="content_1_1" style= "background-color: gray;"><p>&nbsp; ${loginUser.userName} 님</p></div>
                        <div id="content_1_2">
	                        <div id="top_icon">
	                            <i class="fa-regular fa-circle-check fa-4x" id="top_icon4" onclick="success()"></i><br><br>
	                            <label for="top_icon4">낙찰</label>
	                        </div>
	                        <div id="top_icon">
	                            <i class="fa-regular fa-newspaper fa-4x" id="top_icon3" onclick="sale()"></i><br><br>
	                            <b><label for="top_icon3">판매</label></b>
	                        </div>
	                        <div id="top_icon">
	                            <i class="fa-regular fa-heart fa-4x" id="top_icon2" onclick="pickListView()"></i><br><br>
	                            <label for="top_icon2">관심물품</label>
	                        </div>
	                        <div id="top_icon">
	                            <i class="fa-regular fa-user fa-4x" id="top_icon1" onclick="myInfo()"></i><br><br>
	                            <label for="top_icon1">나의 정보</label>
	                        </div>
	                        <div id="top_icon">
	                            <i class="fa-regular fa-circle-question fa-4x" id="top_icon5" onclick="location.href='list.bo?userId=${loginUser.userId}';"></i><br><br>
	                            <label for="top_icon5">문의 내역</label>
	                        </div>
	                        
                    	</div>
                    </div><br><br>

                    <div id="content_2"></div>
                    <div id="content_3">&nbsp· 판매현황 </div>
                    <div id="content_4">
                        <table id="tata">
                            <thead>
                                <tr >
                                    <th height="30" width="70"><input type="checkbox" class="out" name="Chk_list" id="check_all" style="accent-color: black"></th>
<!--                                     <th height="30" width="150">카테고리</th> -->
                                    <th height="30" width="400">판매상품</th>
                                    <th height="30" width="130">시작가</th>
                                    <th height="30" width="130">현재가</th>
                                    <th height="30" width="130">조회수</th>
                                    <th height="30" width="130">상태</th>
                                </tr>
                            </thead>
                            <tbody>      
                                                 
                            </tbody>  
                            </table>
                    </div>
                    <div id="content_5">
                        <button type="button" id="delBtn2" data-proNo="+result.list[i].proNo+" onclick="delRow()" class="btn1">삭제</button>
                    </div>
                    <div id="content_6">
                    </div>
                    <div id="content_7">
                        &nbsp· 운송장 조회 
                    </div>
                    <div id="content_8">
                        <table id="tata2">
                            <thead>
                                <tr>
                                    <th height="30" width="70"><input type="checkbox" name="Chk_list" id="check_all2" style="accent-color: black"></th>
<!--                                     <th height="30" width="150">카테고리</th> -->
                                    <th height="30" width="400">구매한 물품</th>
                                    <th height="30" width="200">택배회사</th>
                                    <th height="30" width="320">운송장 번호</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                            </tbody>  
                            </table>
                    </div>
                    <div id="content_9">
                        <button type="button"  id="delBtn" onclick="postDelete();" class="btn1">삭제</button>
                    </div>
                    <div id="content_10">
                    </div>
                </form>
        </div>
    </div>
    
     <jsp:include page="../common/footer.jsp"/>
     
     
    <script>
    	function success(){
        	location.href="myPageSuccess.me";
        }
    	
    	function sale(){
    		location.href="myPageSale.me";
    	}
    	
    	function pickListView(){
    		location.href="pick.me"
    	}
    	
    	function myInfo(){
    		location.href="myInfo.me"
    	}
    	
    	function detail(){
    		location.href="saleDetail.me"
    	}
    	
    	function post(){
    		location.href="salePostBox.me"
    	}
    	
    	function mumu(){
    		location.href="mumu.me";
    	}
    </script>
    
    
    <!-- 판매(판매현황) -->
    <script>
    window.onload = function(){
    	sale(1);
    	post(1);
    }

//      $(function(){
//     	$(document).ready(function(){
//     		sale(1);
//     	})
    	function sale(cPage){
    		console.log(cPage);
    		$.ajax({
    			url : "sale.me",<%--<form action> href:sale.me--%>
    			data : { <%--sale.me?userId--%>
    			userId : "${loginUser.userId}"
    			,cPage : cPage
    			},
    			success : function(result){
    					var resultStr = "";
    					
						for(var i=0; i<result.list.length; i++){
						
							resultStr += "<tr>" 
										+"<td style='text-align: center; accent-color: black'><input name='chkbox' type='checkbox' class='input_check'  value="+result.list[i].proNo+"></td>"
										+"<td style=\"text-align: center;\">"+result.list[i].proTitle+"</td>"
										+"<td style=\"text-align: center;\">"+result.list[i].proPrice+"</td>"
										+"<td style=\"text-align: center;\">"+"</td>"
										+"<td style=\"text-align: center;\">"+result.list[i].count+"</td>"
										+"<td style=\"text-align: center;\">"+ "<a href=\"postBox.me?proNo="+result.list[i].proNo+"\">" + ((result.list[i].proStatus == 'Y') ? '진행중' : '경매완료')+ "</a>" + "</td>"
									+"</tr>"
									
						}
					$("#tata>tbody").html(resultStr);	
					
					var resultStr2 = ""; 
// 					console.log(result.pi.startPage);
// 					console.log(result.pi.endPage);
					for(var i=result.pi.startPage; i<=result.pi.endPage; i++){
						
						resultStr2 += "<button type='button' style=\"background-color: gray; color:white; border-color: black; border-radius: 4px; width:30px; text-align:center;\" onclick='sale("+i+")'>"+i+"</button>"
						
					}
					$("#content_6").html(resultStr2);
    			},
    			error : function(){
    				console.log("ajax 통신 실패")
    			}
    		})
    	}
//     })
    </script>
    
    
    <!-- 판매(운송장 조회) -->
     <script>
    	function post(pPage){
    		console.log(pPage);
    		$.ajax({
    			url : "post.me",<%--<form action> href:sale.me--%>
    			data : { <%--sale.me?userId--%>
    			userId : "${loginUser.userId}"
    			,pPage : pPage
    			},
    			success : function(result){
    				 	var resultStr = "";
						for(var i=0; i<result.list.length; i++){
						
							resultStr += "<tr>" 
								+"<td style='text-align: center; accent-color: black'><input name='chkbox2' type='checkbox' class='input_check2' id='checkInput' value="+result.list[i].pboxNo+"></td>"
										+"<td style=\"text-align: center;\">"+result.list[i].proTitle+"</td>"
										+"<td style=\"text-align: center;\">"+result.list[i].pboxName+"</td>"
										+"<td style=\"text-align: center;\">"+result.list[i].pboxNo+"</td>"
									+"</tr>"
									
						}
					$("#tata2>tbody").html(resultStr);
					
					var resultStr2 = ""; 
					console.log(result.pi.startPage);
					console.log(result.pi.endPage);
					for(var i=result.pi.startPage; i<=result.pi.endPage; i++){
						
						resultStr2 += "<button type='button' style=\"background-color: gray; color:white; border-color: black; border-radius: 4px; width:30px; text-align:center;\" onclick='post("+i+")'>"+i+"</button>"
						
					}
					$("#content_10 ").html(resultStr2);
					
    			},
    			error : function(){
    				console.log("ajax 통신 실패")
    			}
    		})
    	}
	    	</script>
	    	
	    	
	    	<!-- 판매현황 행 삭제 -->
	    	<script>
	    	function delRow(){
	    		if(window.confirm("진짜 삭제하시겠습니까?")){
	    			
				var checkValue = [];
				var checkRows = $("[name='chkbox']:checked");
				for(var i = 0; i<checkRows.length;i++){
					checkValue[i] = checkRows.eq(i).val();
				}
				console.log(checkValue);
					$.ajax({
 						url:"deleteSale.my",
 						type:"post",
 						traditional : true,
 						data:{
 							chArr : checkValue
 						},
 						success: function(){
 
 								sale(1);
 							
 						}
 					})
	    	}
	    	}
				
	    	</script>
	    	
	    	<!-- 운송장 조회 삭제 -->
	    	<script>
	    	function postDelete(){
	    		if(window.confirm("진짜 삭제하시겠습니까?")){
	    			
				var checkValue2 = [];
				var checkRows2 = $("[name='chkbox2']:checked");
				for(var i = 0; i<checkRows2.length; i++){
					checkValue2[i] = checkRows2.eq(i).val();
				}
				console.log(checkValue2);
					$.ajax({
 						url:"deletePost.my",
 						type:"post",
 						traditional : true,
 						data:{
 							chArr2 : checkValue2
 						},
 						success: function(){
 
 							post(1);
 							
 						}
 					})
	    	}
	    	}
				
	    	</script>
	    	
	    	
	    	
	    	
	    	<!-- 체크박스 -->
	    	<script>
	    	$(document).on('click','#check_all',function(){
			if($('#check_all').is(':checked')){
				$('.input_check').prop('checked',true);
			}else{
				$('.input_check').prop('checked',false);
			}
		});
		
 		$(document).on('click','.input_check',function(){
 			if($('input[class=input_check]:checked').length==$('.input_check').length){
 				$('#check_all').prop('checked',true);
 			}else{
 				$('#check_all').prop('checked',false);
 			}
 		});
 		</script>
 		
 		<script>
	    	$(document).on('click','#check_all2',function(){
			if($('#check_all2').is(':checked')){
				$('.input_check2').prop('checked',true);
			}else{
				$('.input_check2').prop('checked',false);
			}
		});
		
 		$(document).on('click','.input_check2',function(){
 			if($('input[class=input_check2]:checked').length==$('.input_check2').length){
 				$('#check_all2').prop('checked',true);
 			}else{
 				$('#check_all2').prop('checked',false);
 			}
 		});
 		</script>
 		
    
</body>
</html>