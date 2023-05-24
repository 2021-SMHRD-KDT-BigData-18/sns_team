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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="assets/js/bootstrap.bundle.js"></script>
<script src="assets/js/jquery-3.7.0.min.js"></script>
<style>
    @font-face {
        font-family: 'omyu_pretty';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
        font-weight: normal;
        font-style: normal;
    }

    * {
        font-family: 'omyu_pretty';
    }

    #backgroundArea {
   min-height:100vh;
   display: flex;
   justify-content: space-between;
    /* background-color: rgb(243, 243, 229); */
    background-color: #F7F7F7;
    }

    #leftPage {
        width: 30%;
        display: flex;
        justify-content: center;
    }


#centerPage {
    display: flex;
   flex-direction: column;
   width: 40%;
    width: 40%;
    align-items: center;
    /* background-color: rgb(235, 207, 138); */
    /*background-color: rgb(243, 243, 229);*/
    background-color: #FBF8F1;
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
<<<<<<< HEAD
<<<<<<< HEAD
background-color:white;


=======
	background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity))!important;
	border-color: green;
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git
=======
background-color:white;


>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git
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
<<<<<<< HEAD
<<<<<<< HEAD

=======
.btn-primary {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
        }
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git
=======

>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git

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
        }

        .nav-item {
            margin-top: 30%;

        }
<<<<<<< HEAD
<<<<<<< HEAD
        i{
        	color:rgba(15, 114, 60, 0.829);
        	fa-lg;
        }
=======
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git
=======
        i{
           color:rgba(15, 114, 60, 0.829);
           fa-lg;
        }
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git
        
        
       
        
</style>

</head>
<body>
<<<<<<< HEAD
	<div id="backgroundArea">
		<div id="leftPage" class="border-end">
			<div class="navbar">
				<a class="nav-link active" aria-current="page" href="goMain.do"><img class="img" src="./image/지식창고_로고.png" width="300"></a>
  
				<ul class="nav flex-column">
					<ul class="nav-item">
						<a class="nav-link active" aria-current="page" href="goMain.do" style="color: burlywood;"><i class="fa fa-house fa-lg " style="color:rgba(15, 114, 60, 0.829);"></i>&ensp;홈</a>
=======
   <div id="backgroundArea">
      <div id="leftPage" class="border-end">
         <div class="navbar">
            <a class="nav-link active" aria-current="page" href="goMain.do"><img class="img" src="./image/지식창고_로고.png" width="300"></a>
  
            <ul class="nav flex-column">
               <ul class="nav-item">
<<<<<<< HEAD
                  <a class="nav-link active" aria-current="page" href="goMain.do"><i class="fa-solid fa-house fa-2x " style="color:rgba(15, 114, 60, 0.829)"></i>홈</a>
                  
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git
=======
                  <a class="nav-link active" aria-current="page" href="goMain.do" style="color: burlywood;"><i class="fa fa-house fa-lg " style="color:rgba(15, 114, 60, 0.829);"></i>&ensp;홈</a>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git

               </ul>
               <ul class="nav-item">
                  <a class="nav-link" href="goMypage.do?u_id=${user.getU_ID()}" style="color: burlywood;"><i class="fa-regular fa-circle-user fa-lg" style="color:rgba(15, 114, 60, 0.829)"></i>&ensp;마이페이지</a>
               </ul>
               <ul class="nav-item">
                  <a class="nav-link" href="goChatList.do" style="color: burlywood; "><i class="fa-regular fa-comment fa-lg" style="color:rgba(15, 114, 60, 0.829)"></i>&ensp;채팅</a>
               </ul>
               <!-- <ul class="nav-item">
                  <a class="nav-link" href="goChat.do">ChatChatChatChat</a>
               </ul> -->
               <ul class="nav-item">
                  <a class="nav-link" href='goWritePost.do' style="color: burlywood;"><i class="fa-regular fa-pen-to-square fa-lg" style="color:rgba(15, 114, 60, 0.829)"></i>&ensp;글쓰기</a>
               </ul>
               <ul class="nav-item">
                  <a class="nav-link" href='goSavePost.do' style="color: burlywood;"><i class="fa-solid fa-folder fa-lg" style="color:rgba(15,114,60,0.829)"></i>&ensp;저장글</a>
               </ul>
         <!--       <a id="btnPost" onclick="location.href='goWritePost.do'">글쓰기</a> -->
            </ul>
         </div>

      </div>
      <div id="centerPage" class=" border-start border-end border-1">

         <div class="postList">
         </div>
      </div>

<<<<<<< HEAD
		<div id="rightPage">
			<div style="margin: 30px; position: fixed;">
				<div id="profileCard" class="card"style="width:450px;  ">
					<img
						src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshopping.phinf.naver.net%2Fmain_3807892%2F38078924706.20230218214528.jpg&type=sc960_832"
						style="height: 250px; width:250px; object-fit: none;" class="card-img-top"
						alt="프로필 이미지">
						
						<%-- 
					  	<img
						  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
						style="height: 250px; whidgh:250px; object-fit: none;" class="card-img-top"
						alt="프로필 이미지"> 
						--%>
						
					<div class="card-body">
						<%--<h5 class="card-title" style="margin-left: 35%;">${sessionScope.user.getU_ID()} 님 환영합니다🍀 </h5> --%>
						<c:if test="${sessionScope.user.getU_ID() != null}">
