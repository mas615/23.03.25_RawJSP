
<%@ page language="java" import="java.sql.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*,java.io.*"%>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection connpre = DriverManager.getConnection("jdbc:oracle:thin:@192.168.15.130:1521:xe", "jsp", "root");
%>

