<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>
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
<% if (curUser != null && writer != null && (writer.equals(curUser) || curUser.equals("admin2"))) { %>
    <a href="action/delete_action.jsp?majun='<%= num %>'" role="button" class="btn btn-primary">글 삭제</a>
	<a href="edit.jsp?num=<%= num %>" role="button" class="btn btn-primary">글 수정</a>	
<% }; %>
	<a href="board.jsp" role="button" class="btn btn-primary">목록보기</a>
</div>
</div>
<div class="col">
</div>
</div>

<br>
<script language='javascript'>

	function check_submit(){

		if (document.myForm.comment.value == "") {
			alert('내용을 입력하세요.');
			document.myForm.comment.focus();
			return;

		}else if(document.myForm.co_name.value == "null"){
			alert('로그인먼저 하세요..');
			document.myForm.comment.focus();
			return;

		}else {
			document.myForm.action = 'action/comment_action.jsp';
			document.myForm.submit();
		}

	}
</script>

	<form name="myForm" action="/action/comment_action.jsp">
		<input name="comment" type="text" placeholder="댓글달기">
		<button type="button" class="btn btn-primary" id="btn-save" onclick='javascript:check_submit();'>등록</button>
		<input name="bo_num" type="hidden" value="<%= num %>">
		<input name="co_name" type="hidden" value="<%= curUser %>">
	</form>	
	댓글은 삭제가 불가능합니다. 신중하게 작성해주세요.
	<table class="table table-striped table-hover">
		  <th>댓글작성자</th>
		  <th>댓글</th>
		  <th>시간</th>
<%
ResultSet rs5 = stmt2.executeQuery("select * from retable where bo_num="+num);
        while (rs5.next()) {
          out.println("<tr>");
          out.println("<td>" + rs5.getString("name") + "</td>");
          out.println("<td>" + rs5.getString("rememo") + "</td>");
          out.println("<td>" + rs5.getString("time") + "</td>");
          out.println("</tr>");
      }
      rs5.close();
      stmt2.close();
      conn2.close();
%>
	</table>


</div>
</body>
</html>