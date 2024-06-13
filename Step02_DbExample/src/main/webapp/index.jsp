<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.html</title>
</head>
<body>
	<div class="container">
		<h1>인덱스 페이지 입니다</h1>
		<p>컨텍스트 경로(프로젝트명) : <strong>${pageContext.request.contextPath }</strong></p>
		<ul>
			<li><a href="${pageContext.request.contextPath }/test.jsp">Connection 객체 얻어오기 테스트</a></li>
			<li><a href="${pageContext.request.contextPath }/friend/list.jsp">회원 목록 보기</a></li>
		</ul>
	</div>
</body>
</html>