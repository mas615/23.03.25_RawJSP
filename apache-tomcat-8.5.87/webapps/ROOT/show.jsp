<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>

<%
String num=request.getParameter("num");

%>


<html>
<head>
	<meta charset="UTF-8">


<% 
ResultSet rs1 = stmt.executeQuery("select * from bbs where board_number=" + num);
if(rs1.next()){
out.println("제목 : "+rs1.getString("subject") + "<br>");
out.println("작성자 : "+rs1.getString("name"));
out.println(" : "+rs1.getString("ip") + "<br>");
out.println("Email : "+rs1.getString("email") + "<br>");
out.println("작성일시 : "+rs1.getString("wrietime") + "<br>");
out.println("내용 : "+rs1.getString("memo") + "<br>");
}else{
	out.println("없는 게시글입니다.");
}
rs1.close();
stmt.close();
conn.close();
%>
<a href="board.jsp">목록보기</a>
</head>
<body>
</body>
</html>