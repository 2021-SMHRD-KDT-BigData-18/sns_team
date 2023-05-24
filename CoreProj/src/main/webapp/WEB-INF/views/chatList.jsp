<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            min-height: 100vh;
            display: flex;
            justify-content: space-between;
            /*background-color: rgb(243, 243, 229);*/
            background-color: #F7F7F7;
        }

        #leftPage {
            width: 30%;
            background-color: beige(7, 160, 7);
        }

        #centerPage {
            display: flex;
            flex-direction: column;
            width: 40%;
            /* align-items: center; */
            /*background-color: rgb(235, 207, 138);*/
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

        .btn-primary {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
        }

        #profileCard {
            margin: 90px;
            width: 450px;
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

        #searchArea {

            display: flex;
            flex-direction: row;
            width: 30%;
            height: 5%;
            background-color: rgba(255, 255, 255, 0.849);
            position: fixed;
        }

        #btnPost {
            position: fixed;
            top: 70%;
            margin-left: 5%;
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
        <!--ㅇ-->
        .chat_list_wrap {
        list-style: none;
        }
        .chat_list_wrap .header {
        font-size: 40px;
        padding: 20px;
        background: #83ab85;
        color: white;
        text-align: center;
        font-family: "Josefin Sans", sans-serif;
        color: white;
        letter-spacing: 5px;
        }
        
        
        
        .chat_list_wrap .search {
        background: #eee;
        padding: 7px;
        }
        .chat_list_wrap .search input[type="text"] {
        width: 100%;
        border-radius: 4px;
        padding: 5px 0;
        border: 0;
        text-align: center;
        }
        .chat_list_wrap .list {
        padding: 0 20px;
        }
        .chat_list_wrap .list .list_ul {
        width: 100%;
        list-style: none;
        margin-top: 3px;
        }
        .chat_list_wrap .list .list_ul .list_li {
        padding-top: 10px;
        padding-bottom: 10px;
        border-bottom: 1px solid #e5e5e5;
        }
        .chat_list_wrap .list .list_ul .list_li table {
        width: 100%;
        }
        .chat_list_wrap .list .list_ul .list_li table td.profile_td {
        width: 50px;
        padding-right: 20px;
        }
        .chat_list_wrap .list .list_ul .list_li table td.profile_td img {
        width: 90px;
        height: 90px;
        /* height: auto; */
        border: 1px solid #001e01;
        border-radius: 50%;
        }
        .chat_list_wrap .list .list_ul .list_li table td.chat_td .nick {
        font-size: 20px;
        font-weight: bold;
        margin-bottom: 15px;
        }
        .chat_list_wrap .list .list_ul .list_li table td.time_td {
        width: 90px;
        text-align: center;
        }
        .chat_list_wrap .list .list_ul .list_li table td.time_td .time {
        padding-bottom: 4px;
        }
        .chat_list_wrap .list .list_ul .list_li table td.time_td .check p {
        width: 5px;
        height: 5px;
        margin: 0 auto;
        -webkit-border-radius: 50%;
        -moz-border-radius: 50%;
        border-radius: 50%;
        background: #487b4a;
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
                        <a class="nav-link active" aria-current="page" href="goMain.do">Home</a>
                    </ul>
                    <ul class="nav-item">
                        <a class="nav-link" href="goMypage.do?u_id=${user.getU_ID()}">My Page</a>
                    </ul>
                    <!-- <ul class="nav-item">
                        <a class="nav-link" href="./chatList.html">Chat</a>
                    </ul> -->
                    <!-- <button id="btnPost">글쓰기</button> -->
                </ul>
            </div>
        </div>

        <div id="centerPage" class=" border-start border-end border-1">
            <div class="chat_list_wrap">
                <div class="header">
                    <span>풀채팅</span>
                </div>
                <div class="list">
                    <div class="list_ul">
                        
                        
                    </div>
                </div>
            </div>




        </div>

        <div id="rightPage">
            <div style="margin: 30px; position: fixed; max-width: 450px;">
                <div id="profileCard" class="card">
                
                <img
                  src="http://218.157.19.25:8081/jisik/P_FILE/${sessionScope.user.getU_PROFILE_IMG()}"
                  style="height: 250px; whidgh:250px; object-fit: none;" class="card-img-top"
                  alt="프로필 이미지">
                   <!--  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                        style="height:200px; object-fit: none;" class="card-img-top" alt="프로필 이미지"> -->
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
        </div>
    </div>

    <script>
        let post = $('.postCard>.card-body');
        console.log(post);
        post.on('click', printID);
        function printID() {
            console.log($(this).children()[0].innerText);
        }
    </script>
	<script>
		$(document).ready(chatFriendList());
		function chatFriendList(){
			$.ajax({
				url : "loadChatList.do",
				type : "post",
				data : {},
				dataType : "json",
				success : function(res) {
					console.log("ok");
					for(i=0; i < res.length; i++){
						let html='';
						html = `
							<div class="list_li">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="profile_td">
                                        <img src="./image/새싹 누끼.png" />
                                    </td>
                                    <td class="chat_td">
                                        <div class="nick">
                                            \${res[i].chat_id}
                                        </div>
                                        <div class="chat_preview">
                                        \${res[i].chat_content}
                                        </div>
                                    </td>
                                    <td class="time_td">
                                        <div class="time">
                                        \${res[i].chat_dt}
                                        </div>
                                        <div class="check">
                                            <p> </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
						`;
                        $('.list_ul').append(html);
					}
					friendSelect();
					addListener();
				},
				error : function(e){
                    alert("요청 실패!");
                    let html = '';
                    html = `
                    	<div class="list_li">
                        <table cellpadding="0" cellspacing="0">
                        	<h2>채팅 내역이 없습니다.</h2>
                        </table>
                        </div>
                    `;
                    $('.list_ul').append(html);
                 }
              } );
		}
		
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
                     alert("요청 실패!");
                     let html = '';
                     html+='<a href="goLogin.do">로그인을 해주세요.</a>'
                     $(".friends").append(html);
                  }
               } );
         }
		
		function addListener() {
			let list = $('.list_li');
			list.on('click', goToChat);	
			};
			
			
			
			function goToChat() {
				let f_id=$(this).find('.nick')[0].innerText;
				location.href='goChat.do?f_id='+f_id;
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