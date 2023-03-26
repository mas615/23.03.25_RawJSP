
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="conn_db.jsp" %>

<%
String num=request.getParameter("num");

%>


<html>
<head>
	<meta charset="UTF-8">
<script language=javascript>
	self.window.alert("전송완료");
</script>
<% 
ResultSet rs1 = stmt.executeQuery("select * from bbs where board_number=43");
out.println(rs1.getString('subject'));
rs1.close();
stmt.close();
conn.close();
%>
<% out.print(num); %>
<a href="list_test2.jsp">글쓰기</a>
</head>
<body>
</body>
</html>