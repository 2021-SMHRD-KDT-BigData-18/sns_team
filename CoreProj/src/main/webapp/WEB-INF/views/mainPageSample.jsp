<%@page import="kr.smhrd.entity.T_FRIEND"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/bootstrap.css">
<script src="assets/js/bootstrap.bundle.js"></script>
<script src="assets/js/jquery-3.7.0.min.js"></script>
<style>
#backgroundArea {
	min-height:100vh;
	display: flex;
	justify-content: space-between;
            background-color: rgb(243, 243, 229);
}

#leftPage {
	width: 30%;
	display: flex;
	justify-content: center;
	background-color: beige(7, 160, 7);
}
@font-face {
            font-family: 'omyu_pretty';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

#centerPage {
	display: flex;
	flex-direction: column;
	width: 40%;
   width: 40%;
   align-items: center;
   background-color: rgb(235, 207, 138);
}
* {
    font-family: 'omyu_pretty';
    background-color: rgb(243, 243, 229);
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
    background-color: beige(7, 160, 7);
    align-items: flex-end;
    line-height: 1.5;
}

.btn-primary { --bs-bg-opacity: 1;
	background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity))!important;
	border-color: green;
}

#profileCard {
	margin: 10px;
	width: 550px;
	
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

#searchArea {
	display: flex;
	flex-direction: row;
	width: 38%;
	background-color: gray;
	margin: 10px;
	position: fixed;
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
.btn-primary {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
        }

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
            background-color: white;
            margin-bottom: 10px;
        }

        .postCardImg {
            object-fit: cover;
            border-radius: 10px;
            width: 100%;
        }
