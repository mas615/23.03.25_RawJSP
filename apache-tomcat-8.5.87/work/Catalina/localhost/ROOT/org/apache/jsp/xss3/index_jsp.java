/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.87
 * Generated at: 2023-03-30 02:04:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.xss3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/xss3/action/navbar.jsp", Long.valueOf(1680141870473L));
    _jspx_dependants.put("/xss3/action/conn_db.jsp", Long.valueOf(1679929462173L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');


String drivers="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String db_user="jsp";
String db_passwd="root";

try {
Class.forName(drivers); // ëë¼ì´ë²ë¥¼ ì°¾ìµëë¤.
} catch (ClassNotFoundException e) {
out.println(e.getMessage());
}

Connection conn=null; // DB ì°ê²° ì ë³´ë¥¼ ë´ì conn ì ì¸
Statement stmt=null; // Statementí stmt ì ì¸(ì¼ì¢ì DB 'ì°ê²° íµë¡' ì­í ì í¨)
ResultSet rs=null; // ResultSetí rs ì ì¸. ì¿¼ë¦¬ë¬¸ ì¤í ê²°ê³¼ ê°ì ë´ì ê°ì²´

try {
conn = DriverManager.getConnection(url, db_user, db_passwd);
// DB ì°ê²°. connì ì°ê²° ì ë³´ ì ì¥
stmt = conn.createStatement(); // ì°ê²° ì ë³´(conn)ë¥¼ ê°ì§ê³  ì°ê²° íµë¡(stmt) ìì±
} catch (Exception e) {
e.printStackTrace();
}




      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <title>Project_Ma</title>\r\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    <script src=\"js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg bg-primary\" data-bs-theme=\"dark\">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <a class=\"navbar-brand\" href=\"../index.jsp\">Project_Ma</a>\r\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("          </button>\r\n");
      out.write("          <div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">\r\n");
      out.write("            <ul class=\"navbar-nav\">\r\n");
      out.write("\r\n");
 
if(session.getAttribute("userID") != null){
    ResultSet rs1 = stmt.executeQuery("select * from customer where customer_number="+session.getAttribute("userID")); 
        if(rs1.next()){
            String A = "<li class=\"nav-item dropdown\">\n" +
                "    <a class=\"nav-link active dropdown-toggle\" aria-current=\"page\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">";
            String B = "님 환영합니다</a>\n" +
            "<ul class=\"dropdown-menu\">\n" +
            "<li><a class=\"dropdown-item\" href=\"action/logout_action.jsp\">로그아웃</a></li>\n" +
            "<li><a class=\"dropdown-item\" href=\"mypage.jsp\">내정보</a></li>\n" +
            "</ul>\n" +
            "</li>";

            if(session.getAttribute("userID") != null){
                out.println(A+rs1.getString("name")+B);
            };
        };
        rs1.close();
        stmt.close();
        conn.close();
}else{
  ResultSet rs1 = stmt.executeQuery("select sysdate from dual");
  rs1.close();
  stmt.close();
  conn.close();
    String C = "<li class=\"nav-item dropdown\">\n"
        + " <a class=\"nav-link active dropdown-toggle\" aria-current=\"page\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">로그인</a>\n"
        + " <ul class=\"dropdown-menu\">\n"
        + " <li><a class=\"dropdown-item\" href=\"login.jsp\">로그인</a></li>\n"
        + " <li><a class=\"dropdown-item\" href=\"join.jsp\">회원가입</a></li>\n"
        + " </ul>\n"
        + "</li>";
out.println(C);
};

      out.write("\r\n");
      out.write("              \r\n");
      out.write("              \r\n");
      out.write("              \r\n");
      out.write("              <li class=\"nav-item dropdown\">\r\n");
      out.write("                <a class=\"nav-link dropdown-toggle\" href=\"list_test2.jsp\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                  XSS\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"board.jsp\">Lv1</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"xss2_board.jsp\">LV2</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("\r\n");
      out.write("              <li class=\"nav-item dropdown\">\r\n");
      out.write("                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                  SQL injection\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"board.jsp\">Lv1</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"board.jsp\">LV2</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("\r\n");
      out.write("              <li class=\"nav-item dropdown\">\r\n");
      out.write("                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                  파일 업/다운로드\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"board.jsp\">Lv1</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"board.jsp\">LV2</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("\r\n");
      out.write("              <li class=\"nav-item dropdown\">\r\n");
      out.write("                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                  세션\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"board.jsp\">Lv1</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"board.jsp\">LV2</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("        \r\n");
      out.write("            \r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </nav>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<div class=\"container text-center\">\r\n");
      out.write("  <div class=\"row\">\r\n");
      out.write("    <div class=\"col\">\r\n");
      out.write("      \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col\">\r\n");
      out.write("      <h5>Project_Ma</h5>\r\n");
      out.write("    <pre>\r\n");
      out.write("      Miracles happen to only those who believe in them.\r\n");
      out.write("\r\n");
      out.write("기적은 그것을 믿는 사람에게만 일어난다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Think like a man of action and act like man of thought.\r\n");
      out.write("\r\n");
      out.write("행동하는 사람처럼 생각하고, 생각하는 사람처럼 행동하라.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Courage is very important. Like a muscle, it is strengthened by use.\r\n");
      out.write("\r\n");
      out.write("용기는 대단히 중요하다. 근육과 같이 사용함으로써 강해진다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Life is the art of drawing sufficient conclusions from insufficient premises.\r\n");
      out.write("\r\n");
      out.write("인생이란 불충분한 전제로부터 충분한 결론을 끌어내는 기술이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("By doubting we come at the truth.\r\n");
      out.write("\r\n");
      out.write("의심함으로써 우리는 진리에 도달한다\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("A man that has no virtue in himself, ever envies virtue in others.\r\n");
      out.write("\r\n");
      out.write("자기에게 덕이 없는 자는 타인의 덕을 시기한다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("When money speaks, the truth keeps silent.\r\n");
      out.write("\r\n");
      out.write("돈이 말할 때는 진실은 입을 다문다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Better the last smile than the first laughter.\r\n");
      out.write("\r\n");
      out.write("처음의 큰 웃음보다 마지막의 미소가 더 좋다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("In the morning of life, work; in the midday, give counsel; in the evening, pray. (인생의 아침에는 일을 하고, 낮에는 충고하며, 저녁에는 기도하라.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Painless poverty is better than embittered wealth.\r\n");
      out.write("\r\n");
      out.write("고통 없는 빈곤이 괴로운 부보다 낫다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("A poet is the painter of the soul.\r\n");
      out.write("\r\n");
      out.write("시인은 영혼의 화가이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Error is the discipline through which we advance.\r\n");
      out.write("\r\n");
      out.write("잘못은 그것을 통하여 우리가 발전할 수 있는 훈련이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Faith without deeds is useless.\r\n");
      out.write("\r\n");
      out.write("행함이 없는 믿음은 쓸모가 없다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Weak things united become strong.\r\n");
      out.write("\r\n");
      out.write("약한 것도 합치면 강해진다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("We give advice, but we cannot give conduct.\r\n");
      out.write("\r\n");
      out.write("충고는 해 줄 수 있으나, 행동하게 할 수는 없다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Nature never deceives us; it is always we who deceive ourselves.\r\n");
      out.write("\r\n");
      out.write("자연은 인간을 결코 속이지 않는다. 우리를 속이는 것은 항상 우리 자신이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Forgiveness is better than revenge. 용서는 복수보다 낫다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("We never know the worth of water till the well is dry.\r\n");
      out.write("\r\n");
      out.write("우물이 마르기까지는 물의 가치를 모른다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Pain past is pleasure. \r\n");
      out.write("\r\n");
      out.write("지나간 고통은 쾌락이다\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Books are ships which pass through the vast seas of time.\r\n");
      out.write("\r\n");
      out.write("책이란 넓고 넓은 시간의 바다를 지나가는 배다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Who begins too much accomplishes little.\r\n");
      out.write("\r\n");
      out.write("너무 많이 시작하는 사람은 성취하는 것이 별로 없다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Better the last smile than the first laughter.\r\n");
      out.write("\r\n");
      out.write("처음의 큰 웃음보다 마지막 미소가 더 좋다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Faith is a higher faculty than reason.\r\n");
      out.write("\r\n");
      out.write("믿음은 이성보다 더 고상한 능력이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Until the day of his death, no man can be sure of his courage.\r\n");
      out.write("\r\n");
      out.write("죽는 날까지는, 자기의 용기를 확신할 수 있는 사람은 아무도 없다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Great art is an instant arrested in eternity.\r\n");
      out.write("\r\n");
      out.write("위대한 예술은 영원 속에서 잡은 한 순간이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Faith without deeds is useless.\r\n");
      out.write("\r\n");
      out.write("행함이 없는 믿음은 쓸모가 없다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("The world is a beautiful book, but of little use to him who cannot read it.\r\n");
      out.write("\r\n");
      out.write("세상은 한 권의 아름다운 책이다. 그러나 그 책을 읽을 수 없는 사람에게는 별 소용이 없다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Heaven gives its favorites-early death.\r\n");
      out.write("\r\n");
      out.write("하늘은, 그가 사랑하는 자에게 이른 죽음을 준다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("I never think of the future. It comes soon enough.\r\n");
      out.write("\r\n");
      out.write("나는 미래에 대해서는 결코 생각하지 않는다. 미래는 곧 오고 말 것이므로.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Suspicion follows close on mistrust. 의혹은 불신을 뒤따른다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("He who spares the rod hates his son, but he who loves him is careful to discipline him.\r\n");
      out.write("\r\n");
      out.write("매를 아끼는 것은 자식을 사랑하지 않는 것이다. 자식을 사랑하는 사람은 훈계를 게을리 하지 않는다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("All good things which exist are the fruits of originality.\r\n");
      out.write("\r\n");
      out.write("현존하는 모든 훌륭한 것들은 독창력의 결실이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("The will of a man is his happiness. \r\n");
      out.write("\r\n");
      out.write("인간의 마음가짐이 곧 행복이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("He that has no shame has no conscience.\r\n");
      out.write("\r\n");
      out.write("수치심이 없는 사람은 양심이 없다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Weak things united become strong.\r\n");
      out.write("\r\n");
      out.write("약한 것도 합치면 강해진다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("A minute's success pays the failure of years.\r\n");
      out.write("\r\n");
      out.write("단 1분의 성공은 몇 년 동안의 실패를 보상한다\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("United we stand, divided we fall. \r\n");
      out.write("\r\n");
      out.write("뭉치면 서고, 흩어지면 쓰러진다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("To doubt is safer than to be secure.\r\n");
      out.write("\r\n");
      out.write("의심하는 것이 확인하는 것보다 더 안전하다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Time is but the stream I go a-fishing in.\r\n");
      out.write("\r\n");
      out.write("시간은 내가 그 속에서 낚시질을 하는 흐름이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("A full belly is the mother of all evil.\r\n");
      out.write("\r\n");
      out.write("배부른 것이 모든 악의 어머니이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Love your neighbor as yourself.\r\n");
      out.write("\r\n");
      out.write("네 이웃을 네 몸처럼 사랑하여라\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("It is a wise father that knows his own child.\r\n");
      out.write("\r\n");
      out.write("자기 자식을 아는 아버지는 현명한 아버지이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("By doubting we come at the truth.\r\n");
      out.write("\r\n");
      out.write("의심함으로써 우리는 진리에 도달한다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Absence makes the heart grow fonder.\r\n");
      out.write("\r\n");
      out.write("떨어져 있으면 정이 더 깊어진다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Habit is second nature.\r\n");
      out.write("\r\n");
      out.write("습관은 제2의 천성이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Who knows much believes the less.\r\n");
      out.write("\r\n");
      out.write("많이 아는 사람일수록 적게 믿는다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Only the just man enjoys peace of mind.\r\n");
      out.write("\r\n");
      out.write("정의로운 사람만이 마음의 평화를 누린다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Waste not fresh tears over old griefs.\r\n");
      out.write("\r\n");
      out.write("지나간 슬픔에 새 눈물을 낭비하지 말라.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Life itself is a quotation.\r\n");
      out.write("\r\n");
      out.write("인생 그 자체가 하나의 인용이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("He is greatest who is most often in men's good thoughts.\r\n");
      out.write("\r\n");
      out.write("사람들의 좋은 회상 속에 자주 있는 자가 가장 위대하다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Envy and wrath shorten the life.\r\n");
      out.write("\r\n");
      out.write("시기와 분노는 수명을 단축시킨다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Where there is no desire, there will be no industry.\r\n");
      out.write("\r\n");
      out.write("욕망이 없는 곳에는 근면도 없다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("To be trusted is a greater compliment than to be loved.\r\n");
      out.write("\r\n");
      out.write("신뢰받는 것은 사랑 받는 것 보다 더 큰 영광이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Education is the best provision for old age.\r\n");
      out.write("\r\n");
      out.write("교육은 노년기를 위한 가장 훌륭한 대책이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("To jaw-jaw is better than to war-war.\r\n");
      out.write("\r\n");
      out.write("전쟁보다 협상이 낫다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Music is a beautiful opiate, if you don't take it too seriously.\r\n");
      out.write("\r\n");
      out.write("음악은 너무 심하게 취하지만 않는다면 일종의 아름다운 마취제이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Appearances are deceptive. \r\n");
      out.write("\r\n");
      out.write("외모는 속임수이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Let thy speech be short, comprehending much in few words.\r\n");
      out.write("\r\n");
      out.write("몇 마디 말에 많은 뜻을 담고, 말은 간단히 하라\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Things are always at their best in the beginning.\r\n");
      out.write("\r\n");
      out.write("사물은 항상 시작이 가장 좋다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("A gift in season is a double favor to the needy.\r\n");
      out.write("\r\n");
      out.write("필요할 때 주는 것은 필요한 자에게 두 배의 은혜가 된다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("In giving advice, seek to help, not to please, your friend.\r\n");
      out.write("\r\n");
      out.write("친구에게 충고할 때는 즐겁게 하지말고, 도움이 되도록 하라.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("The difficulty in life is the choice.\r\n");
      out.write("\r\n");
      out.write("인생에 있어서 어려운 것은 선택이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("The most beautiful thing in the world is, of course, the world itself.\r\n");
      out.write("\r\n");
      out.write("세상에서 가장 아름다운 것은 물론 세상 그 자체이다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("All fortune is to be conquered by bearing it.\r\n");
      out.write("\r\n");
      out.write("모든 운명은 그것을 인내함으로써 극복해야 한다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Better is to bow than break.\r\n");
      out.write("\r\n");
      out.write("부러지는 것보다 굽는 것이 낫다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Good fences makes good neighbors. \r\n");
      out.write("\r\n");
      out.write("좋은 울타리는 선한 이웃을 만든다.\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("Give me liberty, or give me death. \r\n");
      out.write("\r\n");
      out.write("자유가 아니면 죽음을 달라.\r\n");
      out.write("</pre>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col\">\r\n");
      out.write("      \r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
