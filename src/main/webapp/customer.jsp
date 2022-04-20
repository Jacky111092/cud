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

        <!-- Site Title -->
        <title>MIME</title>
        
        <!--
        Google Fonts
        ============================================= -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css">
		
        <!--
        CSS
        ============================================= -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        
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
        <!-- Login CSS -->
        <link rel="stylesheet" href="css/login.css">
		
		<!-- Modernizer Script for old Browsers -->
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
		<!-- Login js -->
       <script src="js/login.js"></script>
    </head>
	
    <body onload = "document.getElementById('id01').style.display='block'" style="width:auto;">
 	
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
                            <img src="img/icons/MIME 1.png" alt="MIME Logo" style="margin-top:-60px; height:110px;width:110px">
                        </a>
                    </h1>
                    <!-- /logo -->

                    </div>

                    <!-- main nav      class="current" -->
                    <nav class="collapse navigation navbar-collapse navbar-right" role="navigation">
                        <ul id="nav" class="nav navbar-nav">
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="#service">Service</a></li>
                            <li><a href="#about">About</a></li>
                           <li><a href="#subscribe">Subscribe</a></li>
                            <li><a href="#contact">Contact</a></li>
                            <li><a href="#" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">LOGIN</a></li>
                        </ul>
                    </nav>
                    <!-- /main nav -->
                </div>

            
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
<div id="id01" class="modal">
  
<div class="materialContainer">


   <div class="box">

      <div class="title">LOGIN</div><br><br>
	  <div>
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>
    
	<form action="login.do" onsubmit = "return validateForm()" method="post" class="modal-content animate">
     <p><font size="3" color="red">${loginmessage}</font></p>
     
      <div class="input">
         <input type="email" name="emailid" id="uid" placeholder="Email Id">
         <span class="spin"></span>
      </div>

      <div class="input">
         <input type="password" name="password" id="pw" placeholder="Password">
         <span class="spin"></span>
      </div>

      <div class="button login">
         <button><span>SIGN IN</span> <i class="fa fa-check"></i></button>
      </div>
	</form>
	<form action = "SignUp.jsp" method="post">

	  <div class="button login">
         <button><span>REGISTER</span> <i class="fa fa-check"></i></button>
      </div>
	</form>
	
      <a href="Forget.jsp" class="pass-forgot">Forgot your password?</a>

   </div>

   