/* 
        #searchArea {


            display: flex;
            flex-direction: row;
            width: 30%;
            height: 5%;
            background-color: rgba(255, 255, 255, 0.849);
            position: fixed;
 

        } */

        #btnPost {
            position: fixed;
            top: 70%; 
            /* margin-left: 5%; */
            background-color: rgba(255, 255, 255, 0.849);
        }
        .btnSearch{
            position: fixed;
            background-color: rgba(255, 255, 255, 0.849);
            top: 20%;
            margin-left: 70px;
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
        .profile_img {
            width: 100px;
            height: 100px;
            background-color: salmon;
        }

        .nav-item {
            margin-top: 30%;

        }
        
        
       
        
</style>

</head>
<body>
	<div id="backgroundArea">
		<div id="leftPage" class="border-end">
			<div class="navbar">
				<img class="img" src="./image/지식창고_로고.png" width="300">

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
					<!-- <ul class="nav-item">
						<a class="nav-link" href="goChat.do">ChatChatChatChat</a>
					</ul> -->
					
					<button id="btnPost" onclick="location.href='goWritePost.do'">글쓰기</button>
				</ul>
			</div>

		</div>
		<hr>
		<div id="centerPage" class=" border-start border-end border-1">

			<div class="postList">
			</div>
		</div>

		<hr>
		<div id="rightPage">
			<div style="margin: 30px; position: fixed;">
				<div id="profileCard" class="card"style="width:450px;  ">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
						style="height: 250px; whidgh:250px; object-fit: none;" class="card-img-top"
						alt="프로필 이미지">
					<div class="card-body">
						<h5 class="card-title" style="margin-left: 35%;">${sessionScope.user.getU_ID()} 님 환영합니다🍀 </h5>
						<c:if test="${sessionScope.user.getU_ID() != null}">
							<a href="logout.do" class="btn btn-primary" style="margin-left: 70%">로그아웃</a>
						</c:if>
						<c:if test="${sessionScope.user.getU_ID() == null}">
							<a href="goLogin.do" class="btn btn-primary" style="margin-left: 145px">로그인</a>
						</c:if>
					</div>
				</div>
				<div class="accordion" id="friendList">
					<div class="accordion-item">
						<h2 class="accordion-header" id="btn_friendList">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
								aria-expanded="false" aria-controls="flush-collapseOne">
								친구목록</button>
						</h2>
						<div id="flush-collapseOne" class="accordion-collapse collapse"
							aria-labelledby="flush-headingOne"
							data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    

	<script>
		$(document).ready(postLoad());
		
		function postLoad() {
			$.ajax({
				url : "goMainPost.do",
				type : "post",
				data : {},
				dataType : "json",
				success : function(res) {
					let html='';
					console.log(res);
					console.log('dkssud');
					for(let i=0; i<res.length; i++){
						rootpath="http://218.157.19.25:8081/jisik/P_FILE/";
						html=`<div class="postCard">
				        <div class="card-body" style="display: flex;">
				            <div class="profile_img"> <p style="display: none;">\${res[i].U_ID}</p></div>
				            <div style="width:307px">
				            <p id="post_id" style="display: none;">\${res[i].P_SEQ}</p>
				                <h5 class="card-title">
				                \${res[i].P_TITLE}</h5>
				                <span class="card-text">\${res[i].U_ID}</span>
				                <br>
				                <span class="card-text">\${res[i].P_CONTENT}</span>
				            </div>
				        </div>
				        <img src="\${rootpath}\${res[i].P_FILE}" class="postCardImg" alt="프로필 이미지">
				        <div class="card-footer">
				            <p></p>
				            <hr>
				            <div class="footer-menu"><button class="btn_like"><p class="post_id" style="display: none;">\${res[i].P_SEQ}</p>🌱</button>
				                <p>\${res[i].P_VIEWS} 회</p>
				                <button class="btn_bookmark">북마크</button>
				            </div>
				        </div>
				    </div>`;
						
						
						/*html='';
						rootpath="http://218.157.19.25:8081/jisik/P_FILE/";
						html+='<div class="postCard"><div class="card-body"><div></div><p id="post_id" style="display: none;">';
						html+=res[i].P_SEQ;
						html+='</p>';
						html+='<h5 class="card-title">';
						html+=res[i].P_TITLE+'</h5>';
						html+='<p class="card-text">'+res[i].U_ID+'</p>';
						html+='<p class="card-text">'+res[i].P_CONTENT+'</p></div>';
						html+='<img src="'+rootpath+res[i].P_FILE+'" class="postCardImg" alt="프로필 이미지">';
						html+='<div class="card-footer"><p></p><hr>';
						html+='<div class="footer-menu"><button class="btn_like"><p class="post_id" style="display: none;">'+res[i].P_SEQ+'</p>🌱</button>';
						html+='<p>' + res[i].P_VIEWS +'회</p>';
						html+='<button class="btn_bookmark">북마크</button></div></div></div>';*/
						$(".postList").append(html);
	                }
					listenerOK();
					friendSelect();
				},
				error : function(e) {
					// 요청이 실패하면 실행될 콜백함수
					alert("요청 실패!");
				}
			});
		}
		function listenerOK() {
			let post = $('.card-body>div+div');
			let prof = $('.profile_img');
			console.log(prof);
			post.on('click',goToPost);
			prof.on('click', goToProf);	
			};
			
			function goToProf(){
				let u_id = $(this).children()[0].innerText;
				console.log(u_id);
				location.href='goMypage.do?u_id='+u_id;
			}
			
			
			function goToPost() {
				let p_id=$(this).children()[0].innerText;
				location.href='goPostDetail.do?p_id='+p_id;
			};
		
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

			
			$('.btn_like').on('click',  
					function LikeUpdatePlus(){
				let p_seq = $('p.post_id').innerText;
						  $.ajax({
							    url: "likeUpdatePlus.do",
							    type: "POST",
							    dataType: "json",
							    data: p_seq,  
							    success: 
							    function(data){      					
							    	alert("'좋아요'가 반영되었습니다!") ;  
					                $(".btn_like").html("🌱" + data.P_LIKES);  
							    },   
							    
							    error: 
							    function (request, status, error){  
							      alert("실패")                  
							    }
							  });
					}/*,
					function LikeUpdateMinus(){
						  $.ajax({
							    url: "likeUpdateMinus.do",
							    type: "POST",
							    dataType: "json",
							    data: {},   
							    success: 
							    function(data){      					
							    	alert("'좋아요'가 반영되었습니다!") ;  
					                $(".btn_like").html("🌱" + data.like);  
							    },   
							    
							    error: 
							    function (request, status, error){  
							      alert("실패")                  
							    }
							  });
					}*/
					);
	</script>

</body>
</html>