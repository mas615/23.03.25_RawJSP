
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<%

String s_name=new String(request.getParameter("name").getBytes("8859_1"),"UTF-8");
String s_password=request.getParameter("password");
String s_subject=new String(request.getParameter("subject").getBytes("8859_1"),"UTF-8");
String s_memo=new String(request.getParameter("memo").getBytes("8859_1"),"UTF-8");
String s_ip = request.getRemoteAddr();

 

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jsp", "root");

	String str_sql = "INSERT INTO BBS (name,password,email,HOMEPAGE,subject,memo,ip,wrietime) VALUES(?,?,?,?,?,?,?,TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'))";
	PreparedStatement pstmt = conn.prepareStatement(str_sql);
	pstmt.setNString(1,s_name);
	pstmt.setNString(2,s_password);
	pstmt.setNString(3,"null");
	pstmt.setNString(4,"null");
	pstmt.setNString(5,s_subject);
	pstmt.setNString(6,s_memo);
	pstmt.setNString(7,s_ip);
	pstmt.executeUpdate();
	pstmt.close(); 
	conn.close();

} catch (Exception e) {
	out.println(e);
} 

%>


<html>
<head>
	<meta charset="UTF-8">
<script language=javascript>
	self.window.alert("전송완료");
	
	location.href="../board.jsp";
</script>
</head>
<body>
</body>
</html>