<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8" %>
<%@ include file="conn_db.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table border="1">
        <th>게시글 번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성시간</th>
        <%
        ResultSet rs1 = stmt.executeQuery("select * from bbs");
    
   
    while (rs1.next()) {
        out.println("<tr>");
        out.println("<td>" + rs1.getInt("board_number") + "</td>");
        out.println("<td>" + "<a href='show.jsp?num=" + rs1.getInt("board_number") + "'>" + rs1.getString("subject") + "</a>" + "</td>");
        out.println("<td>" + rs1.getString("name") + "</td>");
        out.println("<td>" + rs1.getString("wrietime") + "</td>");
        out.println("</tr>");
    }
    rs1.close();
    stmt.close();
    conn.close();
    %>
        
    </table>
    
    <a href="write.html">글쓰기</a>
</body>
</html>
