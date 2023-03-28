<%-- test.jsp( 이건 주석임) --%>
<%@ page language='java' %>
<%!
int a=100; //전역 변수 a를 정수형(int)으로 선언하고 초기값으로 100을 대입
int b=50; //전역 변수 b를 정수형(int)으로 선언하고 초기값으로 50을 대입
%>
<%
int c; // 지역 변수 c를 정수형으로 선언
c = a+b; // c에 a와 b 값을 더함
%>
<html>
    <head>
        <title>JSP 테스트!</title>
    </head>
    <body>
        a=<%=a%>
        b=<%=b%>
        a+b=<%=c%>
    </body>
</html>