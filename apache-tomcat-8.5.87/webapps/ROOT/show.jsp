<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>
<%@ include file="action/conn_db2.jsp" %>

<%
String num=request.getParameter("num");

%>


<html>
<head>
	<meta charset="UTF-8">


<% 
rs2 = stmt2.executeQuery("select * from bbs where board_number=" + num);
if(rs2.next()){
out.println("제목 : "+rs2.getString("subject") + "<br>");
out.println("작성자 : "+rs2.getString("name"));
out.println(" : "+rs2.getString("ip") + "<br>");
out.println("Email : "+rs2.getString("email") + "<br>");
out.println("작성일시 : "+rs2.getString("wrietime") + "<br>");
out.println("내용 : "+rs2.getString("memo") + "<br>");
}else{
	out.println("없는 게시글입니다.");
}
rs2.close();
stmt2.close();
conn2.close();
%>
<a href="board.jsp">목록보기</a>
</head>
<body>
</body>
</html>