<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="kr.smhrd.dao.T_EVENTDAO"%>
<%@page import="kr.smhrd.entity.T_PLANT"%>
<%@page import="kr.smhrd.dao.T_PLANTDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
        <script src="assets/js/jquery-3.7.0.min.js"></script>
        <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- fullcalendar 언어 CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>

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
        
        .logo {
            width: 100px;
            height: 110px;
            margin-top: 15px;
            margin-bottom: 20px;
            align-items: center;
        }

        #backgroundArea {
            min-height: 100vh;
            display: flex;
            justify-content: space-between;
            /*background-color: rgb(243, 243, 229);*/
            background-color: #F7F7F7;
        }
        
        #leftPage {
            width: 30%;
        }
        
        #mypage_area {
            width: 40%;
            /*background-color: rgb(235, 207, 138);*/
            background-color: #FBF8F1;
        }
        
        #rightPage {
            display: flex;
            flex-direction: column;
            width: 30%;
            border: 0px solid black;
            position: relative;
            align-items: center;
        }
        
        #title {
            background: #83ab85;
            padding: 20px;
            text-align: center;
            font-size: 40px;
            color: white;
            letter-spacing: 5px;
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

        .nav-item {
            margin-top: 10px;
            margin-right: 200px;
        }

        .pro_img {
            width: 200px;
            height: 200px;
            margin-top: 10%;
            margin-left:10%;
           
            /* border-radius: 50%; */
            /* border: 1px solid rgb(0, 31, 21); */
        }
        
        .btn {
            font-size: 20px;
            padding: 10px 15px;
            
            /* border: 3px solid burlywood; */
            background-color: rgb(238, 238, 186);
            color: #703c3c;
            text-transform: uppercase;
            letter-spacing: 5px;
            font-weight: bold;
            position: relative;
            transition: all 0.4s;
            overflow: hidden;
        }

        .btn:focus {
            outline: none;
        }

        .btn::before {
            content: "";
            position: absolute;
            height: 50%;
            width: 50%;
            /* background-color: green; */
            top: 50%;
            left: 0;
            transition: all 0.4s;
            z-index: -1;
        }

        .btn:hover::before {
            transform: translateY(-100%);
        }

        .btn:hover {
            /* color:green;  */
            color:rgb(0, 78, 52); 
            background-color: #83ab85;
         }
        .pro {
            display: flex;
            font-size: 30px;
            margin-left: 30px;
        }
        .plant{
            display: flex;
            flex-flow: column wrap;
            justify-content: space-between;
            padding-top: 75px;
        }
      
    </style>


</head>

<body>
<%
T_PLANTDAO dao = new T_PLANTDAO();
T_EVENTDAO dao2 = new T_EVENTDAO();
int pl_id = Integer.parseInt(request.getParameter("pl_id"));
T_PLANT dto = dao.searchPlantWithId(pl_id);
String events = dao2.getEvents(pl_id);
if(events.length()==2){
	events=null;
}

