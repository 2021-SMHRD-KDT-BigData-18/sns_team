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
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
            margin-top: 10px;
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
            width: 50%;
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
            text-transform: uppercase;
            /* letter-spacing: 5px; */
            font-weight: bold;
            position: relative;
            transition: all 0.4s;
            overflow: hidden;
	        color: rgb(0, 78, 52);
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
            color: #83ab85;
        }



        .text_input {
        background: #eee;
        padding: 15px;
        }
        .text_input input[type="text"] {
            background: white;
            width: 85%;
            border-radius: 4px;
            padding: 10px 0;
            border: 0;
            text-align: center;
        }
        #cmt_list{
            /*background: rgb(243, 243, 229);*/
            height: 200px;
        }
        
        
		.material-symbols-outlined {
		  font-variation-settings:
		  'FILL' 0,
		  'wght' 700,
		  'GRAD' 0,
		  'opsz' 48
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
                        <a class="nav-link" href="goMypage.do?u_id=${sessionScope.user.getU_ID()}">My Page</a>
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
            
        
                	<c:if test="${user.getU_ID() == requestScope.post.getU_ID()}">
                	<div>
                		<a href="goWritePostUpdate.do?p_id=${requestScope.post.getP_SEQ()}" class="btn btn_change">
                			<span class="material-symbols-outlined" style="margin-top: 20px; margin-left: 550px;">edit_square</span>&nbsp;수정
                		</a>
                		<a href="" class="btn btn_change" id="post_delete" style="margin-top: 20px;">
                			<span class="material-symbols-outlined">close</span>&nbsp;삭제
						</a>
						
						
						<%--<a href="goWritePostUpdate.do?p_id=${requestScope.post.getP_SEQ()}" class="btn btn_change"><i class="fas fa-pencil-alt"></i></a>
                		<a href="" class="btn btn_change" id="post_delete"><i class="fa fa-xmark"></i></a>  --%>
					</div>
					</c:if>
            <div class="postList">
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
                            <button class="btn btn_like"><p class="post_id" style="display: none;">${requestScope.post.getP_SEQ()}</p>🌱 <span class="likes">${requestScope.post.getP_LIKES()}</span>회</button>
                            <p>${requestScope.post.getP_VIEWS()+1}회</p>	   
                            <button class="btn btn_bookmark">북마크</button>
                            
                        <a href="#" id="urlCopy" class="btn_urlCopy" title="새창" onclick="clip(); return false;">링크 공유하기</a>


                        </div>
                        <div id="cmtInputArea">
                            <div class="text_input">
                                <input type="text" placeholder="댓글 입력" id="cmtInput" name="cmtInput" style="box-shadow: 2px 2px 2px #aaaaaa;">
                                <button id="btn_cmt" style="border: 0;  border-radius: 5px; width: 90px; height: 45px; margin-left: 3px; box-shadow: 2px 2px 2px #aaaaaa;">댓글 달기</button>
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
                let likes=$(this).children()[1];
                
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