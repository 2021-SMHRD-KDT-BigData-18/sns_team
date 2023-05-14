<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/bootstrap.css">
<script src="assets/js/bootstrap.bundle.js"></script>

<style>
#backgroundArea {
	display: flex;
	height: 100vh;
	justify-content: space-between;
}

#leftPage {
	width: 30%;
}

#centerPage {
	width: 40%;
}

#rightPage {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 30%;
}

.card {
	margin: 10px;
}

.btn-primary { -
	-bs-bg-opacity: 1;
	background-color: rgba(var(- -bs-success-rgb), var(- -bs-bg-opacity))
		!important;
	border-color: green;
}

.nav-pills {
	
}
</style>


</head>

<body>
	<div id="backgroundArea">
		<div class="border-end border-1" id="leftPage">

			<div class="d-flex align-items-start">
				<div class="nav flex-column nav-pills me-3" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">
					<button class="nav-link active" id="v-pills-home-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button"
						role="tab" aria-controls="v-pills-home" aria-selected="true">Home</button>
					<button class="nav-link" id="v-pills-profile-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-profile"
						type="button" role="tab" aria-controls="v-pills-profile"
						aria-selected="false">Profile</button>
					<button class="nav-link" id="v-pills-disabled-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-disabled"
						type="button" role="tab" aria-controls="v-pills-disabled"
						aria-selected="false" disabled>Disabled</button>
					<button class="nav-link" id="v-pills-messages-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-messages"
						type="button" role="tab" aria-controls="v-pills-messages"
						aria-selected="false">Messages</button>
					<button class="nav-link" id="v-pills-settings-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-settings"
						type="button" role="tab" aria-controls="v-pills-settings"
						aria-selected="false">Settings</button>
				</div>

			</div>
		</div>
		<div id="centerPage">
			<div class="tab-content" id="v-pills-tabContent">
				<div class="tab-pane fade show active" id="v-pills-home"
					role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
					aria-labelledby="v-pills-profile-tab" tabindex="0">hihi</div>
				<div class="tab-pane fade" id="v-pills-disabled" role="tabpanel"
					aria-labelledby="v-pills-disabled-tab" tabindex="0">hihihihi</div>
				<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
					aria-labelledby="v-pills-messages-tab" tabindex="0">hihihihihihi</div>
				<div class="tab-pane fade" id="v-pills-settings" role="tabpanel"
					aria-labelledby="v-pills-settings-tab" tabindex="0">hihihihihihihihi</div>
			</div>
		</div>
		<div class="border-start border-1" id="rightPage">
			<div class="card" style="width: 95%;">
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

		</div>
	</div>


</body>

</html>