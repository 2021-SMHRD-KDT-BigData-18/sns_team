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
        body{
            background-color: rgba(26, 255, 0, 0.166);
        }

        img {
        width: 300px;
        height: 400px;
        position: relative;
        top: 100px;
        margin-top: 250px;
        margin-left: 400px;
        display: inline-block;
        animation: bounce .8s ease infinite alternate;
        text-shadow: 0 1px 0 #CCC,
                    0 2px 0 #CCC,
                    0 3px 0 #CCC,
                    0 4px 0 #CCC,
                    0 5px 0 #CCC,
                    0 6px 0 transparent,
                    0 7px 0 transparent,
                    0 8px 0 transparent,
                    0 9px 0 transparent,
                    0 10px 10px rgba(0, 0, 0, .4);
        }
        h1 img:nth-child(2) { animation-delay: .1s; }
        h1 img:nth-child(3) { animation-delay: .2s; }
        h1 img:nth-child(4) { animation-delay: .3s; }
        h1 img:nth-child(5) { animation-delay: .4s; }
        h1 img:nth-child(6) { animation-delay: .5s; }
        h1 img:nth-child(7) { animation-delay: .6s; }
        h1 img:nth-child(8) { animation-delay: .7s; }

        @keyframes bounce {
        100% {
            top: -20px;
            text-shadow: 0 1px 0 #CCC,
                        0 2px 0 #CCC,
                        0 3px 0 #CCC,
                        0 4px 0 #CCC,
                        0 5px 0 #CCC,
                        0 6px 0 #CCC,
                        0 7px 0 #CCC,
                        0 8px 0 #CCC,
                        0 9px 0 #CCC,
                        0 50px 25px rgba(0, 0, 0, .2);
        }
        }

        
        .lo_area{
            width: 300px;
            height: 400px;
            text-align: center;
            font-size: 50px;
            font-weight: bold;
            border:"1px solid black";
        }


    </style>
</head>
<body>
    <div>
        <img src="./image/새싹.png">
    </div>
    <div class="lo_area" >
        <span>로그인</span>
        <form action="login.do" method="post">
            <input name="U_ID" type="text" placeholder="ID를 입력하세요"><br>
            <input name="U_PW" type="password" placeholder="PW를 입력하세요"><br>
            <input type="submit" value="LogIn" class="button fit"><br>
            <span>-----계정이 없으신가요?-----</span><br>
            <input type="submit" value="JoinUs" class="button fit"><br>

        </form>
    </div>



</body>
</html>