<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>
<%@ include file="action/conn_db2.jsp" %>
<% String search=request.getParameter("search"); %>

<br>
<div class="container text-center">
    <div class="row">
              <div class="col">
                  <% 
                  if(session.getAttribute("userID") != null ){
                    out.println("<a href=\"write.jsp\" role=\"button\" class=\"btn btn-primary\">글쓰기</a>");
                  }else{
                    out.println("<p>로그인을 해야 글작성이 가능합니다.</p>");
                  }; 
                  %>                              
              </div>
              <div class="col">
                  <form action="board.jsp">
                  <input type="text" class="form-control" name="search" placeholder="제목검색" aria-label="Recipient's username" aria-describedby="button-addon2">                         
              </div>
              <div class="col">
                        <div class="input-group mb-3">                    
                                <button class="btn btn-primary" type="submit" id="button-addon2">검색</button>
                            </form>
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
      if(search != null){
        ResultSet rs3 = stmt2.executeQuery("select * from bbs1 where subject LIKE'%"+search+"%' order by writetime DESC");
        while (rs3.next()) {
          out.println("<tr>");
          out.println("<td>" + rs3.getInt("board_number") + "</td>");
          out.println("<td>" + "<a href='show.jsp?num=" + rs3.getInt("board_number") + "'>" + rs3.getString("subject") + "</a>" + "</td>");
          out.println("<td>" + rs3.getString("name") + "</td>");
          out.println("<td>" + rs3.getString("writetime") + "</td>");
          out.println("</tr>");
      }
      rs3.close();
      stmt2.close();
      conn2.close();
      }else{
        ResultSet rs3 = stmt2.executeQuery("select * from bbs1 order by writetime DESC");
        while (rs3.next()) {
          out.println("<tr>");
          out.println("<td>" + rs3.getInt("board_number") + "</td>");
          out.println("<td>" + "<a href='show.jsp?num=" + rs3.getInt("board_number") + "'>" + rs3.getString("subject") + "</a>" + "</td>");
          out.println("<td>" + rs3.getString("name") + "</td>");
          out.println("<td>" + rs3.getString("writetime") + "</td>");
          out.println("</tr>");
      }
      rs3.close();
      stmt2.close();
      conn2.close();
      };
    
    %>
        
    </table>
    
    
</body>
</html>
