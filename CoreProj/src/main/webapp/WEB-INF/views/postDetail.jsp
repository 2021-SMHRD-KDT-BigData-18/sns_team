<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <script src="assets/js/bootstrap.bundle.js"></script>
    <script src="assets/js/jquery-3.7.0.min.js"></script>
    <style> 
    	@font-face {
                font-family: 'omyu_pretty';
                src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
                font-weight: normal;
                font-style: normal;
        }
        #backgroundArea {
            min-height: 100vh;
            display: flex;
            justify-content: space-between;
            /*background-color: rgb(243, 243, 229);*/
            background-color: #F7F7F7;
        }
       /* #backgroundArea {
            @font-face {
                font-family: 'omyu_pretty';
                src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
                font-weight: normal;
                font-style: normal;
            }
            min-height: 100vh;
            display: flex;
            justify-content: space-between;
            background-color: rgb(243, 243, 229);
        }
        */

        #leftPage {
            width: 30%;
            display: flex;
            justify-content: center;
            /*background-color: beige(7, 160, 7);*/
        }


        #centerPage {
            display: flex;
            flex-direction: column;
            width: 40%;
            align-items: center;
            /*background-color: rgb(235, 207, 138);*/
            background-color: #FBF8F1;
        }

        * {
            font-family: 'omyu_pretty';
            /*background-color: rgb(243, 243, 229);*/
        }

        #rightPage {
            display: flex;
            flex-direction: column;
            width: 30%;
            border: 0px solid black;
            position: relative;
            align-items: center;
        }

        .nav {
            width: 200px;
            position: fixed;
            margin-top: 15%;
            /*background-color: beige(7, 160, 7);*/
            align-items: flex-end;
            line-height: 1.5;
        }

        .btn-primary {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
            border-color: green;
        }

        #profileCard {
            margin: 10px;
            width: 450px;
        }

        .navbar {
            display: flex;
            margin: 10px;
            flex-direction: column;
            justify-content: space-between;
            position: fixed;
        }

        .postList {
            margin-top: 60px;
            width: 90%;
        }

        .postCard {
            border-radius: 10px;
            background-color: white;
            margin-bottom: 10px;
        }

        .postCardImg {
            object-fit: cover;
            border-radius: 10px;
            width: 100%;
        }

    

        #btnPost {
            position: fixed;
            top: 70%;
        }

        .modal-body>span {
            white-space: pre-wrap;
        }

        .footer-menu {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding-bottom: 10px;
        }

        /* .btn-primary {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
        } */

        #profileCard {
            margin: 50px;
            width: 250px;
        }

        .navbar {
            display: flex;
            margin: 10px;
            flex-direction: column;
            justify-content: space-between;
        }

        .postList {
            margin-top: 60px;
            width: 90%;
        }

        .postCard {
            border-radius: 10px;
            /*background-color: white;*/
            margin-bottom: 10px;
            /*background-color: rgb(243, 243, 229);*/
        }

        .postCardImg {
            object-fit: cover;
            border-radius: 10px;
            width: 100%;
        }



        #btnPost {
            position: fixed;
            top: 70%;
            /* margin-left: 5%; */
            background-color: rgba(255, 255, 255, 0.849);
        }
        .modal-body>span {
            white-space: pre-wrap;
        }

        .footer-menu {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding-bottom: 10px;
        }

        .img {
            display: flex;

            position: fixed;

        }

        .nav-item {
            margin-top: 30%;

        }

        hr {
            /*background-color: rgb(243, 243, 229);*/
        }

        #cmt_list {
            list-style: none;
        }
        #cmtinput{
            width: 82%;
            border-radius: 10px;
            margin-left: 5px;
        }
        .btn {
            font-size: 20px;
            padding: 10px 15px;
            /* border-radius: 10px; */
            border: 0;
            /* border: 3px solid burlywood; */
            /* background-color: rgb(238, 238, 186); */
            color: #703c3c;
            text-transform: uppercase;
            /* letter-spacing: 5px; */
            font-weight: bold;
            position: relative;
            transition: all 0.4s;
            overflow: hidden;
        }

        .btn:focus {
            outline: none;
        }

        .btn::before {
            content: "";
            position: absolute;
            height: 50%;
            width: 50%;
            /* background-color: green; */
            top: 50%;
            left: 0;
            transition: all 0.4s;
            z-index: -1;
        }

        .btn:hover::before {
            transform: translateY(-100%);
        }

        
        .btn:hover {
        color: rgb(0, 78, 52);
        }



        .text_input {
        background: #eee;
        padding: 15px;
        }
        .text_input input[type="text"] {
            background: white;
            width: 90%;
            border-radius: 4px;
            padding: 10px 0;
            border: 0;
            text-align: center;
        }
        #cmt_list{
            /*background: rgb(243, 243, 229);*/
            height: 200px;
        }
     
         
    </style>

