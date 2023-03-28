<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>
<%@ include file="action/conn_db2.jsp" %>

<br>
<div class="container text-center">
    <div class="row">
      <div class="col">
            
                    
      </div>
      <div class="col">
                <a href="write.jsp" role="button" class="btn btn-primary btn-lg">글쓰기</a>
                    
      </div>
      <div class="col">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="제목검색" aria-label="Recipient's username" aria-describedby="button-addon2">
                    <button class="btn btn-primary btn-lg" type="button" id="button-addon2">검색</button>
                </div>               
      </div>
    </div>
  </div>






    <table class="table table-striped table-hover">
        <th>게시글 번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성시간</th>
        <%
        ResultSet rs3 = stmt2.executeQuery("select * from bbs");
    
   
    while (rs3.next()) {
        out.println("<tr>");
        out.println("<td>" + rs3.getInt("board_number") + "</td>");
        out.println("<td>" + "<a href='show.jsp?num=" + rs3.getInt("board_number") + "'>" + rs3.getString("subject") + "</a>" + "</td>");
        out.println("<td>" + rs3.getString("name") + "</td>");
        out.println("<td>" + rs3.getString("wrietime") + "</td>");
        out.println("</tr>");
    }
    rs3.close();
    stmt2.close();
    conn2.close();
    %>
        
    </table>
    
    
</body>
</html>
