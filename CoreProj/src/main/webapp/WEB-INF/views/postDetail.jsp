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
    <link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
   integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
   crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
            position: fixed;
   margin-top: 5%;
   background-color: beige(7, 160, 7);
   line-height: 1.5;
   font-size: 30px;
        }

        .btn-primary {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
            border-color: green;
        }

        #profileCard {
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
            /* color:green;  */
            color:rgb(0, 78, 52); 
            background-color: #83ab85;
            border-color:transparent;
         }
         .btn-primary{
         --bs-btn-border-color:transparent;}



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
     .temp{/*
     width:100px;
     height:100px;*/
     }
     
     i {
   color: rgba(15, 114, 60, 0.829);
   fa-lg;
}
     
     
         
    </style>

</head>

<body>

    <div id="backgroundArea">
        <div id="leftPage">
            <div class="navbar">
                <a class="nav-link active" aria-current="page" href="goMain.do"><img class="img" src="./image/로고새싹누끼.png" width="300"></a>

                <ul class="nav flex-column">
                
                <ul class="nav-item">
                  <a class="nav-link active" aria-current="page" href="goMain.do"
                     style="color: burlywood;"><i class="fa fa-house fa-lg "
                     style="color: rgba(15, 114, 60, 0.829);"></i>&ensp;홈</a>

               </ul>
               <ul class="nav-item">
                  <a class="nav-link" href="goMypage.do?u_id=${user.getU_ID()}"
                     style="color: burlywood;"><i
                     class="fa-regular fa-circle-user fa-lg"
                     style="color: rgba(15, 114, 60, 0.829)"></i>&ensp;마이페이지</a>
               </ul>
               <ul class="nav-item">
                  <a class="nav-link" href="goChatList.do" style="color: burlywood;"><i
                     class="fa-regular fa-comment fa-lg"
                     style="color: rgba(15, 114, 60, 0.829)"></i>&ensp;채팅</a>
               </ul>
               <!-- <ul class="nav-item">
                  <a class="nav-link" href="goChat.do">ChatChatChatChat</a>
               </ul> -->
               <ul class="nav-item">
                  <a class="nav-link" href='goWritePost.do'
                     style="color: burlywood;"><i
                     class="fa-regular fa-pen-to-square fa-lg"
                     style="color: rgba(15, 114, 60, 0.829)"></i>&ensp;글쓰기</a>
               </ul>
               <ul class="nav-item">
                  <a class="nav-link" href='goSavePost.do' style="color: burlywood;"><i
                     class="fa-solid fa-folder fa-lg"
                     style="color: rgba(15, 114, 60, 0.829)"></i>&ensp;저장글</a>
               </ul>
                
                
                <!-- 
                    <ul class="nav-item">
                        <a class="nav-link active" aria-current="page" href="goMain.do">Home</a>
                    </ul>
                    <ul class="nav-item">
                        <a class="nav-link" href="goMypage.do?u_id=${sessionScope.user.getU_ID()}">My Page</a>
                    </ul>
                    <ul class="nav-item">
                        <a class="nav-link" href="goChatList.do">Chat</a>
                    </ul>
                    <button id="btn btnPost" onclick="location.href='goWritePost.do'">글쓰기</button> -->
                </ul>
            </div>

        </div>
        <div id="centerPage" class=" border-start border-end border-1">
            <!-- <div class="btnchange">
            </div> -->
            <div class="postList">
                	<c:if test="${user.getU_ID() == requestScope.post.getU_ID()}">
                	<div style="display:flex; justify-content:right;">
                	<div class="temp"></div>
                      <a href="goWritePostUpdate.do?p_id=${requestScope.post.getP_SEQ()}" class="btn btn_change">
                         <span class="material-symbols-outlined" style="margin-top: 20px;">edit_square</span>&nbsp;수정
                      </a>
                      <a href="" class="btn btn_change" id="post_delete" style="margin-top: 20px;">
                         <span class="material-symbols-outlined">close</span>&nbsp;삭제
                  </a>
                	 </div>
						<!-- <a href="goWritePostUpdate.do?p_id=${requestScope.post.getP_SEQ()}" class="btn btn_change" style="margin-left: 560px; margin-top: 50px;">✎</a>
                		<a href="" class="btn btn_change" id="post_delete">✘</a>  -->
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
                        <div class="footer-menu"><button class="btn_like" style="background-color:white; border:none;"><p class="post_id" style="display: none;">${requestScope.post.getP_SEQ()}</p><span class="material-symbols-outlined fa-xl" style="color:green;">
                        psychiatry
                        </span> <span class="likes">${requestScope.post.getP_LIKES()}</span>회</button>
                            <p><i class="fa-solid fa-chart-simple fa-xl"></i>&ensp;${requestScope.post.getP_VIEWS()+1} 회</p>
                            <button class="btn_bookmark"; style="background-color:white; border:none;"><i class="fa-regular fa-bookmark fa-xl"></i></button>
                            <a href="#" id="urlCopy" class="btn_urlCopy" title="링크 공유" onclick="clip(); return false;"><i class="fa-solid fa-share-from-square fa-xl"></i></a>
                        </div>
                        
                        
                        
                        <!-- 
                        <div class="footer-menu">
                            <button class="btn btn_like"><p class="post_id" style="display: none;">${requestScope.post.getP_SEQ()}</p>🌱 <span class="likes">${requestScope.post.getP_LIKES()}</span>회</button>
                            <p>${requestScope.post.getP_VIEWS()+1}회</p>	   
                            <button class="btn btn_bookmark">북마크</button>
                            
                        <a href="#" id="urlCopy" class="btn_urlCopy" title="새창" onclick="clip(); return false;">링크 공유하기</a>


                        </div> -->
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
                <div id="profileCard" class="card" style="width:450px;">
                <img src="http://218.157.19.25:8081/jisik/P_FILE/${sessionScope.user.getU_PROFILE_IMG()}"
                  style="height: 250px; whidgh:250px; object-fit:contain;" class="card-img-top" alt="프로필 이미지">
                    <!-- <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                        style="height:300px; width: 400px; object-fit: none;" class="card-img-top" alt="프로필 이미지"> -->
                    <div class="card-body">
                        <h5 class="card-title" style="margin-left: 35%;">${sessionScope.user.getU_ID()} 님 환영합니다🍀</h5>
						<c:if test="${sessionScope.user.getU_ID() != null}">
							<a href="logout.do" class="btn btn-primary" style="margin-left: 8%">로그아웃</a>
						</c:if>
						<c:if test="${sessionScope.user.getU_ID() == null}">
							<a href="goLogin.do" class="btn btn-primary" style="margin-left: 8%">로그인</a>
						</c:if>
                    </div>
                </div>
                <br>
                <div class="accordion" id="friendList">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="btn_friendList">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapseOne" aria-expanded="false"
                            aria-controls="flush-collapseOne">
                            친구목록
                        </button>
                    </h2>
                    <div id="flush-collapseOne" class="accordion-collapse collapse"
                    aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body friends"> 
                    </div>
                    </div>
                </div>
            </div>
            </div>
        
        
        
        
        <!-- 
            <div style="margin: 30px; position: fixed; max-width: 450px;">
                <div id="profileCard" class="card">
                    <img src="http://218.157.19.25:8081/jisik/P_FILE/${sessionScope.user.getU_PROFILE_IMG()}"
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
                            <div class="accordion-body friends">
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            
            
            
            
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
                            html+='<br><span class="u_nick">'+res[i].U_NICK+'</span><br>';
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
            
            function listenerOK(){
                let prof = $('.profile_img');
                let btn_bookmark = $('.btn_bookmark');
                let btn_like=$('.btn_like');
                console.log(prof);
                //prof.on('click', goToProf);
                btn_bookmark.on('click',markPost);
                btn_like.on('click',likePost);
            };
            
            
            
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
            
            $('#post_delete').on('click', function writeDelete(){
            	let cc = confirm("정말로 삭제하시겠습니까?");
            	if(cc==true){
            		url = "writeDelete.do?P_SEQ=${requestScope.post.getP_SEQ()}";
            		location.href=url;
            		alert("삭제되었습니다.");
            		//location.href="goMain.do";
            		console.log(url);
            	}else{
            		alert("취소되었습니다.")	;
            		return false;
            	}
            }); 
            
            
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
                             html+='<div class="accordion-body" style="display:flex; justify-content:space-between;">';
                             html+='<div><img src="'+rootpath+res[i].P_FILE+' alt="프로필 이미지" class="accordion-file>';
                             html+='<p class="accordion-name">'+res[i].F_ID+'</p>';
                             html+='</div> <a  href="javascript:void(0);" onclick="delFriend(\''+res[i].F_ID+'\');">친삭</a></div>';
                             $(".friends").append(html);
                         }
                      },
                      error : function(e){
                         //alert("요청 실패!");
                         let html = '';
                         html+='<a href="goLogin.do">로그인을 해주세요.</a>'
                         $(".friends").append(html);
                      }
                   } );
             }
            
            
            function likePost(){
                //console.log($(this).children()[0].innerText);
                let p_id=$(this).children()[0].innerText;
                let likes=$(this).children()[2];
                
                $.ajax({
                   url:'like.do',
                   type:'post',
                   data:{"p_id":p_id},
                   success : function(res){
                      if(res=='added'){
                           alert("좋아요 성공!");
                           likes.innerText=Number(likes.innerText)+1;
                      }
                      else{
                      alert("좋아요 삭제!");
                           likes.innerText=Number(likes.innerText)-1;
                      }
                   },
                   error : function(e){
                            alert("실패!");
                         }
                });
             };
             
             
             
             function markPost(){
                 //console.log($(this).prevAll()[1].children[0].innerText);
                 let p_id=$(this).prevAll()[1].children[0].innerText;
                 $.ajax({
                    url:'bookmark.do',
                    type:'post',
                    data:{"p_id":p_id},
                    success : function(res){
                       if(res=='added'){
                            alert("성공!");
                       }
                       else{
                       alert("삭제!");
                       }
                       
                    },
                    error : function(e){
                             alert("로그인이 필요합니다!");
                          }
                 });
              };
              
              
              
              function delFriend(f_id){
              	//let f_id = $(this).innerText;
              	console.log(f_id);
              	//console.log($(this).prev().children()[5].innerText);    	
              	$.ajax( {
                      url : 'delFriend.do', 
                      type : 'post',
                      data : {"f_id":f_id},
                      success : function(res){
                      	console.log("친삭완료.");
                      	$(".friends").html('');
                      	   friendSelect();
                      },
                      error : function(e){
                         alert("요청 실패!");
                      }
                   } );
              }
              
            
            
    </script>

</body>

</html>