<%@page import="frienddao.java.FriendDao"%>
<%@page import="frienddto.java.FriendDto"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	FriendDao dao=new FriendDao();
	List<FriendDto> list=dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/list.jsp</title>
</head>
<body>
	<body>
	<a href="insertform.jsp">회원 추가</a>
	<a href="${pageContext.request.contextPath }/friend/insertform.jsp">회원추가</a>
	<h3>멤버 목록 입니다</h3>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>핸드폰번호</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%for(FriendDto tmp:list){%>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getPn() %></td>
				<td><a href="updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
				<td><a href="${pageContext.request.contextPath}/friend/delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
			</tr>
	<%} %>
		</tbody>
	</table>
</body>
</body>
</html>

