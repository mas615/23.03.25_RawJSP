/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.87
 * Generated at: 2023-03-29 12:45:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class join_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/action/navbar.jsp", Long.valueOf(1679992311562L));
    _jspx_dependants.put("/action/conn_db.jsp", Long.valueOf(1679929462173L));
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
      out.write("          <a class=\"navbar-brand\" href=\"index.jsp\">Project_Ma</a>\r\n");
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
            String B = "</a>\n" +
            "<ul class=\"dropdown-menu\">\n" +
            "<li><a class=\"dropdown-item\" href=\"action/logout_action.jsp\">로그아웃</a></li>\n" +
            "<li><a class=\"dropdown-item\" href=\"#\">내정보</a></li>\n" +
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
      out.write("                  <li><a class=\"dropdown-item\" href=\"board.jsp\">게시판</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"write.jsp\">글쓰기</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("\r\n");
      out.write("              <li class=\"nav-item dropdown\">\r\n");
      out.write("                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                  SQL injection\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("\r\n");
      out.write("              <li class=\"nav-item dropdown\">\r\n");
      out.write("                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                  파일 업/다운로드\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("\r\n");
      out.write("              <li class=\"nav-item dropdown\">\r\n");
      out.write("                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                  세션\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n");
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
      out.write("\r\n");
      out.write("        <script language='javascript'>\r\n");
      out.write("\r\n");
      out.write("            function check_submit(){\r\n");
      out.write("\r\n");
      out.write("                if (document.myForm.name.value == \"\") {\r\n");
      out.write("                    alert('ID을 입력하세요');\r\n");
      out.write("                    document.myForm.name.focus();\r\n");
      out.write("                    return;\r\n");
      out.write("\r\n");
      out.write("                }else if (document.myForm.password.value == \"\") {\r\n");
      out.write("                    alert('비밀번호를 입력하세요.');\r\n");
      out.write("                    document.myForm.password.focus();\r\n");
      out.write("                    return\r\n");
      out.write("\r\n");
      out.write("                }else if (document.myForm.email.value == \"\") {\r\n");
      out.write("                    alert('이메일을 입력하세요.');\r\n");
      out.write("                    document.myForm.email.focus();\r\n");
      out.write("                    return\r\n");
      out.write("\r\n");
      out.write("                }else if (document.myForm.address.value == \"\") {\r\n");
      out.write("                    alert('집주소를 입력하세요.');\r\n");
      out.write("                    document.myForm.email.focus();\r\n");
      out.write("                    return\r\n");
      out.write("\r\n");
      out.write("                }else {\r\n");
      out.write("                    document.myForm.action = 'action/join_action.jsp';\r\n");
      out.write("                    document.myForm.submit();\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("      <div class=\"modal-dialog\" role=\"document\" style=\"width: 40%;\">\r\n");
      out.write("        <div class=\"modal-content rounded-4 shadow\">\r\n");
      out.write("          <div class=\"modal-header p-5 pb-4 border-bottom-0\">\r\n");
      out.write("            <!-- <h1 class=\"modal-title fs-5\" >Modal title</h1> -->\r\n");
      out.write("            <h1 class=\"fw-bold mb-0 fs-2\">회원가입</h1>\r\n");
      out.write("            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\" onclick=\"javascript:location.href='index.jsp'\"></button>\r\n");
      out.write("          </div>\r\n");
      out.write("    \r\n");
      out.write("          <div class=\"modal-body p-5 pt-0\">\r\n");
      out.write("            <form form name = 'myForm' method = 'post' >\r\n");
      out.write("              <div class=\"form-floating mb-3\">\r\n");
      out.write("                <input type=\"text\" name=\"name\" class=\"form-control rounded-3\" id=\"floatingInput\" placeholder=\"name@example.com\">\r\n");
      out.write("                <label for=\"floatingInput\">아이디</label>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"form-floating mb-3\">\r\n");
      out.write("                <input type=\"password\" name=\"password\" class=\"form-control rounded-3\" id=\"floatingPassword\" placeholder=\"Password\">\r\n");
      out.write("                <label for=\"floatingPassword\">비밀번호</label>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"form-floating mb-3\">\r\n");
      out.write("                <input type=\"text\" name=\"email\" class=\"form-control rounded-3\" id=\"floatingInput\" placeholder=\"name@example.com\">\r\n");
      out.write("                <label for=\"floatingInput\">이메일</label>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"form-floating mb-3\">\r\n");
      out.write("                <input type=\"text\" name=\"address\" class=\"form-control rounded-3\" id=\"floatingInput\" placeholder=\"name@example.com\">\r\n");
      out.write("                <label for=\"floatingInput\">주소</label>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <button class=\"w-100 mb-2 btn btn-lg rounded-3 btn-primary\" type=\"submit\" onclick='javascript:check_submit();'>Sign up</button>\r\n");
      out.write("            </form>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
