<%@page import="kr.smhrd.dao.T_FRIENDDAO"%>
<%@page import="kr.smhrd.dao.T_USERDAO"%>
<%@page import="kr.smhrd.entity.T_USER"%>
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>

<script src="assets/js/jquery-3.7.0.min.js"></script>

<style>
@font-face {
	font-family: 'omyu_pretty';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'omyu_pretty';
}

.logo {
	width: 100px;
	height: 110px;
	margin-top: 18px;
	margin-bottom: 20px;
	align-items: center;
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
}

#mypage_area {
	width: 40%;
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

#title {
	background: #83ab85;
	padding: 20px;
	text-align: center;
	font-size: 40px;
	color: white;
	letter-spacing: 5px;
}

.nav {
	position: fixed;
	text-align: left;
	font-size: 30px;
}

.navbar {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.nav-item {
	margin-top: 10px;
	margin-right: 200px;
}

.my_info {
	font-size: 25px;
	padding: 10px;
}

.pro_img {
	width: 160px;
	height: 160px;
	margin-top: 3%;
	margin-left: 3%;
	border-radius: 50%;
	border: 1px solid rgb(0, 31, 21);
}

.my_name {
	margin-top: 15px;
	/* margin-left: 10px; */
}

.p_p_info span {
	color: beige;
	background-color: rgb(0, 78, 52);
	text-align: center;
}

.my_post {
	margin-top: 50px;
}

#mypa_img {
	width: 200px;
	height: 200px;
	display: flex;
	flex-flow: row nowrap;
}

span {
	font-size: 35px;
	margin-left: 20px;
}

.pa_area {
	 width: 200px;
            height: 200px;
            margin-top: 10px;
            margin-left: 10px;
            margin-right: 10px;
}

.pa_area_img {
	width: 200px;
	height: 200px;
	/*margin-left: 20px;*/
}

.btn {
	font-size: 20px;
	padding: 10px 15px;
	/* border: 3px solid burlywood; */
	background-color: rgb(238, 238, 186);
	color: #703c3c;
	text-transform: uppercase;
	letter-spacing: 3px;
	font-weight: bold;
	position: relative;
	transition: all 0.4s;
	overflow: hidden;
	text-align: right;
	margin-left: 90px;
	margin-bottom: 100px;
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
	color: rgb(0, 78, 52);
	background-color: #83ab85;
}

.pro {
	display: flex;
	flex-flow: row nowrap;
	align-items: center;
	text-align: left;
	margin-left: 20%;
}

.id_nick {
	display: flex;
	flex-flow: column wrap;
	margin-top: 40px;
}

.pro1 {
	text-align: right;
	/* margin-right: 20px; */
	padding-right: 10px;
}

#mypa_img {
	width: 730px;
	height: 300px;
	padding: 20px;
	overflow: scroll;
	color: #112031;
	/* 가로 스크롤 */
	overflow: auto;
	white-space: nowrap;
	overflow-y: hidden;
}
</style>


</head>

<body>

	<%
	T_USERDAO dao = new T_USERDAO();
	T_USER friend = dao.searchUser((request.getParameter("u_id")));
	T_FRIENDDAO f_dao = new T_FRIENDDAO();
	boolean checkFollow = f_dao.checkFollow(((T_USER)session.getAttribute("user")).getU_ID() ,friend.getU_ID());
