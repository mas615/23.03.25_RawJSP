
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="conn_db.jsp" %>
<%@ page import="java.security.MessageDigest" %>
<%
// 1. 사용자로부터 입력 받은 데이터 가져오기
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");
String address =request.getParameter("address");
String namecheck = "SELECT name FROM customer where name='" + name + "'";

    String input = "majun"+password+"majun";
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    byte[] hash = md.digest(input.getBytes("UTF-8"));
    StringBuffer hexString = new StringBuffer();

    for (int i = 0; i < hash.length; i++) {
        String hex = Integer.toHexString(0xff & hash[i]);
        if (hex.length() == 1) hexString.append('0');
        hexString.append(hex);
    }

    password = "GetAwayFromMe"+hexString.toString();

ResultSet rs3 = stmt.executeQuery(namecheck);


// 2. INSERT 문 작성하기
String query = "INSERT INTO customer (name, password, email, address) VALUES ('" + name + "', '" + password + "', '" + email + "','" + address + "')";

// 3. INSERT 문 실행하기
if (!rs3.next()) {
        try {
            stmt.executeUpdate(query);
            out.println("<script language=javascript>self.window.alert('" + name + "님 회원가입이 완료되었습니다.'); location.href='../login.jsp';</script>");
        } catch (SQLException e) {
            out.println("<script language=javascript>self.window.alert('회원가입에 실패하였습니다.'); location.href='../join.jsp';</script>");
            e.printStackTrace();
        }
}else{
    out.println("<script language=javascript>self.window.alert('이미 있는 아이디 입니다.'); location.href='../join.jsp';</script>");
};

stmt.close();
conn.close();
%>
