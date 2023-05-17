<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	min-height:100vh;
	display: flex;
	justify-content: space-between;
            background-color: rgb(243, 243, 229);
}

#leftPage {
	width: 30%;
	display: flex;
	justify-content: center;
	background-color: beige(7, 160, 7);
}
@font-face {
            font-family: 'omyu_pretty';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

#centerPage {
	display: flex;
	flex-direction: column;
	width: 40%;
   width: 40%;
   align-items: center;
   background-color: rgb(235, 207, 138);
}
* {
    font-family: 'omyu_pretty';
    background-color: rgb(243, 243, 229);
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

.btn-primary { --bs-bg-opacity: 1;
	background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity))!important;
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
	position: fixed;
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
.btn-primary {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
        }

        #profileCard {
            margin: 50px;
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
            /*background-color: white;*/
            margin-bottom: 10px;
            background-color: rgb(243, 243, 229);
        }

        .postCardImg {
            object-fit: cover;
            border-radius: 10px;
            width: 100%;
        }
/* 
        #searchArea {


            display: flex;
            flex-direction: row;
            width: 30%;
            height: 5%;
            background-color: rgba(255, 255, 255, 0.849);
            position: fixed;
 

        } */

        #btnPost {
            position: fixed;
            top: 70%; 
            /* margin-left: 5%; */
            background-color: rgba(255, 255, 255, 0.849);
        }
        .btnSearch{
            position: fixed;
            background-color: rgba(255, 255, 255, 0.849);
            top: 20%;
            margin-left: 70px;
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
        hr{
        background-color: rgb(243, 243, 229);
        }
</style>

</head>
<body>

	<div id="backgroundArea">
		<div id="leftPage" class="border-end">
			<div class="navbar">
				<img class="img" src="./image/지식창고_로고.png" width="300">

				<ul class="nav flex-column">
					<ul class="nav-item">
						<a class="nav-link active" aria-current="page" href="#">Home</a>
					</ul>
					<ul class="nav-item">
						<a class="nav-link" href="#">My Page</a>
					</ul>
					<ul class="nav-item">
						<a class="nav-link" href="goChatList.do">Chat</a>
					</ul>
					<button class="btnSearch">검색</button>
					<button id="btnPost" onclick="location.href='goWritePost.do'">글쓰기</button>
				</ul>
			</div>

		</div>
		<hr>
		<div id="centerPage" class=" border-start border-end border-1">

			<div class="postList">
				<div class="postCard">
					<div class="card-body">
						<p id="post_id" style="display: none;">${requestScope.post.getP_SEQ()}</p>
						<h5 class="card-title">${requestScope.post.getP_TITLE()}</h5>
						<p class="card-text">${requestScope.post.getU_ID()}</p>
						<p class="card-text">${requestScope.post.getP_CONTENT()}</p>
					</div>
					<img
						src="http://218.157.19.25:8081/jisik/P_FILE/${requestScope.post.getP_FILE()}"
						class="postCardImg" alt="프로필 이미지">

					<div class="card-footer">
						<p></p>
						<hr>
						<div class="footer-menu">
							<button class="btn_like">🌱</button>
							<button class="btn_bookmark">북마크</button>

						</div>
						<hr>
						<div id="cmt_list">
						<p>sdfsdfds</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<hr>
		<div id="rightPage">
			<div style="margin: 30px; position: fixed; max-width: 450px;">
				<div id="profileCard" class="card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitSl2gYO3F8iG3oqSV_5AoA_rsnRy_j0QeZc_CGG-f0fXDdUbRGxcm-ue01PB8CKeS2w&usqp=CAU"
						style="height: 200px; object-fit: none;" class="card-img-top"
						alt="프로필 이미지">
					<div class="card-body">
						<h5 class="card-title" style="margin-left: 15%;">${sessionScope.user.getU_ID()}</h5>
						<a href="#" class="btn btn-primary" style="margin-left: 8%">로그아웃</a>
						<a href="#" class="btn btn-primary" style="margin-left: 5%;">회원정보
							수정</a>
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


	<script>
	/*
		$(document).ready(postLoad());
		function postLoad() {
			$.ajax({
				url : "goMainPost.do",
				type : "post",
				data : {},
				dataType : "json",
				success : function(res) {
					let html='';
					console.log(res);
					console.log('dkssud');
					for(let i=0; i<res.length; i++){
						html='';
						rootpath='P_FILE/';
						html+='<div class="postCard"><div class="card-body"><p id="post_id" style="display: none;">';
						html+=res[i].P_SEQ;
						html+='</p>';
						html+='<h5 class="card-title">';
						html+=res[i].P_TITLE+'</h5>';
						html+='<p class="card-text">'+res[i].U_ID+'</p>';
						html+='<p class="card-text">'+res[i].P_CONTENT+'</p></div>';
						html+='<img src="'+rootpath+res[i].P_FILE+'" class="postCardImg" alt="프로필 이미지">';
						html+='<div class="card-footer"><p></p><hr>';
						html+='<div class="footer-menu"><button class="btn_like">🌱</button>';
						html+='<button class="btn_bookmark">북마크</button></div></div></div>';
						$(".postList").append(html);
						
	                }
					listenerOK();
				},
				error : function(e) {
					// 요청이 실패하면 실행될 콜백함수
					alert("요청 실패!");
				}
			});
		}
		function listenerOK() {
			let post = $('.postCard>.card-body');
			console.log(post);
			post.on('click', goToPost);	
			};
			
			
			
			function goToPost() {
				$(this).children()[0].innerText;
			};
			*/
	</script>

</body>
</html>