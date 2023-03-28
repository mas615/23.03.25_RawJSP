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

    <form name = 'myForm' method = 'post' >
        이름 : <% out.println(session.getAttribute("userName")); %> 
        <input type="hidden" name="name" value="<% out.println(session.getAttribute("userName")); %> "> <br>
        <input type="hidden" name="password" value="<% out.println(session.getAttribute("userID")); %> "> <br>
        제목 : <input type="text" name="subject" size=50 maxlength = 70> <br>
        내용 : <textarea name="memo" cols=50 rows = 5 maxlength = 500></textarea> <br>

        <br>
        <input type='button' value='write' onclick='javascript:check_submit();'>

    </form>

</body>
</html>