<%@ page language="javascript" %>

<%
// 문자열 변수 선언하기
String str = "apple, Banana, orange";

// 문자열에서 "banana"를 "tomato"로 변경하기
str = str.replaceAll("(?i)banana", "tomato");

// 변경된 문자열 출력하기
out.println("변경 전 : " + str + "<br/>");
out.println("변경 후 : " + str + "<br/>");
%>