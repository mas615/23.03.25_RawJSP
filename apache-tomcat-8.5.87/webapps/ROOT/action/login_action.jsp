<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="conn_db.jsp" %>
<%
// 1. 사용자로부터 입력 받은 데이터 가져오기
String name = request.getParameter("name");
String password = request.getParameter("password");
stmt = conn.createStatement();


// 2. SELECT 문 작성하기
String query = "SELECT * FROM customer WHERE name='" +name+ "' AND password='" + password + "'";

// 3. SELECT 문 실행하기
try {
    ResultSet rs1 = stmt.executeQuery(query);
    if (rs1.next()) {
        out.println(rs1.getString("name")+"<br>");
        out.println("세션 : "+session.getAttribute("userID"));
        session.setAttribute("userID",rs1.getString("customer_number"));
        session.setAttribute("userName",rs1.getString("name"));
        response.sendRedirect("../index.jsp");
    } else {
        out.println(query);
        out.println(name);
        out.println(password);
        out.println("<p>로그인 실패</p>");
    }
    rs1.close();
} catch (SQLException e) {
    out.println("<p>로그인 실패</p>");
    e.printStackTrace();
}

stmt.close();
conn.close();
%>
