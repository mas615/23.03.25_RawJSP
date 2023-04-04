<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../action/navbar2.jsp" %>
<%@ include file="action/conn_db2.jsp" %>
<% String num=request.getParameter("num"); %>
<div class="container text-center">
	<div class="row">
	  <div class="col">
	  </div>
	  <div class="col">
		<br><br>
		<table class="table table-striped-columns">
<% 
rs2 = stmt2.executeQuery("select * from bbs1 where board_number=" + num);
String filename = null;
String originfilename = null;
String writer = null;
String curUser = (String) session.getAttribute("userName");
if(rs2.next()){
out.println("<tr class='table-primary'><td class='table-primary'>제목</td><td class='table-primary'>"+rs2.getString("subject") + "</td></tr>");
out.println("<tr class='table-primary'><td class='table-primary'>작성자이름</td><td class='table-primary'>"+rs2.getString("name")+"</td></tr>");
out.println("<tr class='table-primary'><td class='table-primary'>작성시간</td><td class='table-primary'>"+rs2.getString("writetime") + "</td></tr>");
out.println("<tr class='table-primary'><td class='table-primary'>내용</td><td class='table-primary'>"+rs2.getString("memo") + "</td></tr>");
if(rs2.getString("email") != null){
	filename = rs2.getString("email");
}
originfilename = rs2.getString("homepage");
writer = rs2.getString("name").trim();

}else{
	out.println("없는 게시글입니다.");
}
rs2.close();
stmt2.close();
conn2.close();
%>
<% if(filename != null ){ %>
<tr class='table-primary'>
	<td class='table-primary'>파일다운로드</td>
	<td class='table-primary'><a href="action/filedown_action.jsp?fileName=<%= filename %>"><%= originfilename %></a></td>
</tr>
<% }; %> 
</table>
</td>
<br>
<div class="btn-group" role="group" aria-label="Basic example">
<% if (curUser != null && writer != null && writer.equals(curUser)) { %>
    <a href="action/delete_action.jsp?majun='<%= num %>'" role="button" class="btn btn-primary">글 삭제</a>
	<a href="edit.jsp?num=<%= num %>" role="button" class="btn btn-primary">글 수정</a>	
<% }; %>
	<a href="board.jsp" role="button" class="btn btn-primary">목록보기</a>	
</div>
</div>
<div class="col">
</div>
</div>
</div>

</body>
</html>