<!DOCTYPE html>
<html lang="en">
<head>
    <title>Details</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- FontAwesome CSS -->
   
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <!-- ElegantFonts CSS -->
    <link href="css/elegant-fonts.css" rel="stylesheet" type="text/css"/>

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link href="style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
    
</head>
<style>
    input[type="text"]
    {
        
        background-color: transparent;
        
    }
</style>
<style>
    input[type="password"]
    {
        background-color: transparent;
        
    }
</style>
<style>
    input[type="submit"]
    {
        background-color: transparent;
    }
</style>

      
    
<body>
    
  <!-- <%
            String user=(String)session.getAttribute("user");
            if(user==null)
            {
                response.sendRedirect("login.jsp");
            }
        %>-->
        <div>
        <header class="site-header">
            <div class="top-header-bar">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
                            <div class="header-bar-email d-flex align-items-center">
                                <i class="fa fa-envelope"></i><a href="#">info@sied.in</a>
                            </div><!-- .header-bar-email -->

                            <div class="header-bar-text lg-flex align-items-center">
                                <p><i class="fa fa-phone"></i>+91-9725554395 </p>
                                
                            </div><!-- .header-bar-text -->
                        </div><!-- .col -->

                        <div class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                            <div class="header-bar-search">
                                <form class="flex align-items-stretch">
                                    <input type="search" placeholder="What would you like to learn?">
                                    <button type="submit" value="" class="flex justify-content-center align-items-center"><i class="fa fa-search"></i></button>
                                </form>
                            </div><!-- .header-bar-search -->

                            <div class="header-bar-menu">
                                <ul class="flex justify-content-center align-items-center py-2 pt-md-0">
                                    <li><%=user%></li>
                                    <li><a href="logout.jsp">Logout</a></li>
                                </ul>
                            </div><!-- .header-bar-menu -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container-fluid -->
            </div><!-- .top-header-bar -->

            <div class="nav-bar" style="background-color: #cac5c5">
                <div class="container">
                    <div class="row">
                        <div class="col-9 col-lg-3">
                            <div class="site-branding">
                                <h1 class="site-title"><a href="index.html" rel="home">Sop<span>an</span></a></h1>
                            </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li><a href="adminhomepage.jsp">Home</a></li>
                                    <li><a href="stureg.jsp">Registration</a></li>
                                    <li><a href="stuview.jsp">Details</a></li>
                                    <li><a href="stufees.jsp">Fees</a></li>
                                    <li><a href="stumarks.jsp">Marks</a></li>
                                </ul>

                                <div class="hamburger-menu d-lg-none">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div><!-- .hamburger-menu -->

                                <div class="header-bar-cart">
                                    <a href="#" class="flex justify-content-center align-items-center"><span aria-hidden="true" class="icon_bag_alt"></span></a>
                                </div><!-- .header-bar-search -->
                            </nav><!-- .site-navigation -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .nav-bar -->
        </header><!-- .site-header -->
         <div >
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="hero-content-wrap flex flex-column justify-content-center align-items-start">
                            <header class="entry-header" >
                                <h1 style="color: #999999;">Details </h1>
                               <%@page import="java.sql.ResultSet"%>
                               <%@page import="java.sql.PreparedStatement"%>
                               <%@page import="java.sql.DriverManager"%>
                                <%@page import="java.sql.Connection"%>
                                <h4>Enter First name</h4>
                                <form method="post" action="#">
                                <table>
                                <tr>
                                <td><input class="form-control" type="text" name="nm"></td>
                                <td><input class="form-control" type="submit" value="Search"></td>
                                </tr>
                                </table>
                                </form>
                                <br>
                                <br>
                                <%
    String nm=request.getParameter("nm");
    Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
    String qry="select * from stureg ";
   
    PreparedStatement ps=con.prepareStatement(qry);
    ResultSet rs=ps.executeQuery();
   int count=1;
%><form>
    <table  class="table table-bordered">
        <tr >
            <th>Student_id</th>
            <th>First_Name</th>
            <th>Last_Name</th>
            <th>Gender</th>
            <th>Address</th>
            <th>Mobile_No.</th>
            <th>Courses</th>
            <th>Image</th>
          
        </tr>
        
        
         <% while(rs.next())
    { %>
        <tr>
            <td ><%=count %></td>
            <td><%=rs.getString("fname") %></td>
            <td><%=rs.getString("lname") %></td>
            <td><%=rs.getString("gender") %></td>
            <td><%=rs.getString("address") %></td>
            <td><%=rs.getString("mobno") %></td>
            <td><%=rs.getString("courses") %></td>
            <td><img src="getimg2.jsp?id=<%=rs.getInt("stuid")%>" width="100" height="100"></td>
            
            <td><a  href="#" class="btn btn-primary ">Update</a></td>
            <td><a  href="#" class="btn btn-danger ">Delete</a></td>
        </tr>
         <%
    
                         count++;            }
                                 %>
    </table>
</form>
                                
                            </header>
                                               <div class="entry-content">
                                <p></p>
                            </div><!-- .entry-content -->

                          
                        </div><!-- .hero-content-wrap -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .hero-content-hero-content-overlay -->
    </div><!-- .hero-content -->
    
       <footer class="site-footer" >
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                   
                    
                    <div class="col-12 col-lg-6">
                        <div class="foot-contact">
                            <h2>Contact Us</h2>

                            <ul>
                                <li>Email: info@sied.in</li>
                                <li>Phone: +91-9725554395</li>
                               
                            </ul>
                        </div><!-- .foot-contact -->
                    </div><!-- .col -->
                    <div class="row-5">
                        
                    </div>

 
               <div class="col-12 col-lg-6">
                        <div class="follow-us" >
                            <h2>Follow Us</h2>
                            
                            <ul class="follow-us flex flex-wrap align-items-center">
                                <li><a href="#" align="right"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" align="right"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" align="right"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#" align="right"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                        </div><!-- .quick-links -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->
    </footer>


<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/swiper.min.js'></script>
<script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
<script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>
</body>
</html>