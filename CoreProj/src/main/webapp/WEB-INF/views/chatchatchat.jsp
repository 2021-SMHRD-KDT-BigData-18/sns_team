<%@page import="java.util.List"%>
<%@page import="kr.smhrd.dao.T_CHATTINGDAO"%>
<%@page import="kr.smhrd.entity.T_CHATTING"%>
<%@page import="kr.smhrd.dao.T_CHATROOMDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<%@page import="kr.smhrd.entity.T_USER"%>


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
            /*background-color: rgb(243, 243, 229);*/
<<<<<<< HEAD
=======
             background-color: #F7F7F7;
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git
        }

        #leftPage {
            width: 30%;
             /*background-color: beige(7, 160, 7); */
        }

        #centerPage {
            display: flex;
            flex-direction: column;
            width: 40%;
<<<<<<< HEAD
            background-color: rgb(243, 24, 229);
         }
=======
            /*background-color: rgb(235, 207, 138);*/
        }
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git

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
     
     
     
       *{ margin: 0; padding: 0; }
 
		.chat_wrap .header { font-size: 14px; padding: 15px 0; background: #F18C7E; color: white; text-align: center;  }
		 
		.chat_wrap .chat { padding-bottom: 80px; }
		.chat_wrap .chat ul { width: 100%; list-style: none; }
		.chat_wrap .chat ul li { width: 100%; }
		.chat_wrap .chat ul li.left { text-align: left; }
		.chat_wrap .chat ul li.right { text-align: right; }
		 
		.chat_wrap .chat ul li > div { font-size: 13px;  }
		.chat_wrap .chat ul li > div.sender { margin: 10px 20px 0 20px; font-weight: bold; }
		.chat_wrap .chat ul li > div.message { display: inline-block; word-break:break-all; margin: 5px 20px; max-width: 75%; border: 1px solid #888; padding: 10px; border-radius: 5px; background-color: #FCFCFC; color: #555; text-align: left; }
		 
		.chat_wrap .input-div { position: fixed; bottom: 0; width: 100%; background-color: #FFF; text-align: center; border-top: 1px solid #F18C7E; }
		.chat_wrap .input-div > textarea { width: 100%; height: 80px; border: none; padding: 10px; }
		 
		.format { display: none; }
		       
		#_chatbox{
		background: #eee;
        padding: 15px;
        
		}
		/* #inputMessage{
		width: 90%;
        border-radius: 4px;
        padding: 9px 0;
        border: 0;
		} */
		.send_btn{
			width: 61px;
			height: 43px;
			background-color: #83ab85;
			color:white;
			border:0;
		}





/* 뽀려온거 */


#chatWrap {
    width: 40%;
    /*border: 1px solid #ddd;*/
    background-color: #FBF8F1;
}

#chatHeader {
    /*height: 60px;*/
    text-align: center;
    line-height: 60px;
    font-size: 40px;
    border-bottom: 1px solid #ddd;
    background: #83ab85;
    padding: 20px;
    color: white;
    letter-spacing: 5px;
    
    
}

#chatLog {
    height: 700px;
    overflow-y: auto;
    padding: 10px;
}

.myMsg {
    text-align: right;
}

.anotherMsg {
    text-align: left;
    margin-bottom: 5px;
}

.msg {
    display: inline-block;
    border-radius: 15px;
    padding: 7px 15px;
    margin-bottom: 10px;
    margin-top: 5px;

}

.anotherMsg > .msg {
    background-color: #f1f0f0;

}

.myMsg > .msg {
    background-color: #0084FF;
    color: #fff;
}

.anotherName {
    font-size: 12px;
    display: block;
}

#chatForm {
    display: block;
    width: 100%;
    height: 50px;
    border-top: 2px solid #f0f0f0;
}

#message {
    width: 85%;
    height: calc(100% - 1px);
    border: none;
    padding-bottom: 0;
}

#message:focus {
    outline: none;
}

#chatForm > input[type=submit] {
    outline: none;
    border: none;
    background: none;
    color: #0084FF;
    font-size: 17px;
}
/* 뽀려온거 */

</style>
     

     
</head>
<body>


<%
T_CHATROOMDAO dao = new T_CHATROOMDAO();
T_CHATTINGDAO dao2 = new T_CHATTINGDAO(); 
String u_id = ((T_USER)session.getAttribute("user")).getU_ID();
int roomId = dao.searchRoom(u_id, request.getParameter("f_id"));

List<T_CHATTING> chatRecord = dao2.list(roomId);




%>


    <div id="backgroundArea">
        <div id="leftPage">
            <div class="navbar">
                <a class="nav-link active" aria-current="page" href="goMain.do"><img class="img" src="./image/로고새싹누끼.png" width="300"></a>

                <ul class="nav flex-column">
                    <ul class="nav-item">
                        <a class="nav-link active" aria-current="page" href="goMain.do">Home</a>
                    </ul>
                    <ul class="nav-item">
                        <a class="nav-link" href="goMypage.do?u_id=<%=u_id%>">My Page</a>
                    </ul>
                    <!-- <ul class="nav-item">
                        <a class="nav-link" href="./chatList.html">Chat</a>
                    </ul> -->
                    <!-- <button id="btnPost">글쓰기</button> -->
                </ul>
            </div>
        </div>

        <!-- 뽀려온거 -->
        <div id="chatWrap" class=" border-start border-end border-1">
            <div id="chatHeader">풀채팅</div>

            <%--<% T_USER dto=new T_USER(); dto.setU_ID("smhrd"); session.setAttribute("user", dto); --%>

            <h1>${user.getU_ID()}</h1>
            <input type="hidden" value='${user.getU_ID()}' id='chat_id' />

            <div id="chatLog">
            
            <%for(T_CHATTING val : chatRecord){ %>
            
            <%if(val.getTALKER().equals(u_id)){ %>
            <div class="myMsg">
                    <span class="msg"><%=val.getCHAT_CONTENT() %></span>
                </div>
            <%} else{%>
            <div class="anotherMsg">
            		<span class="anotherName"><%=val.getTALKER() %></span>
                    <span class="msg"><%=val.getCHAT_CONTENT() %></span>
                </div>
            <%} %>
            <%} %>
            
            </div>
            <div id="chatForm">
                <input id="inputMessage" type="text"  autocomplete="off" size="30" onkeyup="enterkey()" placeholder="메시지를 입력하세요">
                <input class = "send_btn" type="submit" value="send" onclick="send()"/>
            </div>
        </div>

    </div>
