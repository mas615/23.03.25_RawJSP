<%

String drivers="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String db_user="jsp";
String db_passwd="root";

try {
Class.forName(drivers); // 드라이버를 찾습니다.
} catch (ClassNotFoundException e) {
out.println(e.getMessage());
}

Connection conn=null; // DB 연결 정보를 담을 conn 선언
Statement stmt=null; // Statement형 stmt 선언(일종의 DB '연결 통로' 역할을 함)
ResultSet rs=null; // ResultSet형 rs 선언. 쿼리문 실행 결과 값을 담을 객체

try {
conn = DriverManager.getConnection(url, db_user, db_passwd);
// DB 연결. conn에 연결 정보 저장
stmt = conn.createStatement(); // 연결 정보(conn)를 가지고 연결 통로(stmt) 생성
} catch (Exception e) {
e.printStackTrace();
}



%>