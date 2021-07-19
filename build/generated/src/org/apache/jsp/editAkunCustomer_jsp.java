package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class editAkunCustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html style=\"width: 100%;height: 100%;\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\">\n");
      out.write("        <title>Akun</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/bootstrap/css/bootstrap.min.css?h=e87ef69b765c73edb7c5c04531b3a4e7\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/fonts/font-awesome.min.css?h=2c0fc24b3d3038317dc51c05339856d0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/Login-Form-Clean.css?h=39a0a7dd987577519d6b6efd86126b53\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/Navigation-with-Search.css?h=cc854edeeadd4c06dfda9f834e92e87a\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/styles.css?h=b1cd5335afca5efee5edbd596355182f\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body style=\"width: 100%;height: 100%;\">\n");
      out.write("        <div class=\"container\" style=\"height: 10%;width: 100%;max-width: 100%;\">\n");
      out.write("            <nav class=\"navbar navbar-light navbar-expand-lg navigation-clean-search\" style=\"height: 100%;width: 100%;\">\n");
      out.write("                <div class=\"container\"><a class=\"navbar-brand\" href=\"#\"><img src=\"assets/img/UKM%20GWE2.png?h=bd322fd5758fd3eacf4ebe3863a8f937\" width=\"100px\"></a><button data-toggle=\"collapse\" class=\"navbar-toggler\" data-target=\"#navcol-1\"><span class=\"sr-only\">Toggle navigation</span><span class=\"navbar-toggler-icon\"></span></button>\n");
      out.write("                    <div\n");
      out.write("                        class=\"collapse navbar-collapse float-right\" id=\"navcol-1\">\n");
      out.write("                        <ul class=\"nav navbar-nav ml-auto\" style=\"margin: 0px;margin-left: 109px;\">\n");
      out.write("                            <li class=\"nav-item\" role=\"presentation\"><a class=\"nav-link active\" href=\"#\">Keranjang</a></li>\n");
      out.write("                            <li class=\"nav-item\" role=\"presentation\"><a class=\"nav-link\" href=\"#\">Wishlist</a></li>\n");
      out.write("                            <li class=\"nav-item\" role=\"presentation\"><a class=\"nav-link float-right\" href=\"#\">My Account</a></li>\n");
      out.write("                            <li class=\"nav-item\" role=\"presentation\"><a class=\"nav-link\" href=\"#\">Help</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <form class=\"form-inline ml-auto\" target=\"_self\">\n");
      out.write("                            <div class=\"form-group\"><label for=\"search-field\"><i class=\"fa fa-search\"></i></label><input class=\"form-control search-field\" type=\"search\" id=\"search-field\" name=\"search\" style=\"padding: 10px;padding-top: 18px;width: 360px;\" placeholder=\"Cari Kategori atau Barang\"></div>\n");
      out.write("                            <a\n");
      out.write("                                class=\"btn btn-light float-right action-button\" role=\"button\" href=\"#\">Cari</a>\n");
      out.write("                        </form><button class=\"btn btn-primary\" type=\"button\" style=\"margin-left: 2%;\">Logout</button></div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\" style=\"width: 100%;max-width: none;height: 88%;\">\n");
      out.write("            <h1 style=\"width: 100%;height: 10%;margin-top: 1%;margin-bottom: 1%;\">Profil</h1>\n");
      out.write("            ");

                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String nama = request.getParameter("nama");
                String alamat = request.getParameter("alamat");
                String telepon = request.getParameter("notel");

            
      out.write("\n");
      out.write("            <form action = \"EditAkunServlet\" style=\"width: 100%;height: 80%;padding-top: 1%;padding-right: 1%;\">\n");
      out.write("                <div class=\"form-group\" style=\"width: 100%;height: 7%;margin: 0px;margin-right: 0px;margin-bottom: 1%;\"><label class=\"text-right\" style=\"width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;\">Nama&nbsp;</label><input class=\"form-control float-right\" name=\"nama\" type=\"text\" value=\" ");
 out.print(nama);
      out.write(" \"  style=\"width: 90%;height: 100%;\" required=\"\"></div>\n");
      out.write("                <div\n");
      out.write("                    class=\"form-group\" style=\"width: 100%;height: 7%;margin: 0px;margin-right: 0px;margin-bottom: 1%;\"><input class=\"form-control float-right\" type=\"email\" name=\"email\" style=\"width: 90%;\"  value=\"");
 out.print(email);
      out.write("\" required=\"\"><label class=\"text-right\" style=\"width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;\">Email</label></div>\n");
      out.write("                <div\n");
      out.write("                    class=\"form-group\" style=\"width: 100%;height: 7%;margin: 0px;margin-right: 0px;margin-bottom: 1%;\"><label class=\"text-right\" style=\"width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;\">Password</label><input name=\"password\" class=\"form-control float-right\" type=\"password\" style=\"width: 90%;height: 100%;\" required=\"\"  value=\"");
 out.print(password);
      out.write("\"></div>\n");
      out.write("                <div\n");
      out.write("                    class=\"form-group\" style=\"width: 100%;height: 7%;margin: 0px;margin-right: 0px;margin-bottom: 1%;\"><input class=\"form-control float-right\" type=\"tel\" name=\"telepon\" style=\"width: 90%;height: 100%;\" value=\"");
 out.print(telepon);
      out.write("\" required=\"\"><label  class=\"text-right\" style=\"width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;\">Nomor HP</label></div>\n");
      out.write("                <div\n");
      out.write("                    class=\"form-group\" style=\"width: 100%;height: 10%;margin: 0px;margin-right: 0px;margin-bottom: 1%;\"><label class=\"text-right\" style=\"width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;\">Alamat</label>\n");
      out.write("                    <textarea  class=\"form-control float-right\" style=\"width: 90%;height: 100%;\"  nama=\"alamat\" required=\"\">");
 out.print(alamat);
      out.write("</textarea>\n");
      out.write("                </div>\n");
      out.write("                <button\n");
      out.write("                    class=\"btn btn-primary float-right\" type=\"submit\">Edit</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"/assets/js/jquery.min.js?h=89312d34339dcd686309fe284b3f226f\"></script>\n");
      out.write("        <script src=\"/assets/bootstrap/js/bootstrap.min.js?h=7c038681746a729e2fff9520a575e78c\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
