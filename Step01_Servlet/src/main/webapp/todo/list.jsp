<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 <%  
	List<String> todo = new ArrayList<>();
	todo.add("빨래");
	todo.add("설겆이");
	todo.add("청소");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
</head>
<body>
	<h3>할일 목록</h3>
	<ul>
	<%for(String tmp:todo){%>
		<li><%=tmp %></li>
	<% } %>
	</ul>
</body>
</html>