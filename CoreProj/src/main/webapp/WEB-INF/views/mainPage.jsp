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
        .card{
            margin: 10px;
        }
        .btn-primary {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
            border-color: green;
}

    </style>


</head>

<body>

    <div id="backgroundArea">
        <div class="border-end border-1" id="leftPage">

            <ul class="nav flex-column">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">홈</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li>
              </ul>
        </div>
        <div id="centerPage">
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
            <p>hello</p>
        </div>
            <div class="border-start border-1" id="rightPage">
                <div class="card" style="width: 95%;">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/9/96/Cercidiphyllum_japonicum_9zz.jpg" style="height:100px; object-fit: none;" class="card-img-top" alt="프로필 이미지">
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