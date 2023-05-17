<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<%@page import="kr.smhrd.entity.T_USER"%>
<%@page import="kr.smhrd.entity.T_CHATTING"%>
<%@page import="kr.smhrd.entity.T_FRIEND"%>


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
            margin: 50px;
            width: 350px;
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
        h1{
            text-align: center;
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

                <%--<% T_USER dto=new T_USER(); dto.setU_ID("smhrd"); session.setAttribute("user", dto); --%>



                    <h1>${user.getU_ID()}</h1>

                        <input type="hidden" value='${user.getU_ID()}' id='chat_id' />
                    <!-- 채팅창 -->
                    <div id="_chatbox" style="display: none">
                        <fieldset>
                            <div id="messageWindow"></div>
                            <br/> <input id="inputMessage" type="text" onkeyup="enterkey()" />
                            <input type="submit" value="send" onclick="send()" />
                        </fieldset>
                    </div>
                    <img class="chat" src="./말풍선 이미지.png" />
                    <!-- 말풍선아이콘 클릭시 채팅창 열고 닫기 -->
            </div>
        </div>

    <div id="rightPage">
        <div style="margin: 30px; position: fixed; max-width: 450px;">
            <div id="profileCard" class="card">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                    style="height:200px; object-fit: none;" class="card-img-top" alt="프로필 이미지">
                <div class="card-body">
                    <h5 class="card-title" style="margin-left: 15%;">${user.getU_ID()}님 환영합니다</h5>
                    <a href="#" class="btn btn-primary" style="margin-left: 8%">로그아웃</a>
                    <a href="#" class="btn btn-primary" style="margin-left: 5%;">회원정보 수정</a>
                </div>
            </div>

            <div class="accordion" id="friendList">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="btn_friendList">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                            친구목록
                        </button>
                    </h2>
                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                        data-bs-parent="#accordionFlushExample">
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

// 아이콘 클릭해서 채팅방 까기
    $(".chat").on({
        "click" : function() {
            if ($(this).attr("src") == "./말풍선 이미지.png") {
                $(".chat").attr("src", "./말풍선 이미지.png");
                $("#_chatbox").css("display", "block");
            } else if ($(this).attr("src") == "./말풍선 이미지.png") {
                $(".chat").attr("src", "./말풍선 이미지.png");
                $("#_chatbox").css("display", "none");
            }
        }
    });
    

</script>
<script type="text/javascript">
    var textarea = document.getElementById("messageWindow");
    var path='ws://localhost:8081/jisik/broadcasting/';
    if('${user.getU_ID()}'=='aa'){path+='123';}
    else if('${user.getU_ID()}'=='bb'){path+='123';}
    else if('${user.getU_ID()}'=='cc'){path+='456';}
    else if('${user.getU_ID()}'=='dd'){path+='456';}
    var webSocket = new WebSocket(path);
    var inputMessage = document.getElementById('inputMessage');
    webSocket.onerror = function(event) {
        onError(event)
    };
    webSocket.onopen = function(event) {
        onOpen(event)
    };
    webSocket.onmessage = function(event) {
        onMessage(event)
    };
    function onMessage(event) {
        var message = event.data.split("|");
        var sender = message[0];
        var content = message[1];
        if (content == "") {

        } else {
            if (content.match("/")) {
                if (content.match(("/" + $("#chat_id").val()))) {
                    var temp = content.replace("/" + $("#chat_id").val(),
                            "(귓속말) :").split(":");
                    if (temp[1].trim() == "") {
                    } else {
                        $("#messageWindow").html(
                                $("#messageWindow").html()
                                        + "<p class='whisper'>"
                                        + sender
                                        + content.replace("/"
                                                + $("#chat_id").val(),
                                                "(귓속말) :") + "</p>");
                    }
                } else {
                }
            } else {
                if (content.match("!")) {
                    $("#messageWindow")
                            .html(
                                    $("#messageWindow").html()
                                            + "<p class='chat_content'><b class='impress'>"
                                            + sender + " : " + content
                                            + "</b></p>");
                } else {
                    $("#messageWindow").html(
                            $("#messageWindow").html()
                                    + "<p class='chat_content'>" + sender
                                    + " : " + content + "</p>");
                }
            }
        }
    }
    function onOpen(event) {
        $("#messageWindow")
                .html("<p class='chat_content'>채팅에 참여하였습니다.</p>");
    }
    function onError(event) {
        alert(event.data);
    }
    function send() {
        if (inputMessage.value == "") {
        } else {
            $("#messageWindow").html(
                    $("#messageWindow").html()
                            + "<p class='chat_content'>${user.getU_ID()} : "
                            + inputMessage.value
                            + "</p>");
        }
        webSocket.send($("#chat_id").val() + "|" + inputMessage.value);
        inputMessage.value = "";
    }
    //     엔터키를 통해 send함
    function enterkey() {
        if (window.event.keyCode == 13) {
            send();
        }
    }
    //     채팅이 많아져 스크롤바가 넘어가더라도 자동적으로 스크롤바가 내려가게함
    window.setInterval(function() {
        var elem = document.getElementById('messageWindow');
        elem.scrollTop = elem.scrollHeight;
    }, 0);
</script>

    

</body>

</html>