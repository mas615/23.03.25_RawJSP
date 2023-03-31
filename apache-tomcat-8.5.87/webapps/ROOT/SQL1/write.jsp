<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>

        <script language='javascript'>

            function check_submit(){

                if (document.myForm.name.value == "") {
                    alert('이름을 입력하세요');
                    document.myForm.name.focus();
                    return;

                }else if (document.myForm.password.value == "") {
                    alert('비밀번호를 입력해야 글을 수정하거나 삭제할 수 있습니다.');
                    document.myForm.password.focus();
                    return

                }else if (document.myForm.subject.value == "") {
                    alert('제목을 입력하세요.');
                    document.myForm.subject.focus();
                    return

                }else if (document.myForm.memo.value == "") {
                    alert('내용을 입력하세요.');
                    document.myForm.memo.focus();
                    return

                }else {
                    document.myForm.action = 'action/write_action.jsp';
                    document.myForm.submit();
                }

            }

        </script>
    </head>
    
    <br><br><br>
    <div class="d-flex justify-content-center">
        <div class="col-md-4">
          <form name="myForm" method="post" enctype="multipart/form-data">
            <div class="form-group">
              <label for="title">제목</label>
              <input type="text" class="form-control" name="subject" id="title" placeholder="제목을 입력하세요">
            </div>
            <input type="hidden" name="name" value="<% out.println(session.getAttribute("userName")); %> ">
            <input type="hidden" name="password" value="<% out.println(session.getAttribute("userID")); %> ">
            <div class="form-group">
              <label for="content"> 내용 </label>
              <textarea class="form-control" id="content" name="memo" placeholder="내용을 입력하세요"></textarea>
            </div>
            <label for="content"> 파일 </label>
            <br>
            <div class="input-group">
                <input type="file" name="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
            </div>
          </form>
          <br>
          <a href="board.jsp" role="button" class="btn btn-secondary">취소</a>
          <button type="button" class="btn btn-primary" id="btn-save" onclick='javascript:check_submit();'>등록</button>
        </div>
      </div>
      
    

</body>
</html>