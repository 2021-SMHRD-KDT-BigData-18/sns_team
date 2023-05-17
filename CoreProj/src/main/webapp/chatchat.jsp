<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<%@page import="kr.smhrd.entity.T_USER"%>
<%@page import="kr.smhrd.entity.T_CHATTING" %>
<%@page import="kr.smhrd.entity.T_FRIEND" %>

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
            /* justify-content: space-between; */
            background-color: rgb(243, 243, 229);
        }

        #leftPage {
            width: 30%;
            background-color: beige(7, 160, 7);
        }

        #centerPage {
            display: flex;
            flex-direction: column;
            width: 40%;
            /* align-items: center;  */
            background-color: white
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
            margin: 100px;
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

        .chat_list_wrap .header {
            font-size: 30px;
            padding: 20px 0;
            background: #83ab85;
            color: white;
            text-align: center;
            font-family: "Josefin Sans", sans-serif;
        }

        h1 {
            text-align: center;
        }

        textarea {
            width: 80%;
            height: 3.25em;
            border: none;
            resize: none;
            
            margin-left: 10%;
            text-align: center;
            display: flex;
            background-color: beige;
            
        }
        .chat {
            height: 800px;
            background-color: white;
            
        }
       
    </style>

</head>

<body>

    <div id="backgroundArea">
        <div id="leftPage">
            <div class="navbar">
                <img class="img" src="./image/로고 누끼.png" width="300">

                <ul class="nav flex-column">
                    <ul class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </ul>
                    <ul class="nav-item">
                        <a class="nav-link" href="#">My Page</a>
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
                <div class="chat_wrap">
                    
                    <div class="chat">
                        <ul>
                            <!-- 동적 생성 -->
                        </ul>
                    </div>
                 

                    <!-- format -->

                    <!-- <div class="chat format">
                        <ul>
                            <li>
                                <div class="sender">
                                    <span></span>
                                </div>
                                <div class="message">
                                    <span></span>
                                </div>
                            </li>
                        </ul>
                    </div> -->
                </div>
                
                
                
            </div>
            <div class="input-div" >
                <textarea placeholder="메세지 입력후 Enter를 눌러주세요."></textarea>
            </div>
        </div>

        <div id="rightPage">
            <div style="margin: 30px; position: fixed; max-width: 450px;">
                <div id="profileCard" class="card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                        style=" object-fit: none;" class="card-img-top" alt="프로필 이미지">
                    <div class="card-body">
                        <h5 class="card-title" style="margin-left: 15%;">smhrd 님 환영합니다</h5>
                        <a href="#" class="btn btn-primary" style="margin-left: 8%">로그아웃</a>
                        <a href="#" class="btn btn-primary" style="margin-left: 5%;">회원정보 수정</a>
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
                            <div class="accordion-body"> 친구목록 띄워주쇼 <code>.accordion-flush</code> class. This is the
                                first item's accordion
                                body.</div>
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
        const Chat = (function () {
            const myName = "blue";

            // init 함수
            function init() {
                // enter 키 이벤트
                $(document).on('keydown', 'div.input-div textarea', function (e) {
                    if (e.keyCode == 13 && !e.shiftKey) {
                        e.preventDefault();
                        const message = $(this).val();

                        // 메시지 전송
                        sendMessage(message);
                        // 입력창 clear
                        clearTextarea();
                    }
                });
            }

            // 메세지 태그 생성
            function createMessageTag(LR_className, senderName, message) {
                // 형식 가져오기
                let chatLi = $('div.chat.format ul li').clone();

                // 값 채우기
                chatLi.addClass(LR_className);
                chatLi.find('.sender span').text(senderName);
                chatLi.find('.message span').text(message);

                return chatLi;
            }

            // 메세지 태그 append
            function appendMessageTag(LR_className, senderName, message) {
                const chatLi = createMessageTag(LR_className, senderName, message);

                $('div.chat:not(.format) ul').append(chatLi);

                // 스크롤바 아래 고정
                $('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
            }

            // 메세지 전송
            function sendMessage(message) {
                // 서버에 전송하는 코드로 후에 대체
                const data = {
                    "senderName": "blue",
                    "message": message
                };

                // 통신하는 기능이 없으므로 여기서 receive
                resive(data);
            }

            // 메세지 입력박스 내용 지우기
            function clearTextarea() {
                $('div.input-div textarea').val('');
            }

            // 메세지 수신
            function resive(data) {
                const LR = (data.senderName != myName) ? "left" : "right";
                appendMessageTag("right", data.senderName, data.message);
            }

            return {
                'init': init
            };
        })();

        $(function () {
            Chat.init();
        });




    </script>



</body>

</html>