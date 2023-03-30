
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*,java.io.*"%>


<%
String saveFolder = application.getRealPath("/data1") ;
    String encType = "UTF-8";
    int maxSize = 5 * 1024 * 1024;
MultipartRequest multi = null;
        multi = new MultipartRequest(request, saveFolder, maxSize,
                encType, new DefaultFileRenamePolicy());
String s_name=multi.getParameter("name");
String s_password=multi.getParameter("password");
String s_subject= multi.getParameter("subject");
s_subject = s_subject.replace("<", "&lt;").replace(">", "&gt;");
String s_memo= multi.getParameter("memo");
String fileName = multi.getFilesystemName("file");
String original = multi.getOriginalFileName("file");
String s_ip = "123";
 

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jsp", "root");

	String str_sql = "INSERT INTO BBS1 (name,password,email,HOMEPAGE,subject,memo,ip,writetime) VALUES(?,?,?,?,?,?,?,TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'))";
	PreparedStatement pstmt = conn.prepareStatement(str_sql);
	pstmt.setNString(1,s_name);
	pstmt.setNString(2,s_password);
	pstmt.setNString(3,fileName);
	pstmt.setNString(4,original);
	pstmt.setNString(5,s_subject);
	pstmt.setNString(6,s_memo);
	pstmt.setNString(7,s_ip);
	pstmt.executeUpdate();
	pstmt.close(); 
	conn.close();

} catch (Exception e) {
	out.println(e);
} ;

try {
	String user = multi.getParameter("user");
	String title = multi.getParameter("title");
	out.println("Intercept를 하셨군요 ㅎㅇㅎㅇ.<br>");
	
	
	
    String type = multi.getContentType("uploadFile");
    File f = multi.getFile("uploadFile");
	

	if (f != null) {
		out.println("크기 : " + f.length()+"바이트");
		out.println("<br/>");
	}
} catch (IOException ioe) {
	out.println(ioe);
} catch (Exception ex) {
	out.println(ex);
};

%>




<html>
<head>
	<meta charset="UTF-8">
<script language=javascript>
	self.window.alert("게시글 작성 완료");
	location.href="../board.jsp";
	
	
</script>
</head>
<body>
</body>
</html>