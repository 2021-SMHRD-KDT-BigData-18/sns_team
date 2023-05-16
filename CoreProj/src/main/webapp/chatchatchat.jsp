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
#backgroundArea {
	display: flex;
	justify-content: space-between;
}

#leftPage {
	width: 30%;
}

#centerPage {
	display: flex;
	flex-direction: column;
	width: 40%;
	align-items: center;
	background-color: gray;
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
	width: 400px;
	position: fixed;
	margin: 10px;
	background-color: aquamarine;
	align-items: flex-end;
}

.btn-primary { -
	-bs-bg-opacity: 1;
	background-color: rgba(var(- -bs-success-rgb), var(- -bs-bg-opacity))
		!important;
	border-color: green;
}

#profileCard {
	margin: 10px;
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
</style>


</head>

<body>

	<div id="backgroundArea">
		<div id="leftPage">
			<div class="navbar">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./chatList.html">채팅</a></li>
				</ul>
				<button id="btnPost">글쓰기</button>
			</div>

		</div>


		<div id="centerPage" class=" border-start border-end border-1">
			<!-- 로그인한 상태일 경우와 비로그인 상태일 경우의 chat_id설정 -->

			<%
			T_USER dto = new T_USER();
			dto.setU_ID("ssdf");
			session.setAttribute("user", dto);
			%>



			<h1>${user.getU_ID()}</h1>

			<c:if test="${(login.id ne '') and !(empty login.id)}">
				<input type="hidden" value='${login.id }' id='chat_id' />
			</c:if>
			<c:if test="${(login.id eq '') or (empty login.id)}">
				<input type="hidden" value='<%=session.getId().substring(0, 6)%>'
					id='chat_id' />
			</c:if>
			<!--     채팅창 -->
			<div id="_chatbox" style="display: none">
				<fieldset>
					<div id="messageWindow"></div>
					<br /> <input id="inputMessage" type="text" onkeyup="enterkey()" />
					<input type="submit" value="send" onclick="send()" />
				</fieldset>
			</div>
			<img class="chat" src="./말풍선 이미지.png" />
			<!-- 말풍선아이콘 클릭시 채팅창 열고 닫기 -->

		</div>
		<div id="rightPage">
			<div style="margin: 0 10px; position: fixed; max-width: 450px;">
				<div id="profileCard" class="card">
					<img
						src="https://upload.wikimedia.org/wikipedia/commons/9/96/Cercidiphyllum_japonicum_9zz.jpg"
						style="height: 100px; object-fit: none;" class="card-img-top"
						alt="프로필 이미지">
					<div class="card-body">
						<h5 class="card-title">지식창고지기</h5>
						<p class="card-text">smhrd0512</p>
						<a href="#" class="btn btn-primary">회원정보 수정</a>
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
							<div class="accordion-body">
								Placeholder content for this accordion, which is intended to
								demonstrate the
								<code>.accordion-flush</code>
								class. This is the first item's accordion body.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
						title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<span>안녕하세요 반가워요</span>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Like</button>
					<button type="button" class="btn btn-primary">bookmark</button>
				</div>
				<div class="modal-footer"></div>
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
		var webSocket = new WebSocket('ws://localhost:8081/jisik/broadcasting');
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