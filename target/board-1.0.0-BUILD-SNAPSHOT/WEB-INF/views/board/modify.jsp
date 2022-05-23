<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>modify</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<style>
body {
  padding-top: 70px;
  padding-bottom: 30px;
}

</style>
</head>
<body>
	<form id="modifyForm" action="/board/modify" method="post">
	<div class="container" role="main">
		<h2>modify</h2>
			<div class="mb-3">
				<label>번호</label>
				<input name="bno" class="form-control" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
			</div>		
			<div class="mb-3">
				<label>제목</label>
				<input name="title" class="form-control" value='<c:out value="${pageInfo.title}"/>' >
			</div>		
			<div class="mb-3">
				<label>내용</label>
				<textarea rows="3" class="form-control" name="content"><c:out value="${pageInfo.content}"/></textarea>
			</div>	
			<div class="mb-3">
				<label>작성자</label>
				<input name="writer" class="form-control" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' >
			</div>	
			<div class="mb-3">
				<label>등록일</label>
				<input name="regdater" class="form-control" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>' >
			</div>	
			<div class="mb-3">
				<label>수정일</label>
				<input name="updateDate" class="form-control" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>' >
			</div>
			<div>
				<a class="btn" id="list_btn" style="border: 1px solid #ddd;">목록</a>
				<a class="btn" id="modify_btn" style="border: 1px solid #ddd;">완료</a>
				<a class="btn" id="delete_btn" style="border: 1px solid #ddd;">삭제</a>
				<a class="btn" id="cancel_btn" style="border: 1px solid #ddd;">취소</a>
			</div>
	</form>
	<form id="infoForm" action="/board/modify" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
	</form>
<script>

	let form = $("#infoForm");
	let mForm = $("#modifyForm");

	/* 목록 페이지 이동 버튼 */

	$("#list_btn").on("click", function(e) {
		form.find("#bno").remove();
		form.attr("action", "/board/list");
		form.submit();
	});

	/* 수정 하기 버튼 */
	$("#modify_btn").on("click", function(e) {
		mForm.submit();
	});

	/* 취소 버튼 */
	$("#cancel_btn").on("click", function(e) {
		form.attr("action", "/board/get");
		form.submit();
	});
	
	/* 삭제 버튼 */
    $("#delete_btn").on("click", function(e){
        form.attr("action", "/board/delete");
        form.attr("method", "post");
        form.submit();
    });
	
</script>	
</body>
</html>