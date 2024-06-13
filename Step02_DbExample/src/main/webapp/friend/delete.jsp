<%@page import="frienddao.java.FriendDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. Get 방식 파라미터로 전달되는 삭제할 회원의 번호를 얻어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	//2. MemberDao 객체를 이용해서 실제 DB에서 삭제
	new FriendDao().delete(num);
	//3. 응답하기
	//특정 경로로 요청을 다시 하라는 리다이렉트 응답하기
	// list.jsp => delete.jsp => list.jsp 이런 이동이기 때문에 마치 새로고침하는듯한 느낌을 줄 수 있다.
	String cPath=request.getContextPath();
	
	//response.sendRedirect("list.jsp"); 
	//위에 있는 코드는 응답을 나타내는 코드고 위에서 응답이 끝남으로 alert 메세지를 사용할 수 없다.
	//따라서 alert 메세지를 띄우고싶으면 script 영역에 새롭게 만들어야함
%>
<!DOCTYPE html>
<html>	
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("삭제 했습니다.");
		location.href="list.jsp";
	</script>
</body>
</html>