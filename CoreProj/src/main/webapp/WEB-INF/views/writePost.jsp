<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Board</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <script src="assets/js/bootstrap.bundle.js"></script>
        <script src="assets/js/jquery-3.7.0.min.js"></script>
<style>
  .postWindow {
    height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
</style>

<body>

  <form class="postWindow" method="post" action="writePost.do" enctype="multipart/form-data">
    <p>제목</p>
    <input type="text" name="title" id="title">
    <p>게시글 입력</p>
    <textarea id="content" name="content" style="width: 570px;height: 300px;size:20px" placeholder="게시할 내용을 입력해주세요"></textarea>
    <p></p>
    <input type="file" name="filename" style="float: right;" accept=".png, .jpg, .jpeg">
    
    <p>해시태그</p>
    <input type="text" name="hashtags" id="hashtags">
    <p></p>
    <button type="submit">게시하기</button>
  </form>

</body>

</html>