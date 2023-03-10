<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <jsp:include page="../common/header.jsp" />

            <link 
                rel="stylesheet" 
                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
                integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
                crossorigin="anonymous" 
                referrerpolicy="no-referrer"
            />
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
            <title>SAMSAM AUCTION</title>
        </head>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box !important;
            }

            .enroll-area {
                position: relative;
                width: 70%;
                height: 2300px;
                margin: 0 auto;
                top: 200px;
            }

            .enroll-category {
                width: 100%;
                height: 370px;
            }

            .enroll-area>form>div {
                margin-top: 70px;
            }

            .cate-location {
                width: 100%;
                height: 53px;
                border: 1px solid black;
                display: flex;
                margin-top: 20px;
                margin-left: 10px;
            }

            .cate-location>#cl-1 {
                width: 22%;
                height: 100%;
                background-color: black;
                color: white;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .cate-location>#cl-2 {
                width: 78%;
                height: 100%;
                display: flex;
                align-items: center;
                padding-left: 15px;
            }

            .select-category {
                width: 100%;
                height: 250px;
                margin-top: 20px;

            }

            .select-category>#se-list1,
            #se-list2 {
                width: 20%;
                height: 100%;
                font-size: 16px;
                padding: 10px;
                margin-left: 10px;
            }

            .select-category option {
                margin-bottom: 10px;
            }

            .enroll-item {
                width: 100%;
                height: 1000px;

            }

            .enroll-item>#item-info {
                display: flex;
                justify-content: space-between;
            }

            #item-info>h6 {
                padding-right: 5px;
                padding-top: 10px;
            }

            .item-title {
                border-top: 1px solid gray;
                border-right: 1px solid gray;
                width: 100%;
                height: 150px;
                display: flex;
                margin-top: 20px;
                margin-left: 10px;
            }

            .item-title>.it-2 {
                width: 82%;
                height: 100%;
                padding-left: 15px;
                padding-top: 10px;

            }

            .it-2>input {
                width: 90%;
                height: 25px;
                border: 1px dotted black;
                padding-left: 10px;
            }

            .item-content {
                border: 1px solid gray;
                width: 100%;
                height: 500px;
                display: flex;
                margin-left: 10px;
            }

            .item-content>.ic-2 {
                width: 82%;
                height: 100%;
                padding-left: 15px;
                padding-top: 10px;
            }

            .ic-2>#ic-text {
                width: 98%;
                height: 425px;
            }

            .item-image {
                border-right: 1px solid gray;
                border-bottom: 1px solid gray;
                border-left: 1px solid gray;
                width: 100%;
                height: 300px;
                display: flex;
                margin-left: 10px;
            }

            .item-image>.ii-2 {
                width: 82%;
                height: 100%;
                padding-left: 15px;
                padding-top: 10px;
            }

            .ii-2>.upload-box {
                width: 98%;
                height: 230px;
            }
			 .drag-area{
		        border: 2px dotted black;
		        height:100%;
		    }
		    .drag-area .icon{
		        font-size: 50px;
		    }
		    .drag-area .drag-drop{
		        font-size: 25px;
		        font-weight: bold;
		        color:darkolivegreen;
		        margin-bottom: 20px;
		    }
		    .drag-area .drag-info{
		        width: 100%;
		        font-size: 14px;
		        color: gray;
		        display: flex;
		        justify-content: center;
		    }
		    .drag-area.active {
		        border: 2px solid darkolivegreen;
		        background-color:lightgrey
		    }
            .upload-files{
                width: 98%;
                height: 60px;
                display: flex;
                align-items: center;
            }
            .upload-label{
                width: 90px;
                height: 30px;
                background-color: gray;
                color: white;
                border-radius: 3px;
                display: flex;
                justify-content: center;
                align-items: center;
                font-weight: bold;
                cursor: pointer;
            }
              
		    .before-drop{
		        display: flex;
		        height: 90%;
		        align-items: center;
		        justify-content: center;
		        flex-direction: column;
		        padding-top: 30px;
		    }
		    .drop-area{
		        width: 100%;
		        height: 90%;
		        display: none;
		        align-items: center;
		        justify-content:left;
                padding-left: 45px;
		        
		    }
		    .drop-img{
		        width: 120px;
		        height: 150px;
                border: 1px solid black;
                position: relative;
                list-style: none;
                margin: 0 60px 20px 60px;
               

		    }
		    .drop-img img {
		        width: 100%;
		        height: 100%;
		        object-fit: cover ;
		    }
            .drop-img > div{
                width: 100%;
                display: flex;
                align-items: center;
                text-align: center;            
                
            }
            .delete-img{
                width: 18px;
                height: 18px;
                font-size: 20px;
                line-height: 10px;
                position:absolute;
                top: 0;
                right: 0;
                background-color: black;
                color: white;
                display: inline-block;
                text-align: center;
                cursor: pointer;
            }     
			.progress-name{
                font-size: 13px;
                width: 100%;
            
            }

            .enroll-bid {
                width: 100%;
                height: 250px;
            }

            .start-price {
                width: 100%;
                height: 50px;
                border: 1px solid gray;
                display: flex;
                margin-left: 10px;
                margin-top: 20px;

            }

            .start-price>.sp-2 {
                width: 82%;
                height: 100%;
                display: flex;
                align-items: center;
                padding-left: 15px;
            }

            .sp-2>input {
                width: 100px;
                height: 30px;
                border: 1px dotted black;
                padding-left: 15px;
                font-size: 16px;
                font-weight: bold;
            }
            .wish-price {
                width: 100%;
                height: 50px;
                border-left: 1px solid gray;
                border-bottom: 1px solid gray;
                border-right: 1px solid gray;
                display: flex;
                margin-left: 10px;

            }

            .wish-price>.wp-2 {
                width: 82%;
                height: 100%;
                display: flex;
                align-items: center;
                padding-left: 5px;
                font-weight: bold;
            }
            
            .wp-2 > input {
                height: 30px;
                border: 1px dotted rgb(5, 4, 4);
                margin-right: 5px;
                margin-left: 10px;
                font-size: 16px;
                font-weight: bold;
            }
            .wp-2 >div>input {
                width: 100px;
                height: 30px;
                border: 1px dotted black;
                margin-right: 5px;
                margin-left: 10px;
                padding-left: 15px;
                font-size: 16px;
                font-weight: bold;
            }
        
            

            .bid-date {
                width: 100%;
                height: 50px;
                border-left: 1px solid gray;
                border-right: 1px solid gray;
                border-bottom: 1px solid gray;
                display: flex;
                margin-left: 10px;

            }

            .bid-date>.bd-2 {
                width: 82%;
                height: 100%;
                display: flex;
                align-items: center;
                padding-left: 15px;
                font-weight: bold;
            }

            .bd-2>select {
                width: 100px;
                height: 30px;
                border: 1px dotted black;
                margin-right: 5px;
                padding-left: 22px;
                font-size: 16px;
                font-weight: bold;
            }
            .bd-2>span{
                padding-left: 20px;
                font-size: 14px;
                color: gray;
            }

            .enroll-shipping {
                width: 100%;
                height: 150px;
            }

            .enroll-shipping>.shipping-type {
                width: 100%;
                height: 50px;
                border: 1px solid gray;
                display: flex;
                margin-left: 10px;
                margin-top: 20px;
            }

            .shipping-type>.st-2 {
                width: 82%;
                height: 100%;
                display: flex;
                align-items: center;
                padding-left: 5px;
                font-weight: bold;
            }

            .st-2>input {
                height: 30px;
                border: 1px dotted black;
                margin-right: 5px;
                margin-left: 10px;
                padding-left: 22px;
                font-size: 16px;
                font-weight: bold;
            }

            .shipping-price {
                width: 100%;
                height: 50px;
                border-left: 1px solid gray;
                border-right: 1px solid gray;
                border-bottom: 1px solid gray;
                display: flex;
                margin-left: 10px;

            }

            .shipping-price>.shp-2 {
                width: 82%;
                height: 100%;
                display: flex;
                align-items: center;
                padding-left: 5px;
                font-weight: bold;
            }

            .shp-2>div>input {
                width: 100px;
                height: 30px;
                border: 1px dotted black;
                margin-right: 5px;
                margin-left: 10px;
                padding-left: 22px;
                font-size: 16px;
                font-weight: bold;
            }

            .btn-area {
                width: 100%;
                display: flex;
                justify-content: center;
                margin-top: 30px;
            }

            .btn-area>button {
                width: 15%;
                height: 45px;
                margin-right: 5px;
                font-size: 16px;
                border-radius: 3px;
                cursor: pointer;
            }

            .lastok {
                background-color: black;
                color: white;
            }
            button[type=button]{
                border: 1px solid black;
            }

            .black-area {
                background-color: black;
                color: white;
                width: 18%;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            /* input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
                -webkit-appearance: none;
            } */
            .kor-no{
                padding-left: 20px;
                font-size: 15px;
                font-weight: bold;
            }

            
        </style>

        <body>
            <div class="enroll-area">

                <h1>????????? ????????????</h1>

                <form action="insertProduct.pr" id="insertForm" method="post" enctype="multipart/form-data">
                    <input type="hidden" value="${loginUser.userId}"name="sellId">
                    <div class="enroll-category">
                        <h3>??? ???????????? ??????</h3>
                        <div class="cate-location">
                            <div id="cl-1">????????? ???????????? ??????</div>
                            <div id="cl-2"></div>
                        </div>
                        <div class="select-category">
                            <select id="se-list1" size="5">
                                <option value="none" disabled>- ??????????????? -</option>
                                <option value="100">??????</option>
                                <option value="200">???????????????</option>
                                <option value="300">?????????</option>
                                <option value="900">??????</option>
                              
                            </select>
                            <select name="proCateNo" id="se-list2" size="5" required>
                                <option value="none" disabled>- ??????????????? -</option>
                            </select>
                        </div>
                    </div>
                    <script>
                        let list2 = $('#se-list2');
                        $('#se-list1').on("change",function(){
                            $('#cl-2').text($(this).find("option:selected").text()+" > ");
                            $.ajax({
                            url : "selectCateList.pr",
                            data : {
                                categoryNo: $(this).find("option:selected").val()
                                
                            },
                            success : function(result){
                        
                                let opt = "";
                                for(var i=0; i<result.length; i++){
                                    opt += '<option value="'+result[i].cateNo+'">'+result[i].cateName+'</option>';
                                }
                                console.log(list2.children());
                                list2.children().remove();
		
                                list2.append("<option value='none' disabled>- ??????????????? -</option>");
                                $(opt).appendTo('#se-list2');
                            },
                            error : function(){
                                console.log("ajax????????????")
                            }
    					
    				        })	
                        });
                        $('#se-list2').on("change",function(){
                            let loc1 = ($('#se-list1')).find("option:selected").text();
                            let loc2 = $(this).find("option:selected").text();
                           
                            $('#cl-2').text(loc1+" > "+loc2);
                        });

                    </script>
                    <div class="enroll-item">
                        <div id="item-info">
                            <h3>??? ????????????</h3>
                            <h6>* ????????? ?????? ???????????????.</h6>
                        </div>
                        <div class="item-title">
                            <div class="it-1 black-area">
                                * ????????????
                            </div>
                            <div class="it-2">
                                <input type="text" name="proTitle" required placeholder="   ?????? ?????? ?????? ??? ?????? ??????????????? ????????? ?????????!">
                            </div>
                        </div>
                        <div class="item-content">
                            <div class="ic-1 black-area">
                                * ????????????
                            </div>
                            <div class="ic-2">
                                <textarea name="proContent" required id="ic-text" cols="30" rows="10"></textarea>
                            </div>
                        </div>
                        <div class="item-image">
		                    <div class="ii-1 black-area">
		                        * ???????????????
		                    </div>
		                    <div class="ii-2">
		                        <div class="upload-box">
		                            <div class="drag-area">
		                                <div class="before-drop">
		                                    <h3>Upload your file</h3>
		                                    <div class="icon">
		                                        <i class="fas fa-images"></i>
		                                    </div>
		                                    <span class="drag-drop">Drag & Drop</span>
		                                </div>
		                                <ul class="drop-area">
		                             
		                                </ul>
		                                <span class="drag-info">
		                                	   ?????????????????? : JPG, JPEG, PNG / 4????????? ?????? ???????????????.
		                               		  ????????? ??????????????? ????????? ????????? 1??? ???????????? 10MB ????????? ??????????????? ?????????.
		                                </span>
                                       
		                            </div>
                                    
		                        </div>
                                <div class="upload-files">
                                    <input type="file" name="upfile" id="upfile0" onchange="loadImg(this);" style="display: none;">
                                    <input type="file" name="upfile" id="upfile1" onchange="loadImg(this);" style="display: none;">
                                    <input type="file" name="upfile" id="upfile2" onchange="loadImg(this);" style="display: none;">
                                    <input type="file" name="upfile" id="upfile3" onchange="loadImg(this);" style="display: none;">
                                    
                                    
                                    <label for="upfile0" class="upload-label" onclick="check4();">????????????</label>

                                </div>
		                    </div>
               			 </div>
                    </div>
                
                 
					 	
					 <script>
                        
		                // //??????????????????
		                const dragArea = document.querySelector('.drag-area');
		                const dragText = document.querySelector('.drag-drop');
		                const dropArea = document.querySelector('.drop-area');
		                const beforeDrop = document.querySelector('.before-drop');
                        
                        
		                let file;
		                let num = 0;
                        let num2= 0;
                   
		                //when file is inside the drag area
		                dragArea.addEventListener('dragover',(event) => {
		                    event.preventDefault();
		                    dragText.textContent = 'Upload ???????????????????';
		                    dragArea.classList.add('active');
		                    
		                });
		                //when file leaces the drag area
		                dragArea.addEventListener('dragleave', () => {
		                    dragText.textContent ='Drag & Drop';
		                    dragArea.classList.remove('active');
		                });
                        $(document).on("dragover drop", function(e) {
                            e.preventDefault();  // allow dropping and don't navigate to file on drop
                        }).on("drop", function(e) {
                            for(var i=0; i<4; i++){
                                if($('#upfile'+i).val()==""){
                                    num2=i;

                                    break;
                                }
                            }
                                $("input[id='upfile"+num2+"']")
                                .prop("files", e.originalEvent.dataTransfer.files)  // put files into element
                                .closest("form")
                         
                          
                            console.log("??? ????????? ?????????"+num);
                                
                        });
		                //when the file is dropped in the drag area
		                dragArea.addEventListener('drop',(event) => {
		                    event.preventDefault();
                            
		                    file = event.dataTransfer;
                            
                           
                            if(num<4){
                                loadImg(file);
                      
                            }else{
                                alert('????????? 4????????? ?????? ???????????????.');
                                dragArea.classList.remove('active');
                            }
		                });
                     
                        function loadImg(inputfile){

                            console.log(num)
                            if(num<4){
                                file = inputfile.files[0];
                                displayFile();
                            }

                        }      
                        function check4(){
                            for(var i=0; i<4; i++){
                                        if($('#upfile'+i).val()==""){

                                            num2= i
                                            break;
                                        }
                                    }

                            if(num>3){
                                alert('????????? 4????????? ?????? ???????????????.');
                            }
                        }
                     
		                
		                function displayFile(){
		                    let fileType = file.type;
                            let fileSize = file.size;
                            let fileName = file.name;
                     
                            

		                    let validExtensions = ['image/jpeg', 'image/jpg', 'image/png'];
		                    
                            if(validExtensions.includes(fileType)){
		                        if(fileSize<10485760){

                                    let fileReader = new FileReader();
                                    let fileKB = Math.floor(fileSize /1000); 
                                 
                                    let str = '<li class="drop-img">';
                                    
                                        fileReader.onload = () => {
                                            let fileURL = fileReader.result;
                                            str += '<img src="'+fileURL+'" alt="??????">';
                                            str += '<div>';
                                            str += '<span class="progress-name">'+fileName+' '+fileKB+'KB'+'</span>'
                                            str += '</div>';
                                            str += '<span class="delete-img" onclick="delImg(this,'+num2+');">x</span>';
                                            str += '</li>';
                                            $(str).appendTo(dropArea);
                                            num++
                                            for(var i=0; i<4; i++){
                                                if($('#upfile'+i).val()==""){

                                                    $('.upload-label').attr("for","upfile"+i); 
                                                    break; 
                                                }
                                            }
                                
                                        }
                                        fileReader.readAsDataURL(file);
                         
                      
                                        dragArea.classList.remove('active');
                                        beforeDrop.style.display='none';
                                        dropArea.style.display='flex';
                             
                                    }else{
                                        alert('????????? 10MB????????? ????????? ?????? ???????????????.');
		                                dragArea.classList.remove('active');
                                    }
		                    }else{
		                         alert('??? ????????? Image ????????? ????????????.');
		                         dragArea.classList.remove('active');
		                    }

		                }
                        
                        function delImg(inputfile,index){
                           
                            $(inputfile).parent('li').remove();
                          
                        
                            $('#upfile'+index).empty();
                            $('#upfile'+index).val("");
                            console.log($('#upfile'+index)  );
                            for(var i=0; i<4; i++){
                                if($('#upfile'+i).val()==""){

                                    $('.upload-label').attr("for","upfile"+i); 
                                    break; 
                                }
                            }    
                            num--;
                        }

        
		            </script> 
                    

                



                    <div class="enroll-bid">
                        <h3>??? ????????????</h3>
                        <div class="start-price">
                            <div class="sp-1 black-area">
                                * ?????????
                            </div>
                            <div class="sp-2">
                                <input type="text" class="price1" required name="proPrice" maxlength="8" oninput="numberMaxLength(this);">??? 
                                <span class="kor-no" id="ptext0"></span>
                            </div>
                        </div>
                   
                        <div class="wish-price">
                            <div class="wp-1 black-area">
                                * ????????????
                            </div>
                            <div class="wp-2">
                                <input type="radio" name="wish" id="wp-yes" checked><span> ??????</span>
                                <input type="radio" name="wish" id="wp-no" ><span> ?????????</span>

                                <div class="wp-price">
                                    <input type="text" class="price2" name="wishPrice" required maxlength="8" oninput="numberMaxLength(this);">???
                                    <span class="kor-no" id="ptext1"></span>
                                </div>
                            </div>
                        </div>
                        <script>
                            var ak = 0;

                            $('.price1').on("focusin",function(){
                                
                               
                                    if($('#upfile0').val()==""&&$('#upfile1').val()==""&&$('#upfile2').val()==""&&$('#upfile3').val()==""&&ak==0){
                                        alert('???????????? 1????????? ??????????????????!');
                                        ak=1;
                                        setTimeout(function(){
                                            ak=0;
                                            $('.price1').blur();
                                        })
                                    }
                           

                             
                               
                                    
                            });
                                
                            $('#wp-yes').on("click",function(){
                         
                                $('.wp-price').css("display","block");
                                $('.price2').val("");
                                $('.price2').attr('required',true);
                                console.log($('.price2'));

                            });
                            $('#wp-no').on("click",function(){
                               console.log("111");
                                $('.wp-price').css("display","none");
                                $('.price2').attr('required',false);
                                $('.price2').val("0");
                                $('#ptext1').empty();
                            });
                            $('.price2').on("focusout",function(){
                                var price1 = parseInt($('.price1').val().replaceAll(',',''));
                                var price2 = parseInt($('.price2').val().replaceAll(',',''));
                                console.log(price1);
                                console.log(price2);
                                if((price2<=price1)&&(price1!=0)){
                                    alert('?????????????????? ??????????????? ?????? ????????? ??? ????????????.');
                                    console.log($('.price2').val());
                                    console.log($('.price1').val());
                                    $('.price2').val("");
                                    $('#ptext1').empty();
                                    setTimeout(function(){
                                        $('.price2').focus();
                                    });
                                }
                             
                            })
                            $('.price1').on("focusout",function(){
                                var price1 = parseInt($('.price1').val().replaceAll(',',''));
                                var price2 = parseInt($('.price2').val().replaceAll(',',''));
                           
                                if((price1>=price2)&&(price2!=0)){
                                    alert('???????????? ????????????????????? ?????? ????????? ??? ????????????.');
                                    $('.price1').val("");
                                    $('#ptext0').empty();
                                    setTimeout(function(){
                                        $('.price1').focus();
                                    });
                                }
                            })
                                    
                        </script>
                        <div class="bid-date">
                            <div class="bd-1 black-area">
                                * ????????????
                            </div>
                            <div class="bd-2">
                                <select name="bidDate" id="bidDate">
                                    <option value="3">3???</option>
                                    <option value="4">4???</option>
                                    <option value="5">5???</option>
                                    <option value="6">6???</option>
                                    <option value="7">7???</option>
                                    <option value="8">8???</option>
                                    <option value="9">9???</option>
                                    <option value="10">10???</option>
                                </select>
                                <span>?????????????????? ??? ???????????? ???????????????. ???????????? ??? 5??? ????????? ????????? ????????????, ??? ???????????? ?????? ???????????????, ?????? ?????? ???????????????!</span>
                            </div>
                        </div>
                    </div>
                    <div class="enroll-shipping">
                        <h3>??? ????????????</h3>
                        <div class="shipping-type">
                            <div class="st-1 black-area">
                                * ????????????
                            </div>
                            <div class="st-2">
                                <input type="radio" name="tradeCateNo" value="1" id="stype-1" checked><span> ??????</span>
                                <input type="radio" name="tradeCateNo" value="2" id="stype-2" ><span> ?????????</span>
                            </div>
                        </div>
                        <div class="shipping-price">
                            <div class="shp-1 black-area">
                                * ????????????
                            </div>
                            <div class="shp-2">
                                <div class="shp-price">
                                    <input type="text" class="price3" name="postPrice" required maxlength="8" oninput="numberMaxLength(this);">???
                                    <span class="kor-no" id="ptext2"></span>
                                </div>
                            </div>
                        </div>
                        <script>
                            $('#stype-1').on("click",function(){
                                console.log("111");
                                $('.shp-price').css("display","block");
                                $('.price3').attr('required',true);
                                $('.price3').val("");

                            });
                            $('#stype-2').on("click",function(){
                                $('.shp-price').css("display","none");
                                $('.price3').val("0");
                                $('#ptext2').empty();
                            });
                        </script>
                      
                    </div>
                    <span class="btn-area">
                        <button type="submit" class="lastok">??????</button>
                        <button type="button" onclick="location.href='${pageContext.request.contextPath }'">??????</button>
                    </span>
                    <script>
                         
                          
                          $(':submit').on('click',function(){
                           
                    
                              $('.price1').val($('.price1').val().replaceAll(',',''));
                              $('.price2').val($('.price2').val().replaceAll(',',''));
                              $('.price3').val($('.price3').val().replaceAll(',',''));
                              console.log($('.price1'));
                              console.log($('.price2'));
                              console.log($('.price3'));

                             
                           
                        })
                    </script>
                
                <script>
                   
                    //input[type=number] ????????? ??????
                    function numberMaxLength(e){
                        if(e.value.length > e.maxLength){
                            e.value = e.value.slice(0, e.maxLength);
                        }
                        if(e.value.length==1){
                            e.value = e.value.replace(/[0]/g,'');
                        }
                        e.value = e.value.replace(/[^0-9.]/g, '').replace(/(.*)\./g, '$1');
                        e.value = e.value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                    }
                    
                    //?????? ??????
                    $('.price1').on("keyup",function(){
                        let price =$('.price1').val().replace(/[^\d]+/g, "");
                        let p1 = price.substr(price.length-4);
                        let p2 = price.substr(0,price.length-4);
                        if(price.length>4){
                            $(this).next().text(p2+"??? "+p1+"???");
                        }else{
                            $(this).next().text(price+"???");
                        }
                    });
                    $('.price2').on("keyup",function(){
                        let price =$('.price2').val().replace(/[^\d]+/g, "");
                        let p1 = price.substr(price.length-4);
                        let p2 = price.substr(0,price.length-4);
                        if(price.length>4){
                            $(this).next().text(p2+"??? "+p1+"???");
                        }else{
                            $(this).next().text(price+"???");
                        }
                    });
                    $('.price3').on("keyup",function(){
                        let price =$('.price3').val().replace(/[^\d]+/g, "");
                        let p1 = price.substr(price.length-4);
                        let p2 = price.substr(0,price.length-4);
                        if(price.length>4){
                            $(this).next().text(p2+"??? "+p1+"???");
                        }else{
                            $(this).next().text(price+"???");
                        }
                    });
                    
                </script>
                </form>
            </div>


            <jsp:include page="../common/footer.jsp" />
        </body>

        </html>
        
 