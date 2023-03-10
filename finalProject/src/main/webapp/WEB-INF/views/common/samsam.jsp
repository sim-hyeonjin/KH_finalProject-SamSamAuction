<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/ee429cabba.js" crossorigin="anonymous"></script>
    <title>Document</title>
    <style>
    div{
        box-sizing: border-box;
        /*border: 1px solid red;*/
    }
    .wrap{
        width: 1100px;
        height: 1300px;
        margin: auto;
        
    }
    .wrap>div{ 
        width: 100%;
    }
    /*#header{
        height: 10%;
    }*/
    #content{
        height: 70%; 
    }
    #footer{
        height: 10%;
    }
    #image{
        width: 1090px;
        height: 306px;
    }
    #content>div{
        height: 100%;
        float: left;
    }
    #content1{
        text-align: center;

    }
    #content2{
        height: 100px;
        border-bottom: 1px solid gray;
    }
    #content3{
        height: 200px;
        padding-top: 15px;
    }
    #content_3_1{
        float: left;
        width:20%;
        text-align: center;
        padding-top: 35px;
        height: 180px;
        border-bottom: 1px solid gray;
    }
    #content_3_2{
        float: left;
        width: 80%;
        height: 180px;
        border-bottom: 1px solid gray;
    }
    #content4{
        height: 200px;
        padding-top: 15px;
    }
    #content_4_1{
        float: left;
        width:20%;
        text-align: center;
        padding-top: 35px;
        height: 180px;
        border-bottom: 1px solid gray;
    }
    #content_4_2{
        float: left;
        width: 80%;
        height: 180px;
        border-bottom: 1px solid gray;
    }
    #content5{
        height: 210px;
        padding-top: 15px;
    }
    #content_5_1{
        float: left;
        width:20%;
        text-align: center;
        padding-top: 35px;
        height: 200px;
        border-bottom: 1px solid gray;
    }
    #content_5_2{
        float: left;
        width: 80%;
        height: 200px;
        border-bottom: 1px solid gray;
    }
    #content6{
        padding-top: 20px;
        height: 200px;
    }
    #content_6_1{
        float: left;
        width:20%;
        text-align: center;
        padding-top: 35px;
        height: 180px;
        border-bottom: 1px solid gray;
    }
    #content_6_2{
        float: left;
        width: 80%;
        height: 180px;
        border-bottom: 1px solid gray;
    }
    #top_icon1{
        width: 50px;
        height: 108px;
        
    }
    #btn{
        border-radius: 4px;
        border: 0px;
        height: 50px;
        background-color: black;
        color: white;
        width: 180px;
        height: 30px;
    }
    
    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <div class="wrap">
        <div id="header">
        </div>
        <div id="content">
                <form action="">
                    <div id="content1">
                        <img src="resources/auction.jpg" alt="?????????" id="image">
                    </div>
                    <div id="content2">
                        
                    </div>
                    <div id="content3">
                        <div id="content_3_1">
                            <i class="fa-solid fa-magnifying-glass fa-4x" id="top_icon1"></i>
                        </div>
                        <div id="content_3_2">
                            <span style="font-weight: 550; font-size: 25px;">????????????</span> <br><br>
                            <span style="color: gray; font-weight: 400; font-size: 15px;">&nbsp&nbsp - ????????? ?????? ???????????? ????????? ????????? ???????????????. <br>
                                &nbsp&nbsp - ??????????????? ????????? ??????????????? ?????? ???????????? ???????????? ??? ????????????. </span><br><br>
                            <button type="button" id="btn" onclick="location.href='enrollForm.me'">???????????? ???????????? ??????</button>
                        </div> 
                    </div>
                    <div id="content4">
                        <div id="content_4_1">
                            <i class="fa-regular fa-calendar-minus fa-4x"></i>
                        </div>
                        <div id="content_4_2">
                            <span style="font-weight: 550; font-size: 25px;">??????</span> <br><br>
                            <span style="color: gray; font-weight: 400; font-size: 15px;">&nbsp&nbsp - ????????? ???????????? ???????????? ????????? ??????, ???????????????, ????????????, ??????????????? ????????? ????????? ????????? ????????? ?????? ???????????????. <br>
                                &nbsp&nbsp - ????????? ????????? ????????? ????????????, ??????????????? ??????????????? ????????? ???????????????. <br>
                                &nbsp&nbsp - ????????? ????????? ????????? ???????????? ????????? ??? ????????????.</span>
                        </div>
                    </div>
                    <div id="content5">
                        <div id="content_5_1">
                            <i class="fa-regular fa-circle-check fa-4x"></i>
                        </div>
                        <div id="content_5_2">
                            <span style="font-weight: 550; font-size: 25px;">??????</span> <br><br>
                            <span style="color: gray; font-weight: 400; font-size: 15px;">&nbsp&nbsp - ???????????? ????????? ????????? ?????? ??????????????? ?????? ????????? ????????????, ?????? ?????? ?????? ?????? ?????? ?????? ????????? ?????????. <br>
                                &nbsp&nbsp - ????????? ????????? ??? ????????????. ???????????? ??????????????????. </span><br><br>
                            <div style="color: gray; background-color: lightgray; font-weight: 400; font-size: 15px; width: 800px; margin-left: 20px;">
                                &nbsp- ???????????? SAMSAM??? ????????? ????????? ?????? ?????????????????? ????????? ??????????????????. ?????? ???????????? ??????????????? ???????????? &nbsp&nbsp ??? ??????????????? ????????????.<br>
                                &nbsp- ????????? ??????????????? ????????? ?????? ?????? ???????????? ??? ???????????????, SAMSAM??? ????????? ?????? ????????????.
                            </div>
                        </div>
                    </div>
                    <div id="content6">
                        <div id="content_6_1">
                            <i class="fa-regular fa-lightbulb fa-4x"></i>
                        </div>
                        <div id="content_6_2">
                            <span style="font-weight: 550; font-size: 25px;">??????</span> <br><br>
                            <span style="color: gray; font-weight: 400; font-size: 15px;">&nbsp&nbsp - ?????? ?????? ??? ???????????? ????????? ??????????????? ??????????????? ???????????????. <br>
                                &nbsp&nbsp - ????????? ???????????? ????????? ???????????? ?????? ??????????????? ????????? ???????????????. <br>
                                &nbsp&nbsp - ???????????? ?????? ???????????? ???????????? ?????? ?????? ???????????? ?????? ???????????? ????????? ???????????????.<br> 
                                &nbsp&nbsp - ?????? ?????? ??? ???????????? ????????? ??? ????????? ?????? ?????? ??? ?????? ????????? ??? ??? ????????????.
                            </span>
                        </div>
                    </div>
                </form>
        </div>
       
    </div>  
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>