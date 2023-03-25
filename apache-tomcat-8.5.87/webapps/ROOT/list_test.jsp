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
        <th>넘버</th>
        <th>네임</th>
        <th>패스워드</th>
        <th>이메일</th>
        <th>홈페이지</th>
        <th>서브젝트</th>
        <th>메모</th>
        <th>카운트</th>
        <th>아이피</th>
        <th>시간</th>
        <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>7</td>
            <td>8</td>
            <td>9</td>
            <td>10</td>
        </tr>

        
    </table>
    <%
    ResultSet rs = stmt.executeQuery("select * from bbs");

out.println("<table>");
while (rs.next()) {
    out.println("<tr>");
    out.println("<td>" + rs.getInt("board_number") + "</td>");
    out.println("<td>" + rs.getString("subject") + "</td>");
    out.println("<td>" + rs.getString("name") + "</td>");
    out.println("<td>" + rs.getString("email") + "</td>");
    out.println("<td>" + rs.getString("content") + "</td>");
    out.println("</tr>");
}
out.println("</table>");

rs.close();
stmt.close();
conn.close();
%>
</body>
</html>