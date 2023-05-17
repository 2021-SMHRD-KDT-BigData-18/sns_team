<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
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
        body{
            background-color: rgb(243, 243, 229);
            /* margin : 0px; */
        }
        
        .logo{
            width: 100px;
            height: 110px;
        }
        
        #backgroundArea {
            min-height: 100vh;
            display: flex;
            justify-content: space-between;
        }
        
        #leftPage {
            width: 30%;
            text-align: right;
            /* border: 1px solid rgba(35, 129, 21, 0.1); */
        }
        
        
        .nav {
            position: fixed;
            /* margin-right: 50px; */
            align-items: flex-end;
            font-size: 30px;
        }
        
        .navbar {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .nav-item{
            margin-top: 20px;
            
        }
        
        #mypage_area {
            display: flex;
            flex-direction: column;
            width: 90%;
            height: 100%;
            font-size: 30px;
            margin-bottom: 10px;
        }
        
        .my_info{
            /* background-color: rgba(35, 129, 21, 0.1); */
            border: 1px solid rgba(35, 129, 21, 0.1);
            /* background-color: rgba(0, 62, 15, 0.165); */
            font-size: 25px;
            padding: 20px;
        }
        
        .pro_img{
            width: 125px;
            height: 125px;
            border-radius: 50%;
            border: 1px solid rgb(0, 31, 21);
        }
        
        .addfr_img{
            width: 100px;
            height: 100px;
            margin-left: 100px;
            border-radius: 50%;
            border: 1px solid rgb(0, 31, 21);
        }
        
        .my_name{
            margin-top: 10px;
            margin-left: 10px;
        }
        .my_pa{
            margin-top: 30px;
        }
        
        .my_post{
            /* color: beige;
            width: 160px;
            text-align: center; */
            margin-top: 30px;
        }
        .mypa_img{
            width: 200px;
            height: 100px;
        }
        span{
            color: beige;
            background-color: rgb(0, 78, 52);
            text-align: center;
            
        }
     
        </style>


</head>

<body>
    <div id="backgroundArea">
        <div id="leftPage" class="border-end">
            <div class="navbar">
                <ul class="nav flex-column">
                    <img class=logo src="./image/새싹 누끼.png">
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
        <div id="mypage_area"><br><br>
            <p id="title">My Page</p>
            <div class="my_info">
                <p class="my_id">smhrd0512</p>
                <img class="pro_img" src="./image/새싹 누끼.png">
                <img class="addfr_img" src="./image/새싹 누끼.png">
                <p class="my_name">창고지기</p>
                <button>개인정보수정</button>
                <button>프로필 편집</button><br>
                <div class="my_pa">
                    <span>창고지기 식물</span>
                    <div class="mypa_img">
                        <img  src="./image/새새삭.png">
                    </div>
                </div>
                <div class="my_post">
                    <span >게시글</span>
                    <p> </p>
                </div>
            </div>
        
        
        </div>
    </div>

</body>

</html>