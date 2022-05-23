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

<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 <style>
 	a { color: black; }
 	a:hover { text-decoration: none; }
 	body {
 	 padding-top: 70px;
 	 padding-bottom: 30px;
	}
 </style>
</head>
<body>
<div class="container">
	<h2>board list</h1>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="list">
            <tr>
                <td><c:out value="${list.bno}"/></td>
                <td>
                	<a class="move" href='<c:out value="${list.bno}"/>'>
      					<c:out value="${list.title}"/>
  					</a>
                </td>
                <td><c:out value="${list.writer}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.regdate}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updateDate}"/></td>
            </tr>
       	</c:forEach>
	</table>
	<a href="/board/enroll" style="border: 1px solid #ddd; padding: 5px;">글쓰기</a>
	<form id="moveForm" method="get">    
    </form>
</div>

<script>
$(document).ready(function(){
	
	let result = '<c:out value="${result}"/>';
	
	checkAlert(result);
	
	function checkAlert(result){
		
		if(result === ''){
			return;
		}
		
		if(result === "enroll success"){
			alert("등록이 완료되었습니다.");
		}
		
		if(result === "modify success"){
            alert("수정이 완료되었습니다.");
        }
		
		if(result === "delete success"){
            alert("삭제가 완료되었습니다.");
        }
		
	}	
	
});

	let moveForm = $("#moveForm");

	$(".move").on("click", function(e){
    	e.preventDefault();
    
  	  moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
    	moveForm.attr("action", "/board/get");
    	moveForm.submit();
	});
</script>

</body>
</html>