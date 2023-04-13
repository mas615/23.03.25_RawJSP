<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>
<%@ include file="action/conn_db2.jsp" %>
<% 
  String min=request.getParameter("min");
  String max=request.getParameter("max");
%>
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

포인트
로그인 : 100P
로그인2 : 200P
글쓰기 : 300P
</pre>

<form action="/">
  <div class="input-group mb-3">
      <input type="text" class="form-control" value="10" name="min">
      <span class="input-group-text">~</span>
      <input type="text" class="form-control" value="100" name="max">
      <button type="submit" class="btn btn-primary">포인트 구간 검색</button>
  </div>
</form>

<table class="table table-striped table-hover">
  <th>포인트랭킹</th>
  <th>포인트</th>
  <th>마지막 접속 날짜</th>
  <%
            String between = null;

            try{
            if(min != null && max != null){
              between = " (point BETWEEN " + min + " AND " + max + ") AND ";
            }else{
              between = " ";
            };
            
            ResultSet rs3 = stmt2.executeQuery("select customer.name,point_table.POINT,point_table.WRITETIME from point_table,customer where"+ between +"point_table.customer_number=customer.customer_number order by point desc");
            while (rs3.next()) {
              out.println("<tr>");
              out.println("<td>" + rs3.getString("name") + "</td>");
              out.println("<td>" + rs3.getString("point") + "P</td>");
              out.println("<td>" + rs3.getString("WRITETIME") + "</td>");
              out.println("</tr>");
              }
              rs3.close();
              stmt2.close();
              conn2.close();
            }catch(Exception e){
              %>
                <html>
                <head>
                <meta charset="UTF-8">
                <script language=javascript>
                self.window.alert("What are you doing?.");
                location.href="../../";
                </script>
                </head>
                <body>
                </body>
                </html>
          
              <%
            }
            %>
  </table>
  
  <br><br><br><br><br>
  <a href="https://github.com/mas615/23.03.25_RawJSP.git" >https://github.com/mas615/23.03.25_RawJSP.git</a><br>
  <a href="https://manivers.tistory.com/" >https://manivers.tistory.com/</a>
    </div>
    <div class="col">
      
    </div>
  </div>
</div>



  </body>
</html>
