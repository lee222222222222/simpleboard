<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>board</title>
<style>

body {
  padding-top: 70px;
  padding-bottom: 30px;
}
a {
	color: black;
}
a:hover {
	text-decoration: none;	
	color: black;
}


</style>
</head>
<body>
<form action="/board/enroll" method="post">
	<div class="container" role="main">
		<h2>board Form</h2>
		<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">
			<div class="mb-3">
				<label for="title">제목</label>
				<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
			</div>		
			<div class="mb-3">
				<label for="writer">작성자</label>
				<input type="text" class="form-control" name="writer" id="writer" placeholder="이름을 입력해 주세요">
			</div>		
			<div class="mb-3">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
			</div>	
		</form>
		<div>
			<button class="btn" style="border: 1px solid #ddd; padding: 7px; margin-bottom: 3px; color: black;">저장</button>
			<a href="/board/list" style="border: 1px solid #ddd; padding: 8px; border-radius: 4px;">목록</a>
		</div>
	</div>
</form>

</body>
</html>