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
                    document.myForm.action = 'action/login_action.jsp';
                    document.myForm.submit();
                }

            }

        </script>

    <form name = 'myForm' method = 'post' >
        로그인<br>
        ID : <input type="text" name="name" size=20 maxlength = 20> <br>
        PW : <input type="password" name="password" size=20 maxlength = 20> <br>
        <input type='button' value='로그인' onclick='javascript:check_submit();'>

    </form>

</body>
</html>