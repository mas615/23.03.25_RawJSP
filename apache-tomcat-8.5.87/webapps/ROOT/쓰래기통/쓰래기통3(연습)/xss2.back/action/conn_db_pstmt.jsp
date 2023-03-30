
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*,java.io.*"%>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jsp", "root");
%>

try {
	
	String str_sql = "INSERT INTO BBS1 (name,password,email,HOMEPAGE,subject,memo,ip,writetime) VALUES(?,?,?,?,?,?,?,TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'))";
    String str_sql = "UPDATE customer SET password=?,address=? where name=?";

	PreparedStatement pstmt = conn.prepareStatement(str_sql);
	pstmt.setNString(1,s_password);
	pstmt.setNString(2,s_address);
	pstmt.setNString(3,s_name);
	pstmt.executeUpdate();
	pstmt.close(); 
	conn.close();

} catch (Exception e) {
	out.println(e);
} ;
