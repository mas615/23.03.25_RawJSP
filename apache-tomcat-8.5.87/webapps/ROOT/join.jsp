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

                }else if (document.myForm.email.value == "") {
                    alert('이메일을 입력하세요.');
                    document.myForm.email.focus();
                    return

                }else if (document.myForm.address.value == "") {
                    alert('집주소를 입력하세요.');
                    document.myForm.email.focus();
                    return

                }else {
                    document.myForm.action = 'action/join_action.jsp';
                    document.myForm.submit();
                }

            }

        </script>
   

   

    <div class="container text-center">
        <div class="row">
          <div class="col">
            
          </div>
          <div class="col">
                            <form name = 'myForm' method = 'post' >
                                <br><br><br><br>
                                <p>회원가입</p>
                                <p><input type="text" name="name" size=20 maxlength = 20 placeholder="아이디"></p>
                                <p><input type="password" name="password" size=20 maxlength = 20 placeholder="비밀번호"> <br></p>
                                <p><input type="text" name="email" size=50 maxlength = 70 placeholder="이메일"><br></p>
                                <p><input type="text" name="address" size=50 maxlength = 70 placeholder="주소"> <br></p>
                                <input type='button' class="btn btn-primary" value='회원가입' onclick='javascript:check_submit();'>
                            </form>
          </div>
          <div class="col">
            
          </div>
        </div>
      </div>

</body>
</html>