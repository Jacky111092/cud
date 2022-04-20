<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Always force latest IE rendering engine -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Meta Keyword -->
        <meta name="keywords" content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
        <!-- meta character set -->
        <meta charset="utf-8">

   
       
        
        <!--
        Google Fonts
        ============================================= -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css">
		
        <!--
        CSS
        ============================================= -->
        <!-- Fontawesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Fancybox -->
        <link rel="stylesheet" href="css/jquery.fancybox.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <!-- Animate -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/main.css">
        <!-- Main Responsive -->
        <link rel="stylesheet" href="css/responsive.css">
		
		
		<!-- Modernizer Script for old Browsers -->
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
		
    </head>
	
    <body>

        <!--
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar-fixed-top">
            <div class="container">

                <div class="navbar-header">
                    <!-- responsive nav button -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- /responsive nav button -->

                    <!-- logo -->
                    <h1 class="navbar-brand">
                        <a href="home2exist.jsp">
                            <img src="img/MIME 1.png" alt="Kasper Logo" style="margin-top:-30px; height:100px;width:100px">
                        </a>
                    </h1>
                    <!-- /logo -->

                    </div>

                    <!-- main nav -->
                    <nav class="collapse navigation navbar-collapse navbar-right" role="navigation">
                        <ul id="nav" class="nav navbar-nav">
                           <!-- <li><a href="home2exist.jsp">Home</a></li> -->
                           <li><a href="profile2.jsp">Profile</a></li>
                            <li><a href="getClaim.do">Claim</a></li>
                            <li><a href="renew.do">Renew</a></li>
                                <li><a href="chooseplan2.jsp">Choose Plan</a></li>   
                                  <li><a href="trackStatus.do">Track Status</a></li>                                            <!--     <li><a href="#pricing">Pricing</a></li>  -->  
                            <li><a href="Requestcall2.jsp">Requestcall Back</a></li>
                            <li><a href="policy.do">Policy Details</a></li>
                            <li><a href="logout.do">Logout</a></li>
                        </ul>
                    </nav>
                    <!-- /main nav -->
                </div>

            </div>
        </header>
        
        
        
        
        <!--
        End Fixed Navigation
        ==================================== -->


       
      <!--   Home Slider
        ====================================  -->
      <section id="home">     
            <div id="home-carousel" class="carousel slide" data-interval="false">
                <ol class="carousel-indicators">
                   <!--  <li data-target="#home-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#home-carousel" data-slide-to="1"></li>
                    <li data-target="#home-carousel" data-slide-to="2"></li> -->
                </ol>
                <!--/.carousel-indicators-->

                <div class="carousel-inner">

                    <div class="item active"  style="background-image:url('img/b1.jpg')" >
                        <div class="carousel-caption">
                            <div class="animated bounceInRight">
                                <h2>Hello ${name} <br></h2>
                               <p>  </p>
                            </div>
                        </div>
                    </div>              

                    <div class="item" style="background-image: url('img/slider/bg2.jpg')">                
                        <div class="carousel-caption">
                            <div class="animated bounceInDown">
                                <h2>Hello ${name} <br></h2>
                               <p>  </p>
                            </div>
                        </div>
                    </div>

                    <div class="item" style="background-image: url('img/slider/bg3.jpg')">                 
                         <div class="carousel-caption">
                            <div class="animated bounceInUp">
                                <h2>Hello ${name} <br></h2>
                               <p>  </p>
                            </div>
                        </div>
                    </div>
                </div>
                
       

        
       <!--  #footer
        ==========================  -->
      <footer id="footer" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="footer-logo wow fadeInDown">
                                                   <img src="img/MIME 1.png" alt="Kasper Logo" style="margin-top:-30px; height:100px;width:100px">

                        </div>

                        <div class="footer-social wow fadeInUp">
                            <h3>We are social</h3>
                            <ul class="text-center list-inline">
                                <li><a href="http://goo.gl/RqhEjP"><i class="fa fa-facebook fa-lg"></i></a></li>
                                <li><a href="http://goo.gl/hUfpSB"><i class="fa fa-twitter fa-lg"></i></a></li>
                                <li><a href="http://goo.gl/r4xzR4"><i class="fa fa-google-plus fa-lg"></i></a></li>
                                <li><a href="http://goo.gl/k9zAy5"><i class="fa fa-dribbble fa-lg"></i></a></li>
                            </ul>
                        </div>

                       

                    </div>
                </div>
            </div>
        </footer> 
        <!--
        End #footer
        ========================== -->
        
               

        
 


        <!--
        JavaScripts
        ========================== -->
        
       <!-- main jQuery -->
     <script src="js/vendor/jquery-1.11.1.min.js"></script>
       <!-- Bootstrap -->
       <script src="js/bootstrap.min.js"></script>
        <!-- jquery.nav -->
       <script src="js/jquery.nav.js"></script>
       <!-- Portfolio Filtering -->
       <script src="js/jquery.mixitup.min.js"></script>
       <!-- Fancybox -->
      <script src="js/jquery.fancybox.pack.js"></script>
       <!-- Parallax sections -->
       <script src="js/jquery.parallax-1.1.3.js"></script>
        <!-- jQuery Appear -->
        <script src="js/jquery.appear.js"></script>
        <!-- countTo -->
       <script src="js/jquery-countTo.js"></script>
        <!-- owl carousel -->
      <script src="js/owl.carousel.min.js"></script>
        <!-- WOW script -->
      <script src="js/wow.min.js"></script>
        <!-- theme custom scripts -->
      <script src="js/main.js"></script>-->
    </body>
</html>
