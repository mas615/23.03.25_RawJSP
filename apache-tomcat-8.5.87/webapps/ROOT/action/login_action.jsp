<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="conn_db.jsp" %>
<%@ page import="java.security.MessageDigest" %>
<%
// 1. 사용자로부터 입력 받은 데이터 가져오기
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String password = request.getParameter("password");
String s_ip = request.getRemoteAddr()+"->LV1";
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
        session.setAttribute("userEmail",rs1.getString("email"));
        session.setAttribute("userAddress",rs1.getString("address"));
        String cus_num = rs1.getString("customer_number");
        String logquery = "insert into loginlog values ('1', '" + rs1.getString("customer_number") + "', '" + s_ip + "', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'))";         
        stmt.executeUpdate(logquery);
        logquery = "MERGE INTO point_table USING DUAL ON (CUSTOMER_NUMBER = '" + cus_num + "' ) WHEN MATCHED THEN UPDATE SET POINT=POINT+100,WRITETIME=TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') WHEN NOT MATCHED THEN INSERT (CUSTOMER_NUMBER,POINT,WRITETIME) VALUES ('" + cus_num + "',100,TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'))";         
        stmt.executeUpdate(logquery);
        response.sendRedirect("../index.jsp");
    } else {
         out.println("<script language=javascript>self.window.alert('아이디/비밀번호를 확인해주세요'); location.href='../login.jsp';</script>");
         
    }
    rs1.close();
} catch (SQLException e) {
    out.println("<script language=javascript>self.window.alert('로그인 실패'); location.href='../login.jsp';</script>");
    e.printStackTrace();
}

stmt.close();
conn.close();
%>
