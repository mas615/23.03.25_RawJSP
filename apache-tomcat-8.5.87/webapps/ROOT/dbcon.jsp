<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Oracle Connection Test</title>

</head>

<body>

<%@ page import="java.sql.*" %>

<h2> '톰캣 +  Oracle' 연결 TEST.. </h2>

<%

        try{

                String driverName="oracle.jdbc.driver.OracleDriver";

                String dbURL = "jdbc:oracle:thin:@3.36.127.85:1521:xe";

                Class.forName(driverName);

                Connection conn = DriverManager.getConnection(dbURL,"system","root");

                out.println("Oracle Database 에 접속 성공!");

                conn.close();

        }catch(Exception e){

                out.println("Oracle Database 에 접속 오류!!");

                out.println(e.getMessage());

                e.printStackTrace();

        }

%>

<c:out value="${dbURL}" escapeXml="false"/>

</body>

</html>