=======
      <div id="rightPage">
         <div style="margin: 30px; position: fixed;">
            <div id="profileCard" class="card"style="width:450px;  ">
               <img
                  src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshopping.phinf.naver.net%2Fmain_3807892%2F38078924706.20230218214528.jpg&type=sc960_832"
                  style="height: 250px; width:250px; object-fit: none;" class="card-img-top"
                  alt="프로필 이미지">
                  
                  <%-- 
                    <img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                  style="height: 250px; whidgh:250px; object-fit: none;" class="card-img-top"
                  alt="프로필 이미지"> 
                  --%>
                  
               <div class="card-body">
                  <%--<h5 class="card-title" style="margin-left: 35%;">${sessionScope.user.getU_ID()} 님 환영합니다🍀 </h5> --%>
                  <c:if test="${sessionScope.user.getU_ID() != null}">
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git

                  <!-- <img src="\${sessionScope.getU_PROFILE_IMG()}"> -->

                  <!-- <img src="${sessionScope.user.getU_PROFILE_IMG()}"> -->
                  <%--<img src="${sessionScope.getU_PROFILE_IMG()}"> --%>
                  <h5 class="card-title" style="margin-left: 35%;">${sessionScope.user.getU_ID()} 님 환영합니다🍀</h5>
                     <a href="logout.do" class="btn btn-primary" style="margin-left: 70%"><i class="fa fa-arrow-right-from-bracket fa-2x" style="color:rgba(15, 114, 60, 0.829)"></i></a>
                  </c:if>
                  <c:if test="${sessionScope.user.getU_ID() == null}">
                  <h5 class="card-title" style="margin-left: 35%;">${sessionScope.user.getU_ID()} 당장 로그인해주세요!!!</h5>
                     <a href="goLogin.do" class="btn btn-primary" style="margin-left: 75%"><i class="fa fa-arrow-right-to-bracket fa-2x" style="color:rgba(15, 114, 60, 0.829)"></i></a>
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
                     <div class="accordion-body friends">
                        
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    

<<<<<<< HEAD
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
				            <div class="footer-menu"><button class="btn_like" style="border:none;"><p class="post_id" style="display: none;">\${res[i].P_SEQ}</p>🌱 <span class="likes">\${res[i].P_LIKES}</span>회</button>
				                <p><i class="fa-solid fa-chart-simple"></i>&ensp;\${res[i].P_VIEWS} 회</p>
				                <button class="btn_bookmark"; style="border:none;"><i class="fa-regular fa-bookmark"></i></button>
				                <a href="#" id="urlCopy" class="btn_urlCopy" title="링크 공유" onclick="clip(); return false;"><i class="fa-solid fa-share-from-square"></i></a>
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
			let btn_bookmark = $('.btn_bookmark');
			let btn_like=$('.btn_like');
			console.log(prof);
			post.on('click',goToPost);
			prof.on('click', goToProf);
			btn_bookmark.on('click',markPost);
			btn_like.on('click',likePost);
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
	                     alert("실패!");
	                  }
				});
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
			
		/*
			function friendSelect(){
				
	            $.ajax({
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
	               });
	         }*/
=======
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
                        <div class="footer-menu"><button class="btn_like" style="border:none;"><p class="post_id" style="display: none;">\${res[i].P_SEQ}</p>🌱 <span class="likes">\${res[i].P_LIKES}</span>회</button>
                            <p><i class="fa-solid fa-chart-simple"></i>&ensp;\${res[i].P_VIEWS} 회</p>
                            <button class="btn_bookmark"; style="border:none;"><i class="fa-regular fa-bookmark"></i></button>
                            <a href="#" id="urlCopy" class="btn_urlCopy" title="링크 공유" onclick="clip(); return false;"><i class="fa-solid fa-share-from-square"></i></a>
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
         let btn_bookmark = $('.btn_bookmark');
         let btn_like=$('.btn_like');
         console.log(prof);
         post.on('click',goToPost);
         prof.on('click', goToProf);
         btn_bookmark.on('click',markPost);
         btn_like.on('click',likePost);
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
         
<<<<<<< HEAD
         function clip(p_id){
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git

<<<<<<< HEAD
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
=======
             var url = 'http://218.157.19.25:8081/jisik/goPostDetail.do?p_id='+p_id;    
             var textarea = document.createElement("textarea");  
             
             document.body.appendChild(textarea); 
             //url = window.document.location.href;  
             textarea.value = url;  
             textarea.select();  
             document.execCommand("copy");   
             document.body.removeChild(textarea); 
             
             alert("URL이 복사되었습니다.")  
         };
=======
         
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git
         
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
                        alert("실패!");
                     }
            });
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
         
      /*
         function friendSelect(){
            
               $.ajax({
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
                  });
            }*/

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
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git

</body>
</html>