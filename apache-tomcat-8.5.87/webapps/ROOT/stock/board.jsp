<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../action/navbar2.jsp" %>
<%@ include file="../action/conn_db2.jsp" %>
<% 
String search=request.getParameter("search");
String order=request.getParameter("order"); 
%>
<div class="container text-center">
    <div class="row">
              <div>
                내 통장잔고 : 
                <%
                  ResultSet rs3 = stmt2.executeQuery("select * from point_table where customer_number='"+session.getAttribute("userID")+"'");
                  while (rs3.next()) {
                  out.print("<td>" + rs3.getString("point") + "</td>");
                  }
                  rs3.close();
                  stmt2.close();
                  conn2.close();
                %>
              </div>
    </div>
</div>

<div class="container text-center">
  <div class="row">
            <div>
              
            </div>
  </div>
</div>
    
</body>
</html>