%>


    <div id="backgroundArea">
        <div id="leftPage">
            <div class="navbar">
                <ul class="nav flex-column">
                    <a class="nav-link active" aria-current="page" href="goMain.do"><img class="img" src="./image/로고새싹누끼.png" width="300"></a>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="goMain.do">홈</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="" href="goSavePost.do">저장게시글 &#x1F4C2;</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="goChatList.do">채팅 &#x1F4AC;</a>
                    </li>
                </ul>
            </div>
        </div>
        <div id="mypage_area" class=" border-start border-end border-1">
        
            <p id="title">plant Page</p>
            <div class="pro">
                <img class="pro_img" src="http://218.157.19.25:8081/jisik/P_FILE/${requestScope.plant.getPL_IMG()}" style="margin-right:15%;">
                <!-- <a class="nav-link" aria-current="" href="#">완료 &#x1F4C2;</a> -->
                
                <div class="plant">
                    <span>식물이름 : <%=dto.getPL_NAME() %></span>
                    <span>함께한날짜 :<%=dto.getPL_START_DT() %></span>
                    <span>식물종류 : <%=dto.getPL_CATE() %></span>
                </div>   
            </div>
            <div id='calendar-container'>
    		<div id='calendar'></div>
  			</div>    
        </div>
           
            
               



        <div id="rightPage">
            <div style="margin: 30px; position: fixed; max-width: 450px;">
                <div id="profileCard" class="card">
                    <img
                  src="http://218.157.19.25:8081/jisik/P_FILE/${sessionScope.user.getU_PROFILE_IMG()}"
                  style="height: 250px; whidgh:250px; object-fit: none;" class="card-img-top"
                  alt="프로필 이미지">
                    <div class="card-body">
                        <h5 class="card-title" style="margin-left: 35%;">${sessionScope.user.getU_ID()} 님 환영합니다🍀</h5>
                        <a href="#" class="btn btn-primary" style="margin-left: 10%">로그아웃</a>
                    </div>
                </div>
                <br>
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
							aria-labelledby="flush-headingOne"
							data-bs-parent="#accordionFlushExample">
							<div class="accordion-body friends">
								
							</div>
						</div>
                </div>
            </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    
    $(document).ready(friendSelect());
    
    
    (function(){
        $(function(){
          // calendar element 취득
          var calendarEl = $('#calendar')[0];
          let events;
          if(<%=events%>==[]){
        	  events=null;
          }
          else{
        	  events=JSON.parse('<%=events%>');
        	  console.log(events);
          }
          // full-calendar 생성하기
          var calendar = new FullCalendar.Calendar(calendarEl, {
            height: '700px', // calendar 높이 설정
            expandRows: true, // 화면에 맞게 높이 재설정
            slotMinTime: '08:00', // Day 캘린더에서 시작 시간
            slotMaxTime: '20:00', // Day 캘린더에서 종료 시간
            // 해더에 표시할 툴바
            headerToolbar: {
              left: 'prev,next today',
              center: 'title',
              right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
            },
            initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
            initialDate: '2023-05-22', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
            navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
            editable: true, // 수정 가능?
            selectable: true, // 달력 일자 드래그 설정가능
            nowIndicator: true, // 현재 시간 마크
            dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
            locale: 'ko', // 한국어 설정
            eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
              console.log(obj);
            },
            eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
              console.log(obj);
            },
            eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
              console.log(obj);
            },
            select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
              var title = prompt('Event Title:');
              if (title) {
                calendar.addEvent({
                  title: title,
                  start: arg.start,
                  end: arg.end,
                  allDay: arg.allDay
                });
                let start='';
                let end='';
                start+=arg.start.getFullYear();
                end+=arg.end.getFullYear();
                start+='-'+(arg.start.getMonth()+1);
                end+='-'+(arg.end.getMonth()+1);
                start+='-'+(arg.start.getDate());
                end+='-'+(arg.end.getDate());
                $.ajax({
                	url : 'addEvent.do', 
                    type : 'post', 
                    data : {"title":title,
                    	"start":start,
                    	"end":end,
                    	"allDay":arg.allDay,
                    	"pl_id":<%=request.getParameter("pl_id") %>}, 
                    success : function(res){
                       console.log(res);
                       
                    },
                    error : function(e){
                       alert("요청 실패!");
                    }
                });
              }
              calendar.unselect()
            },
            // 이벤트 
            events: events/*[
              {
                title: '오늘부터 구현하기..',
                start: '2023-05-11',
              },
              {
                title: 'Click for Google',
                url: 'http://google.com/', // 클릭시 해당 url로 이동
                start: '2021-07-28'
              }
            ]*/
          });
          // 캘린더 랜더링
          calendar.render();
        });
      })();
    
    
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
    
    
    
    
    
    </script>
</body>

</html>

