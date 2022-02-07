package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhomepage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <title>Adminhomepage </title>\n");
      out.write("\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    \n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <!-- FontAwesome CSS -->\n");
      out.write("   \n");
      out.write("    <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("    <!-- ElegantFonts CSS -->\n");
      out.write("    <link href=\"css/elegant-fonts.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("    <!-- themify-icons CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\n");
      out.write("\n");
      out.write("    <!-- Swiper CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/swiper.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Styles -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\"></script>\n");
      out.write("  \n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write("    input[type=\"text\"]\n");
      out.write("    {\n");
      out.write("        background-color: transparent;\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<style>\n");
      out.write("    input[type=\"password\"]\n");
      out.write("    {\n");
      out.write("        background-color: transparent;\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<style>\n");
      out.write("    input[type=\"submit\"]\n");
      out.write("    {\n");
      out.write("        background-color: transparent;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("      \n");
      out.write("    \n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("  <!-- ");

            String user=(String)session.getAttribute("user");
            if(user==null)
            {
                response.sendRedirect("login.jsp");
            }
        
      out.write("-->\n");
      out.write("        <div>\n");
      out.write("        <header class=\"site-header\">\n");
      out.write("            <div class=\"top-header-bar\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0\">\n");
      out.write("                            <div class=\"header-bar-email d-flex align-items-center\">\n");
      out.write("                                <i class=\"fa fa-envelope\"></i><a href=\"#\">info@sied.in</a>\n");
      out.write("                            </div><!-- .header-bar-email -->\n");
      out.write("\n");
      out.write("                            <div class=\"header-bar-text lg-flex align-items-center\">\n");
      out.write("                                <p><i class=\"fa fa-phone\"></i>+91-9725554395 </p>\n");
      out.write("                                \n");
      out.write("                            </div><!-- .header-bar-text -->\n");
      out.write("                        </div><!-- .col -->\n");
      out.write("\n");
      out.write("                        <div class=\"col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center\">\n");
      out.write("                            <div class=\"header-bar-search\">\n");
      out.write("                                <form class=\"flex align-items-stretch\">\n");
      out.write("                                    <input type=\"search\" placeholder=\"What would you like to learn?\">\n");
      out.write("                                    <button type=\"submit\" value=\"\" class=\"flex justify-content-center align-items-center\"><i class=\"fa fa-search\"></i></button>\n");
      out.write("                                </form>\n");
      out.write("                            </div><!-- .header-bar-search -->\n");
      out.write("\n");
      out.write("                            <div class=\"header-bar-menu\">\n");
      out.write("                                <ul class=\"flex justify-content-center align-items-center py-2 pt-md-0\">\n");
      out.write("                                    <li>");
      out.print(user);
      out.write("</li>\n");
      out.write("                                    <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div><!-- .header-bar-menu -->\n");
      out.write("                        </div><!-- .col -->\n");
      out.write("                    </div><!-- .row -->\n");
      out.write("                </div><!-- .container-fluid -->\n");
      out.write("            </div><!-- .top-header-bar -->\n");
      out.write("\n");
      out.write("            <div class=\"nav-bar\" style=\"background-color: #cac5c5\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-9 col-lg-3\">\n");
      out.write("                            <div class=\"site-branding\">\n");
      out.write("                                <h1 class=\"site-title\"><a href=\"index.html\" rel=\"home\">Sop<span>an</span></a></h1>\n");
      out.write("                            </div><!-- .site-branding -->\n");
      out.write("                        </div><!-- .col -->\n");
      out.write("\n");
      out.write("                        <div class=\"col-3 col-lg-9 flex justify-content-end align-content-center\">\n");
      out.write("                            <nav class=\"site-navigation flex justify-content-end align-items-center\">\n");
      out.write("                                <ul class=\"flex flex-column flex-lg-row justify-content-lg-end align-content-center\">\n");
      out.write("                                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                    <li><a href=\"#\">About</a></li>\n");
      out.write("                                    <li><a href=\"#\">Courses</a></li>\n");
      out.write("                                    <li><a href=\"#\">blog</a></li>\n");
      out.write("                                    <li><a href=\"#\">Contact</a></li>\n");
      out.write("                                </ul>\n");
      out.write("\n");
      out.write("                                <div class=\"hamburger-menu d-lg-none\">\n");
      out.write("                                    <span></span>\n");
      out.write("                                    <span></span>\n");
      out.write("                                    <span></span>\n");
      out.write("                                    <span></span>\n");
      out.write("                                </div><!-- .hamburger-menu -->\n");
      out.write("\n");
      out.write("                                <div class=\"header-bar-cart\">\n");
      out.write("                                    <a href=\"#\" class=\"flex justify-content-center align-items-center\"><span aria-hidden=\"true\" class=\"icon_bag_alt\"></span></a>\n");
      out.write("                                </div><!-- .header-bar-search -->\n");
      out.write("                            </nav><!-- .site-navigation -->\n");
      out.write("                        </div><!-- .col -->\n");
      out.write("                    </div><!-- .row -->\n");
      out.write("                </div><!-- .container -->\n");
      out.write("            </div><!-- .nav-bar -->\n");
      out.write("        </header><!-- .site-header -->\n");
      out.write("         <div >\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-6\">\n");
      out.write("                        <div class=\"hero-content-wrap flex flex-column justify-content-center align-items-start\">\n");
      out.write("                            <header class=\"entry-header\">\n");
      out.write("                                <a href=\"empreg.jsp\"><img src=\"images/emp.jpg\" alt=\"\" height=\"250\" width=\"250\"></a>\n");
      out.write("                                <h4>Employees</h4>\n");
      out.write("                                \n");
      out.write("                                 </div><!-- .col -->\n");
      out.write("                                 </div>\n");
      out.write("                                \n");
      out.write("                    \n");
      out.write("                    <div class=\"col-6\">\n");
      out.write("                        <div class=\"hero-content-wrap flex flex-column justify-content-center align-items-start\">\n");
      out.write("                            <header class=\"entry-header\">\n");
      out.write("                                <a href=\"stureg.jsp\"><img src=\"images/stu.jpg\" alt=\"\" height=\"250\" width=\"250\"></a>\n");
      out.write("                                <h4>Students</h4>\n");
      out.write("                        </div><!-- .col -->\n");
      out.write("                                 </div>\n");
      out.write("                </div><!-- .row -->\n");
      out.write("            </div><!-- .container -->\n");
      out.write("        </div><!-- .hero-content-hero-content-overlay -->\n");
      out.write("    </div><!-- .hero-content -->\n");
      out.write("    \n");
      out.write("          <footer class=\"site-footer\" >\n");
      out.write("        <div class=\"footer-widgets\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    <div class=\"col-12 col-lg-6\">\n");
      out.write("                        <div class=\"foot-contact\">\n");
      out.write("                            <h2>Contact Us</h2>\n");
      out.write("\n");
      out.write("                            <ul>\n");
      out.write("                                <li>Email: info@sied.in</li>\n");
      out.write("                                <li>Phone: +91-9725554395</li>\n");
      out.write("                               \n");
      out.write("                            </ul>\n");
      out.write("                        </div><!-- .foot-contact -->\n");
      out.write("                    </div><!-- .col -->\n");
      out.write("                    <div class=\"row-5\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write(" \n");
      out.write("               <div class=\"col-12 col-lg-6\">\n");
      out.write("                        <div class=\"follow-us\" >\n");
      out.write("                            <h2>Follow Us</h2>\n");
      out.write("                            \n");
      out.write("                            <ul class=\"follow-us flex flex-wrap align-items-center\">\n");
      out.write("                                <li><a href=\"#\" align=\"right\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\" align=\"right\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\" align=\"right\"><i class=\"fa fa-instagram\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\" align=\"right\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div><!-- .quick-links -->\n");
      out.write("                    </div><!-- .col -->\n");
      out.write("                </div><!-- .row -->\n");
      out.write("            </div><!-- .container -->\n");
      out.write("        </div><!-- .footer-widgets -->\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script type='text/javascript' src='js/jquery.js'></script>\n");
      out.write("<script type='text/javascript' src='js/swiper.min.js'></script>\n");
      out.write("<script type='text/javascript' src='js/masonry.pkgd.min.js'></script>\n");
      out.write("<script type='text/javascript' src='js/jquery.collapsible.min.js'></script>\n");
      out.write("<script type='text/javascript' src='js/custom.js'></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