%>


	<div id="backgroundArea">
		<div id="leftPage">
			<div class="navbar">
				<ul class="nav flex-column">
					<a class="nav-link active" aria-current="page" href="goMain.do"><img
						class=logo src="./image/새싹 누끼.png"></a>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="goMain.do">홈</a></li>
					<!-- <li class="nav-item">
                        <a class="nav-link" href="./chatList.html">채팅방 &#x1F4AC;</a>
                    </li> -->
				</ul>
			</div>
		</div>
		
		<div id="mypage_area" class=" border-start border-end border-1">
			<p id="title"> <%=friend.getU_NICK() %> Page</p>
			<div class="my_info">
				<div class="pro">
					<img class="pro_img" src="./image/친구새싹누끼.png"> <span>&emsp;&emsp;</span>
					<div class="id_nick">
						<span class="my_id"><%=friend.getU_ID()%></span>
						<span class="my_name"><%=friend.getU_NICK() %></span>
					</div>
					<button class="btn" id = "btn_follow">풀링</button>
					<br>
				</div>
				<div class="pro1">
					<p>&nbsp;</p>
				</div>
				<hr>
				
				<div class="p_p_info">
					<div class="my_pa">
						<span>&nbsp;창고지기 식물&nbsp;</span>
						<div id="mypa_img">
							<!--  <div class="pa_area">
								<img class="pa_area_img" src="./image/새싹.png">
							</div>
							<p>&emsp;&emsp;&nbsp;</p>
							<div class="pa_area">
								<img class="pa_area_img" src="./image/새싹.png">
							</div>
							<p>&emsp;&emsp;&nbsp;</p>
							<div class="pa_area">
								<img class="pa_area_img" src="./image/새싹.png">
							</div>-->
						</div>
					</div>
					<div class="my_post">
						<span>&nbsp;게시글&nbsp;</span>
					 <div id="mypa_img">
                            <!--<div class="pa_area">
                                <img class="pa_area_img" src="./image/새싹.png">
                            </div>
                            <p>&emsp;&emsp;&nbsp;</p>
                            <div class="pa_area">
                                <img class="pa_area_img" src="./image/새싹.png">
                            </div>
                            <p>&emsp;&emsp;&nbsp;</p>
                            <div class="pa_area">
                                <img class="pa_area_img" src="./image/새싹.png">
                            </div>-->
                        </div>
					</div>
				</div>
				
				
			</div>
		</div>

		<div id="rightPage">
			<div style="margin: 30px; position: fixed; max-width: 450px;">
				<div id="profileCard" class="card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
						style="height: 300px; width: 400px; object-fit: none;"
						class="card-img-top" alt="프로필 이미지">
					<div class="card-body">
						<h5 class="card-title" style="margin-left: 22%;">${sessionScope.user.getU_ID()}님
							환영합니다</h5>
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




	<script type="text/javascript">
	$(document).ready(loadMyPlant());
    $(document).ready(loadMyPost());
    $(document).ready(friendSelect());
    
    let btn_follow = $('#btn_follow');
    btn_follow.on('click',follow);
    
    
    function follow() {
    	let f_id = $(this).prev().children()[0].innerText;
    	console.log($(this).prev().children()[0].innerText);
		$.ajax({
			url: "follow.do",
		    type: "POST",
		    data: {"f_id":f_id},
		    success:function(res){      					
		    	alert("친추 완료") ;
		    	location.href='goChatList.do';
		    },
		    error:function (e){
		      alert("친추 취소") ;
		    }
		});
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
                 //alert("요청 실패!");
                 let html = '';
                 html+='<a href="goLogin.do">로그인을 해주세요.</a>'
                 $(".friends").append(html);
              }
           } );
     }
    
    
    function loadMyPost(){
    	$.ajax( {
            url : 'loadMyPost.do', 
            type : 'post', 
            data : {"u_id":'<%=request.getParameter("u_id")%>'}, 
            dataType : "json", 
            success : function(res){
               console.log('시작');
               console.log(res);
               for(let i=0; i<res.length; i++){
                  console.log('불러오기 완료');
                  let html='';
                  rootpath="http://218.157.19.25:8081/jisik/P_FILE/";
                  html=`<div class="pa_area" onclick="location.href='http://localhost:8081/jisik/goPostDetail.do?p_id=\${res[i].P_SEQ}';">
                      <img class="pa_area_img" src="\${rootpath}/image/\${res[i].P_FILE}">
                      <p>\${res[i].P_TITLE}</p>
                      </div>`;
                  $(".my_post>#mypa_img").append(html);
               }
            },
            error : function(e){
               alert("요청 실패!");
               let html = '';
               $(".my_post>.mypa_img").append(html);
            }
         } );
    };

    function loadMyPlant(){
    	$.ajax( {
            url : 'loadMyPlant.do', 
            type : 'post', 
            data : {"u_id":'<%=request.getParameter("u_id")%>'}, 
            dataType : "json", 
            success : function(res){
               console.log('시작');
               console.log(res);
               for(let i=0; i<res.length; i++){
                  console.log('불러오기 완료');
                  let html='';
                  rootpath="http://218.157.19.25:8081/jisik/P_FILE/";
                  html=`<div class="pa_area" onclick="location.href='http://localhost:8081/jisik/goPlantDetail.do?pl_id=\${res[i].PL_SEQ}';">
                      <img class="pa_area_img" src="\${rootpath}/image/\${res[i].PL_IMG}">
                      <p>\${res[i].PL_NAME}</p>
                      </div>`;
                  $(".plants").append(html);
               }
            },
            error : function(e){
               alert("요청 실패!");
               let html = '';
               $(".plants").append(html);
            }
         } );
    };
    
    
    
    
    </script>



</body>

</html>