<%@page import="kr.smhrd.dao.T_USERDAO"%>
<%@page import="kr.smhrd.entity.T_USER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

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
        body{
            background-color: rgb(243, 243, 229);
        }
        
        .logo{
            width: 100px;
            height: 110px;
            margin-top: 15px;
            margin-bottom: 20px;
        }
        
        #backgroundArea {
            min-height: 100vh;
            display: flex;
            justify-content: space-between;
        }
        
        #leftPage {
            width: 30%;
            /* text-align: right; */
            /* border: 1px solid rgba(35, 129, 21, 0.1); */
        }
        
        
        .nav {
            position: fixed;
            text-align: left;
            font-size: 30px;
        }
        
        .navbar {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .nav-item{
            margin-top: 10px;
            margin-right: 200px;
            
        }
        
        #mypage_area {
            display: flex;
            flex-direction: column;
            width: 90%;
            /* height: 100%; */
            font-size: 30px;
            margin-bottom: 10px;
        }
        
        .my_info{
            /* background-color: rgba(35, 129, 21, 0.1); */
            /* border: 1px solid rgba(35, 129, 21, 0.1); */
            /* background-color: rgba(0, 62, 15, 0.165); */
            font-size: 25px;
            padding: 20px;
        }
        
        .pro_img{
            width: 125px;
            height: 125px;
            /* margin-top: 10px; */
            border-radius: 50%;
            border: 1px solid rgb(0, 31, 21);
        }
        
        .addfr_img{
            width: 110px;
            height: 110px;
            margin-left: 100px;
            border-radius: 50%;
            border: 1px solid rgb(0, 31, 21);
        }
        
        .my_name{
            margin-top: 10px;
            margin-left: 10px;
        }
        .p_p_info span{
            color: beige;
            background-color: rgb(0, 78, 52);
            text-align: center;
        }
        
        .my_post{
            /* color: beige;
            width: 160px;
            text-align: center; */
            margin-top: 120px;
        }
        .mypa_img{
            width: 200px;
            height: 100px;
            display: flex;
            flex-flow: row nowrap;
        }
        /* span{
            color: beige;
            background-color: rgb(0, 78, 52);
            text-align: center;
            
        } */
        .pa_add{
            margin-left: 600px;
        }
        .pa_area{
            width: 200px;
            height: 200px;
            border: 1px solid black;

        }
        .pa_area_img{
            width: 200px;
            height: 200px;
        }
        button{
            margin-left: 700px;
        }
     
        </style>


</head>

<body>

<%
	T_USERDAO dao = new T_USERDAO();
	T_USER friend = dao.searchUser((request.getParameter("u_id")));
%>


    <div id="backgroundArea">
        <div id="leftPage" class="border-end">
            <div class="navbar">
                <ul class="nav flex-column">
                    <img class=logo src="./image/새싹 누끼.png">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="goMain.do">홈</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="./chatList.html">채팅방 &#x1F4AC;</a>
                    </li> -->
                </ul>
            </div>
        </div>
        <div id="mypage_area"><br>
            <hr>
            <div class="my_info">
                <p class="my_id"><%=friend.getU_ID()%></p>
                <img class="pro_img" src="./image/새싹 누끼.png">
                <img class="addfr_img" src="./image/새싹 누끼.png">
                <button id="btn_follow">풀링</button><br><br>
                <p class="my_name"> <%=friend.getU_NICK() %> </p>
                <div class="p_p_info">
                    <div class="my_pa">
                        <span>창고지기 식물</span>
                        <div class="mypa_img">
                            <div class="pa_area">
                                <img class="pa_area_img" src="./image/새싹.png">
                            </div>
                            <div class="pa_area">
                                <img class="pa_area_img" src="./image/새싹.png">
                            </div>
                        </div>
                    </div>
                    <div class="my_post">
                        <span >게시글</span>
                        <div class="pa_area">
                            <img class="pa_area_img" src="./image/새싹.png">
                        </div>
                        <p> </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <script type="text/javascript">
    
    let btn_follow = $('#btn_follow');
    btn_follow.on('click',follow);
    
    function follow() {
		$.ajax({
			url: "follow.do",
		    type: "POST",
		    dataType: "json",
		    data: p_seq,
		    success:
		    	function(data){      					
		    	alert("친추 완료") ;
		    },   
		    error: 
		    function (request, status, error){ 
		      alert("친추 취소") ;
		    }
		});
	}
    
    </script>
    
    
    
</body>

</html>