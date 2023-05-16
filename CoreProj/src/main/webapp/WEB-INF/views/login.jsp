<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            @font-face {
        font-family: 'omyu_pretty';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
        font-weight: normal;
        font-style: normal;
    } 
    * {
      align-items: center;
      box-sizing: border-box;
      font-family: 'omyu_pretty';
    }

    div {
      position: relative;
      width: 300px;
      color:green;
    }

    input {
      font-size: 15px;
      color: #222222;
      width: 300px;
      border: none;
      border-bottom: solid #aaaaaa 1px;
      padding-bottom: 10px;
      text-align: center;
      position: relative;
      background: none;
      z-index: 5;
    }

    input::placeholder {
      color: #aaaaaa;
    }

    input:focus {
      outline: none;
    }
    label {
      position: absolute;
      color: #aaa;
      left: 10px;
      font-size: 20px;
      bottom: 8px;
      transition: all .2s;
      margin: 0 auto;
    }

    input:focus~label,
    input:valid~label {
      font-size: 16px;
      bottom: 40px;
      color: #666;
      font-weight: bold;
    }

    input:focus~span,
    input:valid~span {
      width: 100%;
    }
    .btn{
     text-align: center;
     margin:30px;
     width:200px;
     color: green;
     background-color: beige;

    }
    .inputZone{
    margin-left: 50px;
      margin-top : 30px;
    
    }

    .btn1{
     text-align: center;
     margin:30px;
     width:200px;
     text-align: center;
     color: green;
     background-color: beige;
    }
    .lo_area{
    display: flex;
    flex-direction: column;
      
    }
    .container{
    display: flex;
    flex-direction: column;
    }
    
    form{
    display: flex;
    flex-direction: column;
    }

        </style>
    </head>

    <body>


        <div class="container">
            <div class="lo_area">
                    <div style="text-align: center;"> 로그인 </div>
                <form action="login.do" method="post">

                    <div class="inputZone">
                        <input name="U_ID" type="text" required>
                        <label>ID</label>
                    </div>
                    <div class="inputZone">
                        <input name="U_PW" type="password" required>
                        <label>PASSWORD</label>
                    </div>
                    <button type="submit" class="btn">로그인</button>

                </form>
                <div style="text-align: center;">-----아직 계정이 없으신가요?-----</div><br>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#joinModal">
                    회원가입
                </button>
            </div>

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
                $(document).ready(function () {

                    // 이메일 중복체크 기능
                    // 사용자가 input태그에 입력했을 때 실행
                    var input = $('#inputID');

                    // change : 값이 변경되면 실행 --> 입력과 동시X
                    // input : 값이 입력되면 실행
                    input.on('input', idCheck);


                    let btn_join = $('#btn_join');
                    btn_join.on('click', joinTry);

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
                        url: "check.do",
                        type: "post",
                        data: {
                            "U_ID": value
                        },
                        success: function (res) {
                            var p = $('#checkResult');

                            if (res == "OK") {
                                p.html('사용가능한 아이디 입니다.').css("color", "skyblue");
                            }
                            else {
                                p.html('중복된 아이디 입니다.').css("color", "orange");
                            }

                        },
                        error: function (e) {
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
                        url: "join.do",
                        type: "post",
                        data: {
                            "U_ID": id,
                            "U_PW": pw,
                            "U_NICK": nick
                        },
                        success: function (res) {
                            if (res == "true") {
                                alert("회원가입에 성공했어요");
                                window.location.replace('goLogin.do')
                            }
                            else {
                                alert("회원가입에 실패했어요...");
                            }

                        },
                        error: function (e) {
                            // 요청이 실패하면 실행될 콜백함수
                            alert("요청 실패!");
                        }
                    });
                }


            </script>

    </body>

    </html>