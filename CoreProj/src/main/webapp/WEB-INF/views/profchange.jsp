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
         }
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
    </style>


</head>

<body>
    <div id="backgroundArea">
        <div id="leftPage" class="border-end">
            <div class="navbar">
                <ul class="nav flex-column">
                    <img class=logo src="./image/새싹 누끼.png" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">홈</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="" href="#">저장게시글 &#x1F4C2;</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./chatList.html">채팅 &#x1F4AC;</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="mypage_area">
            <p id="title">My Page</p>
            
            <div class="my_info">
                <div class="pro">
                <img class="pro_img" src="./image/새새싹.png">
                <span>&emsp;&emsp;</span>
                <form action="login" method="post">
                        <div class="id_nick">
                            <!-- <span class="my_id">smhrd0512</span> -->
                        <input class="btn_change" name="nick" type="text" placeholder="수정하실 닉네임을 입력해주세요."><br>
                        <!-- <span class="my_name">창고지기</span> -->
                        <input class="btn_change" name="pw" type="password" placeholder="수정하실 PW를 입력해주세요."><br>
            
                    </form>
                </div>
                </div>
                <div class="pro1">
                    <button class="btn" style="margin-right: 62%;"  >프로필편집</button>
                    <p></p>
                    <p></p>
                    <button class="btn" style="margin-left: 50%;">수정완료</button>
                   
                </div>
                <hr>
                <div class="p_p_info">
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
</body>

</html>