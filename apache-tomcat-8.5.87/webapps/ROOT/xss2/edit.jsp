<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../action/navbar2.jsp" %>
<%@ include file="../action/conn_db2.jsp" %>
<% String num=request.getParameter("num"); %>

<% 
rs2 = stmt2.executeQuery("select * from XSS2 where board_number=" + num);
String send_subject = null;
String send_memo = null;
String send_board_number = null;
if(rs2.next()){
send_subject = rs2.getString("subject");
send_memo = rs2.getString("memo"); 
send_board_number = rs2.getString("BOARD_NUMBER"); 
%>

<script language='javascript'>
    function check_submit(){

        if (document.myForm.subject.value == "") {
            alert('제목을 입력하세요.');
            document.myForm.name.focus();
            return;

        }else if (document.myForm.memo.value == "") {
            alert('내용을 입력하세요.');
            document.myForm.password.focus();
            return

        }else {
            document.myForm.action = 'action/edit_action.jsp';
            document.myForm.submit();
        }

    }

</script>
</head>
<br><br><br>
<div class="d-flex justify-content-center">
<div class="col-md-4">
  <form name="myForm" method="post">
    <div class="form-group">
      <label for="title">제목</label>
      <input type="text" class="form-control" id="title" name="subject" value="<% out.print(send_subject); %>">
    </div>
    <div class="form-group">
      <label for="title">내용</label>
      <textarea class="form-control" id="content" name="memo"><% out.print(send_memo); %></textarea>
    </div>
    <input type="hidden" name="userName" value="<% out.print(session.getAttribute("userName")); %>">
    <input type="hidden" name="board_number" value="<% out.print(send_board_number); %>">
  </form>
  <br>
  <a href="board.jsp" role="button" class="btn btn-secondary">취소</a>
  <button type="button" class="btn btn-primary" id="btn-save" onclick='javascript:check_submit();'>수정</button>
</div>
</div>

<%
}else{
	out.println("없는 게시글입니다.");
}
rs2.close();
stmt2.close();
conn2.close();
%>

</body>
</html>