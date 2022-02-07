<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>

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
    <link rel="stylesheet" href="style.css">
    
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
    <div class="hero-content">
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
                                    
                                    <li><a href="register.jsp">Register</a></li>
                                </ul>
                            </div><!-- .header-bar-menu -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container-fluid -->
            </div><!-- .top-header-bar -->

            <div class="nav-bar">
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
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Courses</a></li>
                                    <li><a href="#">blog</a></li>
                                    <li><a href="#">Contact</a></li>
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
         <div class="hero-content-overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="hero-content-wrap flex flex-column justify-content-center align-items-start">
                            <header class="entry-header">
                                <h4><form method="post" action="logincon.jsp">
                                            <table>
                                                <tr>
                                                 <td>USERNAME:-</td>
                                                 <td><input type="text" name="uname" required></td>
                                                </tr>      
                                                <tr>
                                                   <td>PASSWORD:-</td>
                                                   <td><input type="password" name="pass" required></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="submit" value="Login"></td>
                                                </tr>
                                            </table>
                                    </form>
                                </h4>
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