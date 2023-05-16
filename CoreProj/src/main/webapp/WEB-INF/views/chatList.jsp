<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<script src="assets/js/bootstrap.bundle.js"></script>

<style>
#backgroundArea {
	display: flex;
	justify-content: space-between;
}

#leftPage {
	width: 30%;
}

#centerPage {
	width: 40%;
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

.btn-primary { 
	--bs-bg-opacity: 1;
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
}

#btnPost {
	position: fixed;
	top: 70%;
}

.chatList {
	padding: 0;
	min-height: 100vh;
	list-style-type: none;
}

.chatList>li {
	height: 100px;
	margin: 10px;
	background-color: white;
	border-radius: 10px;
}
</style>


</head>

<body>

	<div id="backgroundArea">
		<div id="leftPage">
			<div class="navbar">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="goMain.do">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="#">채팅</a></li>
				</ul>
			</div>

		</div>


		<div id="centerPage" class=" border-start border-end border-1">
			<ul class="chatList">
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>
				<li>zz</li>
				<li>dd</li>
				<li>ff</li>


			</ul>
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


	<script>
		let chatList = document.getElementsByClassName('chatList')[0];
	</script>


</body>

</html>