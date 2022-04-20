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
	<style>
	.btn-price {
	  display: inline-block;
	  border-radius: 4px;
	  background-color: #f4511e;
	  border: none;
	  color: #FFFFFF;
	  text-align: center;
	  font-size: 18px;
	  padding: 20px;
	  width: 150px;
	  transition: all 0.5s;
	  cursor: pointer;
	  margin: 5px;
	  
	}

	.btn-price span {
	  cursor: pointer;
	  display: inline-block;
	  position: relative;
	  transition: 0.5s;
	}

	.btn-price span:after {
	  content: '\00bb';
	  position: absolute;
	  opacity: 0;
	  top: 0;
	  right: -20px;
	  transition: 0.5s;
	}

	.btn-price:hover span {
	  padding-right: 25px;
	}

	.btn-price:hover span:after {
	  opacity: 1;
	  right: 0;
	}

	</style>
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
                        <a href="#body">
                            <img src="img/MIME 1.png" alt="Kasper Logo" style="margin-top:-30px; height:100px;width:100px">
                        </a>
                    </h1>
                    <!-- /logo -->

                    </div>

                    <!-- main nav -->
                    <nav class="collapse navigation navbar-collapse navbar-right" role="navigation">
                        <ul id="nav" class="nav navbar-nav">
                           <li><a href="home.jsp">Home</a></li>
                            <li><a href="profile.jsp">Profile</a></li>
                            <li><a href="chooseplan1.jsp">Choose Plan</a></li>
                       
                                                                           <!--     <li><a href="#pricing">Pricing</a></li>  -->  
                      <li><a href="Requestcall.jsp">Requestcall Back</a></li>
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


       
   
      
      <section id="home">     
            <div id="home-carousel" class="carousel slide" data-interval="false">
                <ol class="carousel-indicators">
                </ol>
                <!--/.carousel-indicators-->

                <div class="carousel-inner">

                    <div class="item active"  style="background-image: url('img/b1.jpg')" >
                        <div class="carousel-caption">
                            <div class="animated bounceInRight">

                          <h1 style="margin-bottom:10px"><center><b>Policy Prices</b></center></h1>  
						<p style="margin-bottom:20px"><center><b>Company Name</b> :${vehicleDetails.getCompanyName()}</center><p>  
                   <p style="margin-bottom:5px"><center><b>Vehicle Model</b> :${vehicleDetails.getVehicleModel()}</center></p>   
                         <p style="margin-bottom:5px"><center><b>Registration Date</b> :${rtoObject.getBuydate()}</center></p>  
                                                   
<table style="width:100%;margin-top:20px" border="2px solid black">
  <tr>
    <th>Number Of Years</th>
    <td>1</td>
  </tr>
    <tr>
    <th>Premium Amount :</th>
    <td>${vehicleDetails.getInsurancePremiumAmount()}</td>
  </tr>
</table>
<form action="getquote.do">
   <input type="submit" value="Buy Now" class="btn btn-price" style="margin-top:15px;margin-left:34%">
 <div style="margin-top:15px">
 <input type="hidden" name="numberOfYears" value="1">
 </form>
<table style="width:100%" border="2px solid black">
  <tr>
    <th>Number Of Years</th>
    <td>3</td>
  </tr>
    <tr>
    <th>Premium Amount :</th>
    <td>${vehicleDetails.getInsurancePremiumAmount()*3}</td>
  </tr>
</table>
</div>
<form action="getquote.do">
   <input type="submit" value="Buy Now" class="btn btn-price" style="margin-top:15px;margin-left:34%">
 <div style="margin-top:15px">
 <input type="hidden" name="numberOfYears" value="3">
 </form>                    </div>
                            </div>
                        </div>
                    </div>              

                   
                </div>
                </div>
                </section>
                    

  



        <!-- 
        #footer
        ========================= -->
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