</div>
<!-- 뽀려온거 끝 -->


    <!-- <div id="centerPage" class=" border-start border-end border-1">
            <div class="chat_list_wrap">
                <div class="header">
                    <span>풀채팅</span>
                </div>

                <%--<% T_USER dto=new T_USER(); dto.setU_ID("smhrd"); session.setAttribute("user", dto); --%>



                    <h1>${user.getU_ID()}</h1>

                        <input type="hidden" value='${user.getU_ID()}' id='chat_id' />
                채팅창 
                    <div id="_chatbox" style="position: fixed; margin-top: 800px; width: 40%;" >
                        <fieldset>
                            <div id="messageWindow"></div>
                            <input id="inputMessage" type="text" onkeyup="enterkey()" />
							<span>&nbsp;<span>
							<input class="send_btn" type="submit" value="send" onclick="send()" />
                        </fieldset>
                    </div>
                    <%-- 
                    <img class="chat" src="./말풍선 이미지.png" />
                    --%>
                 말풍선아이콘 클릭시 채팅창 열고 닫기 
            </div>
        </div> -->
    <div id="rightPage">
        <div style="margin: 30px; position: fixed; max-width: 450px;">
            <div id="profileCard" class="card">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
                    style="height:200px; object-fit: none;" class="card-img-top" alt="프로필 이미지">
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
                            data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
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

// 아이콘 클릭해서 채팅방 까기
/*
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
*/    

</script>
<script type="text/javascript">


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






    var textarea = document.getElementById("chatLog");
    var path='ws://218.157.19.25:8081/jisik/broadcasting/';
    path+=<%=roomId%>
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
        var message = event.data.split(",!,");
        console.log(event.data);
        var sender = message[0];
        var content = message[1];
        if (content == "") {

        } else {
        	if(sender!="<%=u_id%>"){
        		chatHtml=`<div class="anotherMsg">
            <span class="anotherName">\${sender}</span>
            <span class="msg">\${content}</span>
        </div>`;
        	}
        	else{
        		chatHtml=`<div class="myMsg">
            <span class="msg">\${content}</span>
        </div>`;
        	}
        	
        	
	            $("#chatLog").html(
	                    $("#chatLog").html()
	                    +chatHtml);
                
            }
    };
    
    function onOpen(event) {
    /*    $("#messageWindow")
                .html("<p class='chat_content'>채팅에 참여하였습니다.</p>");
    */};
    
    function onError(event) {
        alert(event.data);
    };
    function send() {
        if (inputMessage.value == "") {
        } else {
            /*$("#").html(
                    $("#messageWindow").html()
                            + "<p class='chat_content'>${user.getU_ID()} : "
                            + inputMessage.value
                            + "</p>");*/
        webSocket.send($("#chat_id").val() + ",!," + inputMessage.value);
        }
        inputMessage.value = "";
    };
    //     엔터키를 통해 send함
    function enterkey() {
        if (window.event.keyCode == 13) {
            send();
        }
    };
    //     채팅이 많아져 스크롤바가 넘어가더라도 자동적으로 스크롤바가 내려가게함
    window.setInterval(function() {
        var elem = document.getElementById('chatLog');
        elem.scrollTop = elem.scrollHeight;
    }, 0);
    
    
    
    
    
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
    
    /*if('${user.getU_ID()}'=='aa'){path+='123';}
    else if('${user.getU_ID()}'=='bb'){path+='123';}
    else if('${user.getU_ID()}'=='cc'){path+='456';}
    else if('${user.getU_ID()}'=='dd'){path+='456';}*/
    
    
</script>

    

</body>

</html>






























































<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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

                <!--<% T_USER dto=new T_USER(); dto.setU_ID("smhrd"); session.setAttribute("user", dto); -->



                    <h1>${user.getU_ID()}</h1>

                        <input type="hidden" value='${user.getU_ID()}' id='chat_id' />
                    <!-- 채팅창 -->
                    <div id="_chatbox">
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
    /*$(".chat").on({
        "click" : function() {
            if ($(this).attr("src") == "./말풍선 이미지.png") {
                $(".chat").attr("src", "./말풍선 이미지.png");
                $("#_chatbox").css("display", "block");
            } else if ($(this).attr("src") == "./말풍선 이미지.png") {
                $(".chat").attr("src", "./말풍선 이미지.png");
                $("#_chatbox").css("display", "none");
            }
        }
    });*/
    

</script>
<script type="text/javascript">
    var textarea = document.getElementById("messageWindow");
    var path='ws://218.157.19.25:8081/jisik/broadcasting/';
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
        var message = event.data.split(",!,");
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
            /*$("#messageWindow").html(
                    $("#messageWindow").html()
                            + "<p class='chat_content'>${user.getU_ID()} : "
                            + inputMessage.value
                            + "</p>");*/
        webSocket.send($("#chat_id").val() + ",!," + inputMessage.value);
        }
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
--%>