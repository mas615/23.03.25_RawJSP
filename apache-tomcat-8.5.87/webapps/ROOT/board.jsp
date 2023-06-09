<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>
<%@ include file="action/conn_db2.jsp" %>
<% 
String search=request.getParameter("search");
String order=request.getParameter("order"); 
%>


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
                    <% if(search != null){ %>
                    <input type="text" class="form-control" name="search" value="<%= search %>" aria-label="Recipient's username" aria-describedby="button-addon2">
                    <% }else{ %>
                  <input type="text" class="form-control" name="search" placeholder="제목검색" aria-label="Recipient's username" aria-describedby="button-addon2">  
                    <% } %>                                  
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
      <% if(search != null){ %>
        <th width="20%">No.</th>
        <th >제목<a href="board.jsp?order=subject&search=<%= search %>">▼</a><a href="board.jsp?search=<%= search %>&order=subject desc">△</a></th>
        <th width="20%">작성자<a href="board.jsp?order=name&search=<%= search %>">▼</a><a href="board.jsp?search=<%= search %>&order=name desc">△</a></th>
        <th width="20%">시간<a href="board.jsp?order=writetime&search=<%= search %>">▼</a><a href="board.jsp?search=<%= search %>&order=writetime desc">△</a></th>
        <% }else{ %>
        <th width="20%">No.
        </th>
        <th>제목
          <a href="board.jsp?order=subject">▼</a>
          <a href="board.jsp?order=subject desc">△</a>
        </th>
        <th width="20%">작성자
          <a href="board.jsp?order=name">▼</a>
          <a href="board.jsp?order=name desc">△</a>
        </th>
        <th width="20%">시간
          <a href="board.jsp?order=writetime">▼</a>
          <a href="board.jsp?order=writetime desc">△</a>
        </th>        
        <% };
        String orderby = null;
        if(order != null){
          orderby = order;
        }else{
          orderby = "writetime DESC";
        }
  
        if(search != null){
          ResultSet rs3 = stmt2.executeQuery("select * from bbs1 where subject LIKE'%"+search+"%' order by "+orderby);
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
          ResultSet rs3 = stmt2.executeQuery("SELECT bbs1.*, NVL(r.BO_NUM_COUNT, 0) AS BO_NUM_COUNT FROM bbs1 LEFT JOIN (SELECT BO_NUM, COUNT(BO_NUM) AS BO_NUM_COUNT FROM retable GROUP BY BO_NUM) r ON bbs1.BOARD_NUMBER = r.BO_NUM ORDER BY bbs1."+orderby);
            
        while (rs3.next()) {
          out.println("<tr>");
            out.println("<td>" + rs3.getInt("board_number") + "</td>");
            out.println("<td>" + "<a href='show.jsp?num=" + rs3.getInt("board_number") + "'>" + rs3.getString("subject") + " (" + rs3.getString("BO_NUM_COUNT") +")</a>" + "</td>");
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
