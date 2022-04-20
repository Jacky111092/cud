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
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td,tr {
    padding: 5px;
    text-align: left;
    color:orange;
}
</style>
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
                        <a href="#body">
                            <img src="img/logo.png" alt="Kasper Logo">
                        </a>
                    </h1>
                    <!-- /logo -->

                    </div>

                    <!-- main nav -->
                    <nav class="collapse navigation navbar-collapse navbar-right" role="navigation">
                        <ul id="nav" class="nav navbar-nav">
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
         <section id="home">     
            <div id="home-carousel" class="carousel slide" data-interval="false">
                <ol class="carousel-indicators">
                 <!--    <li data-target="#home-carousel" data-slide-to="0" class="active"></li> -->
                 <!--    <li data-target="#home-carousel" data-slide-to="1"></li>  -->
                 <!--    <li data-target="#home-carousel" data-slide-to="2"></li>-->
                </ol>
                <!--/.carousel-indicators-->

                <div class="carousel-inner">

                    <div class="item active"  style="background-image: url('img/b1.jpg')" >
                        <div class="carousel-caption">
                            <div class="animated bounceInRight">
  <h1 style="margin-bottom:20px"><center><b>Claim Details</b></center></h1>                             
<table style="width:100%" border="2px solid black">
  <tr>
    <th>Policy number :</th>
    <td></td>
  </tr>
  <tr>
  
    <th>Vehicle Registration No :</th>
    <td></td>
  </tr>
  
   
    <tr>
    <th>Claim Status : </th>
    <td></td>
  </tr>
</table>





                               <p>  </p>
                            </div>
                        </div>
                    </div>              

                   

              
                </div>
               
        <!--
        End #home Slider
        ========================== -->

        
        

                
       <section id="about">
            <div class="container">
                <div class="row">

                    <div class="section-title text-center wow fadeInUp">
                        <h2>About Us</h2>    
                        <p>.</p>
                    </div>
                


                    
                    <div class="about-us text-center wow fadeInDown">
                        <img src="img/about.png" alt="About Us" class="img-responsive">
                    </div>
                </div>
            </div>
            </section>
  

        <!--
        #contact
        ========================== -->
        <section id="contact">
            <div class="container">
                <div class="row">

                    <div class="section-title text-center wow fadeInDown">
                        <h2>Contact Us</h2>
                        <p>Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Mauris blandit aliquet elit, eget tincidunt.</p>
                    </div>
                    
                    <div class="col-md-8 col-sm-9 wow fadeInLeft">
                        <div class="contact-form clearfix">
                            <form action="index.html" method="post">
                                <div class="input-field">
                                    <input type="text" class="form-control" name="name" placeholder="Your Name" required="">
                                </div>
                                <div class="input-field">
                                    <input type="email" class="form-control" name="email" placeholder="Your Email" required="">
                                </div>
                                <div class="input-field message">
                                    <textarea name="message" class="form-control" placeholder="Your Message" required=""></textarea>
                                </div>
                                <input type="submit" class="btn btn-blue pull-right" value="SEND MESSAGE" id="msg-submit">
                            </form>
                        </div> <!-- end .contact-form -->
                    </div> <!-- .col-md-8 -->

                    <div class="col-md-4 col-sm-3 wow fadeInRight">
                        <div class="contact-details">
                            <span>GET IN TOUCH</span>
                            <p>+00 123.456.789 <br> <br> +00 123.456.789</p>
                        </div> <!-- end .contact-details -->

                        <div class="contact-details">
                            <span>GET IN TOUCH</span>
                            <p>+00 123.456.789 <br> <br> +00 123.456.789</p>
                        </div> <!-- end .contact-details -->
                    </div> <!-- .col-md-4 -->

                </div>
            </div>
        </section>
        <!--
        End #contact
        ========================== -->

        
       <!--  #footer
        ========================== -->
      <footer id="footer" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="footer-logo wow fadeInDown">
                            <img src="img/logo.png" alt="logo">
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
