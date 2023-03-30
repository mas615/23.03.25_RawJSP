<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="conn_db.jsp" %>
<%
// 1. 사용자로부터 입력 받은 데이터 가져오기
String majun = request.getParameter("majun");

// 2. INSERT 문 작성하기
String query = "delete from bbs2 where board_number = "+majun;
out.println(query);
// 3. INSERT 문 실행하기
try {
    stmt.executeUpdate(query);
    out.println("<script language=javascript>self.window.alert('삭제가 완료되었습니다.'); location.href='../xss2_board.jsp';</script>");
    
} catch (SQLException e) {
    out.println("<p>삭제에 문제가 발생하였습니다.</p>");
    out.println("<a href = '../xss2_board.jsp'>게시판으로 이동</a>");
    e.printStackTrace();
}
stmt.close();
conn.close();
%>
