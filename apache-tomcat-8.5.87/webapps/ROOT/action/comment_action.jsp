<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.*,java.io.*"%>
<%@ include file="conn_db_pstmt.jsp" %>

<% 
request.setCharacterEncoding("utf-8");
String s_comment=request.getParameter("comment");
String s_bo_num=request.getParameter("bo_num"); 
String s_co_name=request.getParameter("co_name"); 
%>

<%
try {
	

	String str_sql = "INSERT INTO retable (BO_NUM,NAME,REMEMO,TIME) VALUES(?,?,?,TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'))";
	PreparedStatement pstmt = conn.prepareStatement(str_sql);
	pstmt.setNString(1,s_bo_num);
	pstmt.setNString(2,s_co_name);
	pstmt.setNString(3,s_comment);
	pstmt.executeUpdate();
	pstmt.close(); 
	conn.close();

} catch (Exception e) {
	out.println(e);
} ;
%>


<html>
<head>
	<meta charset="UTF-8">
<script language=javascript>
	self.window.alert("댓글 작성 완료<%= s_comment %>");
	location.href="../show.jsp?num=<% out.print(s_bo_num); %>";
	
	
</script>
</head>
<body>
</body>
</html>