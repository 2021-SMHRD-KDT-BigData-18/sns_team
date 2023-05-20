<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            background-color: rgb(243, 243, 229);
        }
        
        #leftPage {
            width: 30%;
        }
        
        #mypage_area {
            width: 40%;
            background-color: rgb(235, 207, 138);
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
            /*display: flex;*/
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
         }
        .pro {
            display: flex;
            flex-flow: row nowrap;
            align-items: center;
            text-align: left;
            margin-left: 20%;
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
    </style>


</head>

<body>
    <div id="backgroundArea">
        <div id="leftPage" class="border-end">
            <div class="navbar">
                <ul class="nav flex-column">
                    <a class="nav-link active" aria-current="page" href="goMain.do"><img class=logo src="./image/새싹 누끼.png" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="goMain.do">홈</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="goChatList.do">채팅 &#x1F4AC;</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="mypage_area">
            <p id="title">저장 게시글</p>
            
            <div class="my_info" style="display:flex; flex-flow: row wrap; justify-content:space-between;">
                <!-- <span>&ensp;</span> -->
                    <div class="pa_area">
                        <img class="pa_area_img" src="./image/새싹.png">
                    </div>
                    <div class="pa_area">
                        <img class="pa_area_img" src="./image/새싹.png">
                    </div>
                    <div class="pa_area">
                        <img class="pa_area_img" src="./image/새싹.png">
                    </div>
           	</div>
       	</div>
        <div id="rightPage">
            <div style="margin: 30px; position: fixed; max-width: 450px;">
                <div id="profileCard" class="card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                        style="height:300px; width: 400px; object-fit: none;" class="card-img-top" alt="프로필 이미지">
                    <div class="card-body">
                        <h5 class="card-title" style="margin-left: 22%;">smhrd 님 환영합니다</h5>
                        <a href="#" class="btn btn-primary" style="margin-left: 10%">로그아웃</a>
                        <a href="#" class="btn btn-primary" style="margin-left: 10%;">회원정보 수정</a>
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
                    <div class="accordion-body"> 친구목록 띄워주쇼 <code>.accordion-flush</code> class. This is the
                        first item's accordion
                        body.</div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    $(document).ready(savePostLoad());
    
    function savePostLoad(){
    	$.ajax({
    		url:'loadBookmark.do',
    		type : "post",
            data : {},
            dataType:'json',
            success : function(res) {
                let html='';
                console.log(res);
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
    
    
    </script>
    
    
</body>

</html>