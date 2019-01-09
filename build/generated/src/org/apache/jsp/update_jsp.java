package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.lang.Exception;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("         ");
 
            Connection connect = null;
            ResultSet rec = null;
            Statement s = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");     
                connect = DriverManager.getConnection("jdbc:mysql://localhost/product?user=root&password=");    
                s = connect.createStatement();
                String pro_id = request.getParameter("pro_id");
                String sql = "SELECT * FROM tb_product WHERE pro_id = '"+pro_id+"' ";
                s.execute(sql);
            }
            catch(Exception e){
                out.print(e.getMessage());
                e.printStackTrace();
            }
        
      out.write("\n");
      out.write("   \n");
      out.write("            \n");
      out.write("           \n");
      out.write("                                <h1>เพิ่มข้อมูล</h1>\n");
      out.write("                           \n");
      out.write("                     \n");
      out.write("                        \n");
      out.write("                           \n");
      out.write("                                    <label for=\"pro_name\">ชื่อ</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"pro_name\" value=\"");
      out.print( rec.getString("pro_name") );
      out.write("\" name=\"pro_name\" required>\n");
      out.write("                          \n");
      out.write("                            \n");
      out.write("                                    <label for=\"pro_type\">ประเภท</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"pro_type\" value=\"");
      out.print( rec.getString("pro_type") );
      out.write("\" name=\"pro_type\" required>\n");
      out.write("                        \n");
      out.write("                               \n");
      out.write("                                    <label for=\"pro_pric\">ราคา</label>\n");
      out.write("                                    <input type=\"number\" min=\"0\" max=\"1000000\" value=\"0\" step=\"1\"  id=\"pro_pric\" value=\"");
      out.print( rec.getString("pro_pric") );
      out.write("\" name=\"pro_pric\" required>\n");
      out.write("                            \n");
      out.write("                             \n");
      out.write("                                  \n");
      out.write("                                        <button class=\"btn btn-primary\" type=\"submit\">บันทึก</button>\n");
      out.write("                                    \n");
      out.write("                               \n");
      out.write("                            </form>\n");
      out.write("               \n");
      out.write("    </body>\n");
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
