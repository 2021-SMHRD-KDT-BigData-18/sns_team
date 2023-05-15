<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

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
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
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
    </style>


</head>

<body>

    <div id="backgroundArea">
        <div id="leftPage">
            <div class="navbar">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">홈</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">마이페이지</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./chatList.html">채팅</a>
                    </li>
                </ul>
                <button id="btnPost">글쓰기</button>
            </div>

        </div>


        <div id="centerPage" class=" border-start border-end border-1">
            <div id="searchArea">
                <input type="text" class="form-control" placeholder="Recipient's username"
                    aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-primary" type="button" id="button-addon2" style="width: 90px;">검색</button>
            </div>
            <div class="postList">
                <div class="postCard">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Launch demoㄴㄴㄴ modal
                    </button>

                </div>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
                <p>안녕</p>
            </div>
        </div>
        <div id="rightPage">
            <div style="margin: 0 10px; position: fixed; max-width: 450px;">
                <div id="profileCard" class="card">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/9/96/Cercidiphyllum_japonicum_9zz.jpg"
                        style="height:100px; object-fit: none;" class="card-img-top" alt="프로필 이미지">
                    <div class="card-body">
                        <h5 class="card-title">지식창고지기</h5>
                        <p class="card-text">smhrd0512</p>
                        <a href="#" class="btn btn-primary">회원정보 수정</a>
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
                            <div class="accordion-body">Placeholder content for this accordion, which is intended to
                                demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion
                                body.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <span>안녕하세요 반가워요</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Like</button>
                    <button type="button" class="btn btn-primary">bookmark</button>
                </div>
                <div class="modal-footer">

                </div>
            </div>
        </div>
    </div>

</body>

</html>