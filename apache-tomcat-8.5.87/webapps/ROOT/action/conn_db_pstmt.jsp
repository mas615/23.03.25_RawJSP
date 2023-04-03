
<%@ page language="java" import="java.sql.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*,java.io.*"%>
<%@ include file="globalip.jsp" %>

<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@"+globalip+":1521:xe", "jsp", "root");
%>

