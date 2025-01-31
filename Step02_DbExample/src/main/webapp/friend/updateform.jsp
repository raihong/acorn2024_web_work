<%@page import="frienddao.java.FriendDao"%>
<%@page import="frienddto.java.FriendDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 수정할 회원의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));

	//2. DB 에서 해당 회원의 정보를 얻어온다. 
	FriendDto dto=new FriendDao().getData(num);
	//3. 회원 수정 양식을 응답한다 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/updateform.jsp</title>
</head>
<body>
	<div class="container">
		<h3>회원정보 수정 양식</h3>
		<form action="update.jsp" method="post">
			<div>
				<label for="num">번호</label>
				<input type="text" name="num" id="num" value="<%=dto.getNum() %>" readonly/>
			</div>
			<div>
				<label for="name">이름</label>
				<input type="text" name="name" id="name" value="<%=dto.getName() %>"/>
			</div>
			<div>
				<label for="pn">핸드폰 번호</label>
				<input type="text" name="pn" id="pn" value="<%=dto.getPn() %>"/>
			</div>
			<button type="submit">수정확인</button>
			<button type="reset">취소</button>
		</form>
	</div>
</body>






</html>