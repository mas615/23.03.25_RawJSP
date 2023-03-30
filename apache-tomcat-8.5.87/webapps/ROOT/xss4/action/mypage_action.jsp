<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="conn_db.jsp" %>
<%
// 1. 사용자로부터 입력 받은 데이터 가져오기
String name = request.getParameter("name");
String password = request.getParameter("password");
String address = request.getParameter("address");

// 2. INSERT 문 작성하기
String query = "update customer set password='" +password+ "',address='" + address + "' where name='" + name + "'";

// 3. INSERT 문 실행하기
try {
    stmt.executeUpdate(query);
    out.println("<script language=javascript>self.window.alert('" + name + password + address + "님 회원정보수정이 완료되었습니다.'); location.href='../index.jsp';</script>");
} catch (SQLException e) {
    out.println("<script language=javascript>self.window.alert('회원정보수정을 실패하였습니다.'); location.href='../index.jsp';</script>");
    e.printStackTrace();
}

stmt.close();
conn.close();
%>

