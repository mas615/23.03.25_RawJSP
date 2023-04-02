
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.*,java.io.*"%>
<%@ include file="conn_db_pstmt.jsp" %>

<% 
String s_subject=new String(request.getParameter("subject").getBytes("8859_1"),"UTF-8"); 
String s_memo=new String(request.getParameter("memo").getBytes("8859_1"),"UTF-8");
int s_board_number= Integer.parseInt(request.getParameter("board_number"));
%>


<%
try {
    String str_sql = "UPDATE bbs1 SET subject=?,memo=? where board_number=?";
	PreparedStatement pstmt = conn.prepareStatement(str_sql);
	pstmt.setNString(1,s_subject);
	pstmt.setNString(2,s_memo);
	pstmt.setInt(3,s_board_number);
	pstmt.executeUpdate();
	pstmt.close(); 
	conn.close();
	out.println("yes");

} catch (Exception e) {
	out.println(e);
} ;
%>


<html>
<head>
	<meta charset="UTF-8">
<script language=javascript>
	self.window.alert("게시글 수정 완료");
	location.href="../show.jsp?num=<% out.print(s_board_number); %>";
	
	
</script>
</head>
<body>
</body>
</html>