<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>
<%@ include file="action/conn_db2.jsp" %>
<br>
<div class="container text-center">
  <div class="row">
    <div class="col">
      
    </div>
    <div class="col">
      <h5>Project_Ma</h5>
    <pre>
Project_Ma에 오신것을 환영합니다.
현재 사이트는 취약점을 이용하여 여러 단계로 나누어 Vulnerable한 기능을 구성하였습니다.
전부 겉모습은 같아보이지만 Secure Coding이 다르게 코딩되어있습니다.
단계별로 클리어 해보시길 바랍니다. ( 열심히 찾으면 힌트가 있습니다. )

현재 공격 가능한 목록
1.XSS
2.SQL INJECTION
3.파일 업/다운로드
4.세션

Brute Force Attack 와 DDOS는 대상에 없습니다. ( 하지 마세요 )

문제점은 XSS3 게시판에 작성해주시면 반영하도록 하겠습니다.

마지막 업데이트 : 2023-04-06 ( 38th 버전 )
</pre>
<a href="https://github.com/mas615/23.03.25_RawJSP.git" >https://github.com/mas615/23.03.25_RawJSP.git</a><br>
<a href="https://manivers.tistory.com/" >https://manivers.tistory.com/</a>
<table class="table table-striped table-hover">
  <th>접속자(최근10명)</th>
  <th>접속시간</th>
  <%
          
            ResultSet rs3 = stmt2.executeQuery("select * from (select customer.name,loginlog.WRITETIME from loginlog,customer where loginlog.customer_number=customer.customer_number order by writetime desc) where ROWNUM <= 10");
            while (rs3.next()) {
              out.println("<tr>");
              out.println("<td>" + rs3.getString("name") + "</td>");
              out.println("<td>" + rs3.getString("WRITETIME") + "</td>");
              out.println("</tr>");
          }
          rs3.close();
          stmt2.close();
          conn2.close();
         
  %>
  </table>
    </div>
    <div class="col">
      
    </div>
  </div>
</div>

  </body>
</html>
