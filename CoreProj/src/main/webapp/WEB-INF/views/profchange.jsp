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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
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

        * {
            font-family: 'omyu_pretty';
        }
        
        .logo {
            width: 100px;
            height: 110px;
            margin-top: 15px;
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
        
        span{
            font-size: 35px;
            margin-left: 20px;
        }
        
        .pa_area {
            width: 200px;
            height: 200px;
            margin-top: 10px;
        }

        .pa_area_img {
            width: 200px;
            height: 200px;
            margin-left: 20px;
        }
        

        .btn {
            font-size: 20px;
            padding: 10px 15px;
            
            /* border: 3px solid burlywood; */
            background-color: rgb(238, 238, 186);
            color: #703c3c;
            text-transform: uppercase;
            letter-spacing: 5px;
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
        .pro {
            display: flex;
            flex-flow: row nowrap;
            align-items: center;
            text-align: left;
            margin-left: 15%;
            margin-top: 15%;
        } 
        .id_nick{
            display: flex;
            flex-flow: column wrap;
            margin-top: 40px;
            
        }
        .pro1{
            text-align: right;
            /* margin-right: 20px; */
            padding-right: 10px;
        }
        ::placeholder{
            font-size: 20px;
        
        }
        .btn_change{
            border-radius: 10px;
        }
        
        
        .filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #999;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
  display: inline-block;
  padding: .5em .75em;  /* label의 패딩값과 일치 */
  font-size: inherit;
  font-family: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none; /* 네이티브 외형 감추기 */
  -moz-appearance: none;
  appearance: none;
}
        
        
        
        
    </style>


</head>

<body>
    <div id="backgroundArea">
        <div id="leftPage">
            <div class="navbar">
                <ul class="nav flex-column">
                    <ul class="nav-item">
                  <a class="nav-link active" aria-current="page" href="goMain.do"
                     style="color: burlywood;"><i class="fa fa-house fa-lg "
                     style="color: rgba(15, 114, 60, 0.829);"></i>&ensp;홈</a>

               </ul>
               
               <ul class="nav-item">
                  <a class="nav-link" href="goChatList.do" style="color: burlywood;"><i
                     class="fa-regular fa-comment fa-lg"
                     style="color: rgba(15, 114, 60, 0.829)"></i>&ensp;채팅</a>
               </ul>
               
               <ul class="nav-item">
                  <a class="nav-link" href='goSavePost.do' style="color: burlywood;"><i
                     class="fa-solid fa-folder fa-lg"
                     style="color: rgba(15, 114, 60, 0.829)"></i>&ensp;저장글</a>
               </ul>
                </ul>
            </div>
        </div>

        <div id="mypage_area" class=" border-start border-end border-1">
            <p id="title">My Page</p>
            
                <form action="changeProf.do" method="post" enctype="multipart/form-data">
            <div class="my_info">
                <div class="pro">
                <img class="pro_img" src="./image/새새싹.png">
                <span>&emsp;&emsp;</span>
                        <div class="id_nick">
                            <!-- <span class="my_id">smhrd0512</span> -->
                        <input class="btn_change" name="nick" type="text" placeholder="수정하실 닉네임을 입력해주세요."><br>
                        <!-- <span class="my_name">창고지기</span> -->
                        <input class="btn_change" name="pw" type="password" placeholder="수정하실 PW를 입력해주세요."><br>
            
                </div>
                </div>
                </div>
                <div class="pro1">
                <div class="filebox">
				  <input class="upload-name" value="파일선택" disabled="disabled">
				
				  <label for="ex_filename">업로드</label> 
				  <input name="filename" type="file" id="ex_filename" class="upload-hidden"> 
				</div>
                
                    <!-- <button class="btn" style="margin-right: 62%;"  >프로필편집</button> -->
                    <p></p>
                    <p></p>
                    <button class="btn" style="margin-left: 50%;" onclick="location.href='goMypage.do?u_id=${user.getU_ID()}'">수정완료</button>
                </div>
                    </form>
                   
                <hr>
                <div class="p_p_info">
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
                  style="height: 250px; whidgh:250px; object-fit: none;" class="card-img-top" alt="프로필 이미지">
                  <!-- 
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                        style="height:300px; width: 400px; object-fit: none;" class="card-img-top" alt="프로필 이미지">
                         
                    <div class="card-body">
                        <h5 class="card-title" style="margin-left: 15%;">${sessionScope.user.getU_ID()} 님 환영합니다🍀</h5>
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
            </div> -->
            
            
        </div>
    </div>
    
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