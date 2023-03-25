
<%@ page language="java" import="java.sql.*" contentType="text/html;charset=KSC5601" %>

<%

String s_name=new String(request.getParameter("name").getBytes("8859_1"),"KSC5601");
String s_password=request.getParameter("password");
String s_email=request.getParameter("email");
String s_homepage=request.getParameter("homepage");
String s_subject=new String(request.getParameter("subject").getBytes("8859_1"),"KSC5601");
String s_memo=new String(request.getParameter("memo").getBytes("8859_1"),"KSC5601");
String s_ip = request.getRemoteAddr(); 

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jsp", "root");

	String str_sql = "INSERT INTO board (name,password,email,homepage,subject,memo,ip,wrietime) VALUES(?,?,?,?,?,?,?,'123123')";
	PreparedStatement pstmt = conn.prepareStatement(str_sql);
	pstmt.setNString(1,s_name);
	pstmt.setNString(2,s_password);
	pstmt.setNString(3,s_email);
	pstmt.setNString(4,s_homepage);
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
<script language=javascript>
	self.window.alert("아아아아 aaAAAAAAAAA");
	location.href="write.html";
</script>
</head>
<body>
</body>
</html>