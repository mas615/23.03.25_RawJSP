
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="conn_db.jsp" %>
<%
// 1. 사용자로부터 입력 받은 데이터 가져오기
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");

// 2. INSERT 문 작성하기
String query = "INSERT INTO customer (name, password, email) VALUES ('" + name + "', '" + password + "', '" + email + "')";

// 3. INSERT 문 실행하기
try {
    stmt.executeUpdate(query);
    out.println("<p>회원가입이 완료되었습니다.</p>");
} catch (SQLException e) {
    out.println("<p>회원가입에 실패했습니다.</p>");
    e.printStackTrace();
}

stmt.close();
conn.close();
%>
