
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*,java.io.*"%>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jsp", "root");
%>