</head>

<body>

    <div id="backgroundArea">
        <div id="leftPage">
            <div class="navbar">
                <a class="nav-link active" aria-current="page" href="goMain.do"><img class="img" src="./image/지식창고_로고.png" width="300"></a>

                <ul class="nav flex-column">
                    <ul class="nav-item">
                        <a class="nav-link active" aria-current="page" href="goMain.do">Home</a>
                    </ul>
                    <ul class="nav-item">
                        <a class="nav-link" href="goMypage.do?u_id=${user.getU_ID()}">My Page</a>
                    </ul>
                    <ul class="nav-item">
                        <a class="nav-link" href="goChatList.do">Chat</a>
                    </ul>
                    <button id="btn btnPost" onclick="location.href='goWritePost.do'">글쓰기</button>
                </ul>
            </div>

        </div>
        <div id="centerPage" class=" border-start border-end border-1">
            <!-- <div class="btnchange">
            </div> -->
            <div class="postList">
                	<c:if test="${user.getU_ID() == requestScope.post.getU_ID()}">
						<a href="#" class="btn btn_change" style="margin-left: 560px; margin-top: 50px;">✎</a>
                		<a href="#" class="btn btn_change" >✘</a> 
					</c:if>
                <div class="postCard">
                    
                    <div class="card-body">
                        <p id="post_id" style="display: none;">${requestScope.post.getP_SEQ()}</p>
                        <h5 class="card-title">${requestScope.post.getP_TITLE()}</h5>
                        <p class="card-text">${requestScope.post.getU_ID()}</p>
                        <p class="card-text">${requestScope.post.getP_CONTENT()}</p>
						                 
                    </div>
                    <img src="http://218.157.19.25:8081/jisik/P_FILE/${requestScope.post.getP_FILE()}"
                        class="postCardImg" alt="프로필 이미지">

                    <div class="card-footer">
                        <p></p>
                        <div class="footer-menu">
                            <button class="btn btn_like">🌱</button>
                            <p>${requestScope.post.getP_VIEWS()+1}회</p>	   
                            <button class="btn btn_bookmark">북마크</button>
                            
                        <a href="#" id="urlCopy" class="btn_urlCopy" title="새창" onclick="clip(); return false;">링크 공유하기</a>


                        </div>
                        <hr>
                        <div id="cmtInputArea">
                            <div class="text_input">
                                <input type="text" placeholder="댓글 입력" id="cmtInput" name="cmtInput">
                                <button id="btn_cmt" style="border-radius: 5px; width: 90px; height: 40px; margin-right: 5px;">댓글 달기</button>
                            </div>
                            <!-- <input type="text" id="cmtInput" name="cmtInput"> -->
                        </div>
                        <div id="cmt_list"></div>
                    </div>
                </div>
            </div>
        </div>

        <div id="rightPage">
            <div style="margin: 30px; position: fixed; max-width: 450px;">
                <div id="profileCard" class="card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                        style="height: 200px; object-fit: none;" class="card-img-top" alt="프로필 이미지">
                    <div class="card-body">
                        <h5 class="card-title" style="margin-left: 15%;">${sessionScope.user.getU_ID()}</h5>
						<c:if test="${sessionScope.user.getU_ID() != null}">
							<a href="logout.do" class="btn btn-primary" style="margin-left: 8%">로그아웃</a>
						</c:if>
						<c:if test="${sessionScope.user.getU_ID() == null}">
							<a href="goLogin.do" class="btn btn-primary" style="margin-left: 8%">로그인</a>
						</c:if>
                    </div>
                </div>
                <div class="accordion" id="friendList">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="btn_friendList">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#flush-collapseOne" aria-expanded="false"
                                aria-controls="flush-collapseOne">
                                친구목록</button>
                        </h2>
                        <div id="flush-collapseOne" class="accordion-collapse collapse"
                            aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        
            $(document).ready(cmtLoad());
            $(document).ready(listenerOK());
            function cmtLoad() {
            	let p_seq = <%=request.getParameter("p_id")%>;
            	console.log(p_seq);
                $.ajax({
                    url : "loadCmt.do",
                    type : "post",
                    data : {'p_id':p_seq},
                    dataType : "json",
                    success : function(res) {
                        let html='';
                        console.log(res);
                        console.log('dkssud');
                        for(let i=0; i<res.length; i++){
                            rootpath='P_FILE/';
                            html+='<div class="cmt"><div style="display: flex; justify-content: space-between;"><div style="display: flex;"><span class="cmt_id" style="display: none;">';
                            html+=res[i].CMT_SEQ;
                            html+='</span>';
                            html+='<img src="';
                            html+=rootpath+res[i].U_PROFILE_IMG+'"alt="" width="50px">';
                            html+='<div><span class="u_id">'+res[i].U_ID+'</span>';
                            html+='<br><span class="u_nick">'+res[i].U_ID+'</span><br>';
                            html+='<span id="cmt_date">'+res[i].CMT_DT+'</span>';
                            html+='</div></div><button class="btn_cmt_delete">댓 삭제</button>';
                            html+='</div> <div class="cmt_content">';
                            html+=res[i].CMT_CONTENT;
                            html+='</div><hr></div>';
                            
                        }
                        $("#cmt_list").html(html);
                        listenerDelete();
                    },
                    error : function(e) {
                        // 요청이 실패하면 실행될 콜백함수
                        alert("요청 실패!");
                    }
                });
            }
            function listenerDelete() {
                let btn_delete = $('.btn_cmt_delete');
                console.log(btn_delete);
                btn_delete.on('click', delCmt);	
                };
            	
            	
            	
            function delCmt() {
                console.log($(this).prev().children()[0].innerText);
                let cmt_id = $(this).prev().children()[0].innerText;
                $.ajax({
					url:'delCmt.do',
					type:'post',
					data:{"cmt_id":cmt_id},
					success : function(res){
						if(res==1){
	                    alert("삭제 성공!");
	                    cmtLoad();
						}
						else{
							alert("해당 댓글의 작성자가 아닙니다!");
						}
	                    
					},
					error : function(e){
	                     alert("실패!");
	                  }
				});
            };
            
            
            let btn_cmt = $('#btn_cmt');
            btn_cmt.on('click',cmtWrite);
            function cmtWrite() {
            	console.log($('#cmtInput').val());
            	console.log($('#post_id').text());
            	$.ajax({
                    url : "writeCmt.do",
                    type : "post",
                    data : {"p_id":$('#post_id').text(),
                    	"cmt":$('#cmtInput').val()},
                    success : function(res) {
                        console.log("ok");
                        console.log(res);
                        cmtLoad();
                        $('#cmtInput').val("");
                        
                    },
                    error : function(e) {
                        // 요청이 실패하면 실행될 콜백함수
                        alert("요청 실패!");
                    }
                });
            	
            	
			}
           
            function clip(){

                var url = '';    
                var textarea = document.createElement("textarea");  
                
                
                document.body.appendChild(textarea); 
                url = window.document.location.href;  
                textarea.value = url;  
                textarea.select();  
                document.execCommand("copy");   
                document.body.removeChild(textarea); 
                
                alert("URL이 복사되었습니다.")  
            }
    </script>
    <script>
    $(document).ready(friendSelect());
    function friendSelect(){
		$.ajax( {
              url : 'friendSelect.do', 
              type : 'post', 
              data : {}, 
              dataType : "json", 
              success : function(res){
                 console.log('시작');
                 console.log(res);
                 for(let i=0; i<res.length; i++){
                    let html='';
                    rootpath="http://218.157.19.25:8081/jisik/P_FILE/";
                    html+='<div class="accordion-body">';
                 	html+='<img src="'+rootpath+res[i].P_FILE+' alt="프로필 이미지" class="accordion-file>';
                 	html+='<p class="accordion-name">'+res[i].F_ID+'</p>';
                    html+='</div>';
                    $(".accordion-body").append(html);
                 }
              },
              error : function(e){
                 //alert("요청 실패!");
                 let html = '';
                 html+='<a href="goLogin.do">로그인을 해주세요.</a>'
                 $(".accordion-body").append(html);
              }
           } );
     }

    
    </script>

</body>

</html>