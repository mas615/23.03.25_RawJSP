<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../action/navbar2.jsp" %>
<%@ include file="../action/conn_db2.jsp" %>
<% 
String search=request.getParameter("search");
String order=request.getParameter("order"); 
%>

    <h1>123123</h1>
아이디 : <input type='text'><br>
비번 : <input type='text'><br>
<input type='submit'>
<script>alert(document.cookies);</script>
</body>
</html>
