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
    <script src="assets/js/jquery-3.7.0.min.js"></script>
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

        </form>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#joinModal">
                        회원가입
                    </button>
    </div>


<span>-----계정이 없으신가요?-----</span><br>

    </form>
    </div>


    <div class="modal fade" id="joinModal" tabindex="-1" aria-labelledby="joinModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="text-align: center;">
                    <h1 class="modal-title fs-5" id="joinModalLabel">회원가입</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                    <div style="display: flex; flex-direction: column; align-items: center;">
                        <span>아이디</span>
                        <input type="text" id="inputID" name="U_ID" placeholder="아이디를 입력해주세요.">
                        <span id="checkResult"></span>
                        <br>
                        <span>비밀번호</span>
                        <input type="password" id="inputPW" name="U_PW" placeholder="비밀번호를 입력해주세요.">
                        <br>
                        <span>닉네임</span>
                        <input type="text" id="inputNICK" name="U_NICK" placeholder="닉네임을 입력해주세요.">
                    </div>
                <div class="modal-footer">
                    <button type="button" id="btn_join" class="btn btn-primary">가입</button>
                </div>
                <div class="modal-footer">

            </div>
        </div>
    </div>



<script type="text/javascript">
		// 해당 문서가 다 준비되면 실행한다.
		$(document).ready(function() {

			// 이메일 중복체크 기능
			// 사용자가 input태그에 입력했을 때 실행
			var input = $('#inputID');

			// change : 값이 변경되면 실행 --> 입력과 동시X
			// input : 값이 입력되면 실행
			input.on('input', idCheck);
			
			
			let btn_join = $('#btn_join');
			btn_join.on('click',joinTry);

		});

		//태그의 ID와 함수이름이 동일하면 안됨!
		function idCheck() {
			// input에 입력된 값이 DB에 있는지 확인
			// input에 입력된 값
			// this : 이벤트 대상을 가리킴

			var value = $(this).val();
			console.log(value);
			// check.do라고 요청
			// Post 방식
			// 입력받은 값을 가지고
			// 비동기통신(Ajax) 방식
			
			$.ajax({
				url : "check.do",
				type : "post",
				data : {
					"U_ID":value
				},
				success : function(res){
					var p = $('#checkResult');
					
					if(res=="OK"){
						p.html('사용가능한 아이디 입니다.').css("color","skyblue");
					}
					else{
						p.html('중복된 아이디 입니다.').css("color","orange");
					}
					
				},
				error : function(e) {
					// 요청이 실패하면 실행될 콜백함수
					alert("요청 실패!");
				}
			});
		
		};
		
		function joinTry() {
			let id = $('#inputID').val();
			let pw = $('#inputPW').val();
			let nick = $('#inputNICK').val();
			console.log(id);
			console.log(pw);
			console.log(nick);
			$.ajax({
				url : "join.do",
				type : "post",
				data : {
					"U_ID":id,
					"U_PW":pw,
					"U_NICK":nick
				},
				success : function(res){					
					if(res==true){
						alert("회원가입에 성공했어요");
						window.location.replace('goLogin.do') 
					}
					else{
						alert("회원가입에 실패했어요...");
					}
					
				},
				error : function(e) {
					// 요청이 실패하면 실행될 콜백함수
					alert("요청 실패!");
				}
			});
		}
		
		
	</script>

</body>
</html>