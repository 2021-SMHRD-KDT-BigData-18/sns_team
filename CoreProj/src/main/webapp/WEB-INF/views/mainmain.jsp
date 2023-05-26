<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        
        @import url("https://fonts.googleapis.com/css?family=Montserrat:400,400i,700");
        @font-face {
            font-family: 'omyu_pretty';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }
        * {
            font-family: 'omyu_pretty';
        }
    body {
    height: 100vh;
    position: relative;
    /* background: #DCD7C9; */
    background-color: rgb(243, 243, 229);
    overflow: hidden;
    }

    .container {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    display: flex;
    justify-content: center;
    align-items: center;
    }
    .container::before {
    content: "";
    background: #40513B;
    /* background: #2C3639; */
    width: 100%;
    height: 0%;
    position: absolute;
    bottom: 0;
    transform-origin: bottom;
    animation: splash 3s cubic-bezier(0.8, 0.2, 0.2, 0.8) forwards;
}

img{
    margin-bottom: 100px;
    animation: blurMe 1.4s ease-in-out forwards;
    animation-delay: calc(2s + 200ms * 6);
    opacity: 0;
}

span {
    font-family: "Montserrat";
    text-transform: uppercase;
    font-weight: bold;
    font-size: 80px;
    color: linear-gradient(-30deg, #cfd9df, #e2ebf0);
        letter-spacing: 2rem;
        /*   filter: blur(3px); */
        animation: blurMe 1.4s ease-in-out forwards;
        opacity: 0;
    }

    span:nth-child(2n+1) {
    animation-delay: calc(2s + 200ms * 1);
    }

    span:nth-child(2n+2) {
    animation-delay: calc(2s + 200ms * 2);
    }

    span:nth-child(2n+3) {
    animation-delay: calc(2s + 200ms * 3);
    }

    span:nth-child(2n+4) {
    animation-delay: calc(2s + 200ms * 4);
    }

    span:nth-child(2n+5) {
    animation-delay: calc(2s + 200ms * 5);
    }

    span:nth-child(2n+6) {
    animation-delay: calc(2s + 200ms * 6);
    }

    @keyframes blurMe {
    0% {
        filter: blur(10px);
        opacity: 0;
    }
    100% {
        filter: blur(0px);
        opacity: 1;
    }
    }
    @keyframes splash {
    0% {
        height: 0%;
    }
    50% {
        height: 100%;
    }
    100% {
        top: 0;
        height: 0%;
    }
    }

    </style>
</head>
<body>
    <div class="container">
        <span>지</span>
        <span>식</span>
        <span>창</span>
        <span>고</span> 
        <img src="./image/새싹누끼.png" onclick="goMain()">
    </div>
    
    
    <script type="text/javascript">
    
    function goMain(){
    location.href = 'goMain.do';
    }
    </script>

</body>
</html>