</div>
</div>
    
      
        <!--
        Home Slider
        ==================================== -->
        <section id="home">     
            <div id="home-carousel" class="carousel slide" data-interval="false">
                <ol class="carousel-indicators">
                    <li data-target="#home-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#home-carousel" data-slide-to="1"></li>
                    <li data-target="#home-carousel" data-slide-to="2"></li>
                </ol>
                <!--/.carousel-indicators-->

                <div class="carousel-inner">

                    <div class="item active"  style="background-image: url('img/slider/b1.jpg')" >
                        <div class="carousel-caption">
                            <div class="animated bounceInRight">
                                <h2>MIME <br>WELCOMES YOU !</h2>
                                <p>MOTOR INSURANCE MADE EASY</p>
                            </div>
                        </div>
                    </div>              

                    <div class="item" style="background-image: url('img/slider/b2.jpg')">                
                        <div class="carousel-caption">
                            <div class="animated bounceInDown">
                                <h2>VIEW , INSURE , DRIVE</h2>
                                <p>FOR THE ONE WHO DRIVES CRAZY</p>
                            </div>
                        </div>
                    </div>

                    <div class="item" style="background-image: url('img/slider/b3.jpg')">                 
                         <div class="carousel-caption">
                            <div class="animated bounceInUp">
                                <h2>THE CARS WE DRIVE SAY A LOT ABOUT US</h2>
                                <p>SO ALLOW US TO INSURE IT !</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.carousel-inner-->
                <nav id="nav-arrows" class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
                    <a class="sl-prev hidden-xs" href="#home-carousel" data-slide="prev">
                        <i class="fa fa-angle-left fa-3x"></i>
                    </a>
                    <a class="sl-next" href="#home-carousel" data-slide="next">
                        <i class="fa fa-angle-right fa-3x"></i>
                    </a>
                </nav>

            </div>
        </section>
        <!--
        End #home Slider
        ========================== -->

        
        <!--
        #service
        ========================== -->
        <section id="service">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title text-center wow fadeInDown">
                            <h2>Services</h2>    
                            <p>PROTECTION IS JUST A CLICK AWAY</p>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-6 col-sm-12 wow fadeInLeft">
                        <div class="media">
                            <a href="#" class="pull-left">
                                <img src="img/icons/cog.png" class="media-object" alt="Monitor">
                            </a>
                            <div class="media-body">
                                <h3>BIKE INSURANCE</h3>
                                <p>YOUR HELMET & OUR INSURANCE WALKS HAND IN HAND</p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-6 col-sm-12 wow fadeInRight" data-wow-delay="0.2s">
                        <div class="media">
                            <a href="#" class="pull-left">
                                <img src="img/icons/cog.png" alt="Cog">
                            </a>
                            <div class="media-body">
                                <h3>CAR INSURANCE</h3>
                                <p>YOUR SEATBELT & OUR INSURANCE WALKS HAND IN HAND</p>
                            </div>
                        </div>
                        
                    </div>

                    

                </div> <!-- end .row -->
            </div> <!-- end .container -->
        </section>
        <!--
        End #service
        ========================== -->

        <!--
        #service-bottom
        ========================== -->
        
        <section id="service-bottom">
            <div class="container" >
                    <div class="mobile-device">
                       <img data-wow-delay="0.2s" style="height:400px ;width:350px;"class="img-responsive black  wow fadeInLeftBig" src="img/icons/MIME 1.png" alt="iPhone Black">     
                    </div>
                <div class="service-features wow fadeInRight">
                    <h3>OUR SERVICES COMES WITH...</h3>
                    <ul>
                        <li>TRUST</li>
                        <li>HELPFUL</li>
                        <li>EASY</li>
                        <li>ON TIME</li>
                    </ul>
                </div>
            </div>
        </section>
        <!--
        End #service-bottom
        ========================== -->


        <!--
        #Portfolio
        ========================== -->
        
       
        <!--
        End #Portfolio
        ========================== -->

        <!--
        #about
        ========================== -->
        
        
         <section id="about" class="home-section text-center" >
		<div class="heading-about">
			<div class="container"style="color:black;">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>About us</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container"style="color:black;">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
            <div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Nilesh Yadav</h5>
                        <div class="avatar"><img src="img/team/4.jpg" alt="" class="img-responsive img-circle" /></div>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Vishal Chothani</h5>
                        <div class="avatar"><img src="img/team/3.jpg" alt="" class="img-responsive img-circle" /></div>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Abhay Tyagi</h5>
                        <div class="avatar"><img src="img/team/3.jpg" alt="" class="img-responsive img-circle" /></div>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="1s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Eldrin Sanctis</h5>
                        <div class="avatar"><img src="img/team/4.jpg" alt="" class="img-responsive img-circle" /></div>

                    </div>
                </div>
				</div>
            </div>
        </div>		
		</div>
	</section>
        
        <section id="about" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		
	<div class="container"style="color:black;">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
            <div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Anshika K</h5>
                        <div class="avatar"><img src="img/team/1.jpg" alt="" class="img-responsive img-circle" /></div>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Namrata Hande</h5>
                        <div class="avatar"><img src="img/team/2.jpg" alt="" class="img-responsive img-circle" /></div>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Aditya Badhe</h5>
                        <div class="avatar"><img src="img/team/3.jpg" alt="" class="img-responsive img-circle" /></div>

                    </div>
                </div>
				</div>
            </div>
			
        </div>		
		</div>
	</section>	
        
        
        
        

        <!--
        End #about
        ========================== -->
        

        <!--
        #count
        ========================== -->
        
        
        <!--
        End #count
        ========================== -->

        <!--
        End #about-us
        ========================== -->

        <!--
        #quotes
        ========================== -->
        <section id="quotes">
            <div class="container">
                <div class="row wow zoomIn">
                    <div class="col-lg-12">
                        <div class="call-to-action text-center">
                            <p>“Insurance is a combination of caring, commitment and common sense”</p>
                            <span>Howard Wight</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--
        End #quotes
        ========================== -->

        <!--
        #pricing
        ========================== -->
        
        
        <!--
        End #pricing
        ========================== -->


        <!--
        #subscribe
        ========================== -->
        <section id="subscribe">
            <div class="container">
                <div class="row">

                    <div class="col-md-7 wow fadeInLeft">
                        <form action="#" method="post" class="subscription-form">
                            <i class="fa fa-envelope-o fa-lg"></i>
                            <input type="email" name="subscribe" class="subscribe" placeholder="YOUR MAIL" required="">
                            <input type="submit" value="SUBSCRIBE" id="mail-submit">
                        </form>
                    </div>

                    <div class="col-md-4 text-left wow fadeInRight">
                        <p>Subscribe to our newsletter to hear more about us & our upcoming packages.</p>
                    </div>
                </div>
            </div>
        </section>
        <!--
        End #subscribe
        ========================== -->


        <!--
        #contact
        ========================== -->
        <section id="contact">
            <div class="container">
                <div class="row">

                    <div class="section-title text-center wow fadeInDown">
                        <h2>Contact Us</h2>
                        <p>We would love to hear from you</p>
                    </div>
                    
                    <div class="col-md-8 col-sm-9 wow fadeInLeft">
                        <div class="contact-form clearfix">
                            <form action="index.jsp" method="post">
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

        <!--
        #footer
        ========================== -->
        <footer id="footer" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="footer-logo wow fadeInDown">
                            <img src="img/icons/MIME 1.png" alt="logo">
                        </div>

                        <div class="footer-social wow fadeInUp">
                            <h3>We are social</h3>
                            <ul class="text-center list-inline">
                                <li><a href="https://facebook.com"><i class="fa fa-facebook fa-lg"></i></a></li>
                                <li><a href="https://twitter.com/"><i class="fa fa-twitter fa-lg"></i></a></li>
                                <li><a href="https://plus.google.com/"><i class="fa fa-google-plus fa-lg"></i></a></li>
            
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
        <script src="js/main.js"></script>
    </body>
</html>
