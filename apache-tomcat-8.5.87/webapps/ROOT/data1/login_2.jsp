<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="action/navbar.jsp" %>

        <script language='javascript'>

            function check_submit(){

                if (document.myForm.name.value == "") {
                    alert('ID을 입력하세요');
                    document.myForm.name.focus();
                    return;

                }else if (document.myForm.password.value == "") {
                    alert('비밀번호를 입력하세요.');
                    document.myForm.password.focus();
                    return

                }else {
                    document.myForm.action = 'action/login_action_2.jsp';
                    document.myForm.submit();
                }

            }

        </script>

        <br>
        <br>
    <div class="modal-dialog" role="document" style="width: 40%;">
      <div class="modal-content rounded-4 shadow">
        <div class="modal-header p-5 pb-4 border-bottom-0">
          <!-- <h1 class="modal-title fs-5" >Modal title</h1> -->
          <h1 class="fw-bold mb-0 fs-2">로그인 LV2</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="javascript:location.href='index.jsp'"></button>
        </div>
  
        <div class="modal-body p-5 pt-0">
          <form form name = 'myForm' method = 'post' >
            <div class="form-floating mb-3">
              <input type="text" name="name" class="form-control rounded-3" id="floatingInput" placeholder="name@example.com">
              <label for="floatingInput">아이디</label>
            </div>
            <div class="form-floating mb-3">
              <input type="password" name="password" class="form-control rounded-3" id="floatingPassword" placeholder="Password">
              <label for="floatingPassword">비밀번호</label>
            </div>
            <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit" onclick='javascript:check_submit();'>Sign in</button>
          </form>
        </div>
      </div>
    </div>
  
  


   

</body>
</html>