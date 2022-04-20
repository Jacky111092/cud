<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bohni - Advertising is about to Change</title>
	
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="icon" href="webasset/img/favicon.png" type="image/x-icon" />  	
  	<link rel="stylesheet" href="webasset/font-awesome-4.7.0/css/font-awesome.min.css">

  	<link rel="stylesheet" type="text/css" href="webasset/css/style.css">
  	<link rel="stylesheet" type="text/css" href="webasset/css/home.css">
  	<link rel="stylesheet" type="text/css" href="webasset/css/animation.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.transitions.css">

	<link rel="stylesheet" type="text/css" href="webasset/css/testimonials.css">

<style type="text/css">

	.open-button {
	padding:.8% 2%;
	color: #1a385a;
	cursor: pointer;
	opacity: 0.9;
	position: fixed;
	bottom: 45px;
	right: 35px;
	z-index: 11;
	border-radius: 10px;
	border: none;
	outline: none;
	font-size: 18px;box-shadow: 0 5px 8px #afafaf;
	}

	.open-button:hover{
	cursor: pointer;
	}

    .chat-popup {
  display: none;
  position: fixed;
  bottom: 23px;
  right: 15px;
  border: 1px solid #f1f1f1;
  z-index: 16;
}

/* Add styles to the form container */
.form-container {
  /*max-width: 600px;*/
  padding: 40px;
  background-color: white;
  border:1px solid #000;
  box-shadow: 10px 10px 10px 10px rgba(0,0,0,0.4);

}

/* Full-width textarea */
.form-container textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 200px;
}

.form-container input {
  width: 100%;
  padding: 10px;
  margin: auto;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 20px;
}

.form-container h3{
	color: #1a385a;
}

/* When the textarea gets focus, do something */
.form-container textarea:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
  background-color: #1a385a;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.9;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: white;
  color: #000;
  border:1px solid #000;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}





.material-textfield {
  position: relative;  
}

.material-textfield label {
  position: absolute;
  font-size: 1rem;
  left: 0;
  top: 50%;
  transform: translateY(-50%);
  background-color: white;
  color: gray;
  padding: 0 0.3rem;
  margin: 0 0.5rem;
  transition: .1s ease-out;
  transform-origin: left top;
  pointer-events: none;
}
.material-textfield input {
  font-size: 1rem;
  outline: none;
  border: 1px solid gray;
  border-radius: 5px;  
  padding: 1rem 0.7rem;
  color: gray;
  transition: 0.1s ease-out;
  background-color: white;
}
.material-textfield input:focus {
  border-color: #1a385a;  
}
.material-textfield input:focus + label {
  color: #1a385a;
  top: 0;
  transform: translateY(-50%) scale(.9);
}
.material-textfield input:not(:placeholder-shown) + label {
  top: 0;
  transform: translateY(-50%) scale(.9);
}



	</style>

</head>
<body>

<a href="bohni_brand_and_agencies.jsp" class="open-button bohniBtn"><i class="fa fa-arrow-circle-right"></i>&nbsp;&nbsp;&nbsp; Get A Quote</a>



<jsp:include page='layout/bohni_header.jsp'/>



<section id="header" style="">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 padNone">

					<div id="sliderFrame">
					    <div id="slider">
					    	<div class="overlay"></div>
					    	<video preload="auto" autoplay="" loop="" muted="">
								  <source src="webasset/img/bohniintro.mp4" type="video/mp4">
								  <source src="webasset/img/bohniintro.mp4" type="video/ogg">
									Your browser does not support the video tag.
								</video>
					    </div>
					</div>

					<!-- Slider -->
					<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="2500">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <div class="carousel-caption">
					        <h2>Hyperlocal OOH Advertising</h2>
					      </div>
					    </div>
					    <div class="carousel-item">
					      <div class="carousel-caption">
					        <h2>Last-mile delivery vehicles</h2>
					      </div>
					    </div>
					    <div class="carousel-item">
					      <div class="carousel-caption">
					        <h2>Pay Only For Active Vehicles</h2>
					      </div>
					    </div>
					    <div class="carousel-item">
					      <div class="carousel-caption">
					        <h2>Real-time Tracking & Analytics</h2>
					      </div>
					    </div>
					  </div>
					  <!-- <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					  </a> -->
					</div>

			</div>
		</div>
	</div>
</section>



<section id="whyBohni">
	<!-- <div class="heading">
		<div class="bohni-para p-5">
			<h2>"Bohni is an Ad-tech platform offering thousands of verified wrapped vehicles for displaying brand advertisements in every area across mumbai."</h2>
		</div>
	</div> -->

	<div class="container p-5">
	  <div class="quote"><h1><i class="fa fa-quote-left" aria-hidden="true"></i></h1></div>
	  <div class="text-container">
	    <div class="text">
	      	<h1>Bohni is an Ad-tech platform offering thousands of verified wrapped vehicles for displaying brand advertisements in every area across mumbai.</h1>
	    </div>
	  </div>
	  <div class="quote"><h1><i class="fa fa-quote-right" aria-hidden="true"></i></h1></div>
	</div>

	<div class="container">
	<div class=" featureOne featureBx">
	<div class="row">
	<div class="col-md-6 col-sm-12">
	<div class="featureContent textRight">
	<img src="webasset/img/icons/marketing.png">
	<!-- <p class="smallContent"></p> -->
	<h3>Large Format Vehicle Advertising</h3>
	<p>Our big, bold moving canvases display the large format outdoor advertising, each measuring six feet by seven feet.</p>
	</div>
	</div>		
	<div class="col-md-6 col-sm-12"><img src="webasset/img/svg/LargeFormatVehicle.svg" class="svgImg"></div>		
	</div>
	</div>
		
	<div class=" featureTwo featureBx">	
	<div class="row">
	<div class="col-md-6 col-sm-12"><img src="webasset/img/svg/catchingEyeballs.svg" class="svgImg"></div>
	<div class="col-md-6 col-sm-12">
	<div class="featureContent textLeft">
	<img src="webasset/img/icons/eyeball.png">
	<!-- <p class="smallContent"></p> -->
	<h3>Catching Eyeballs</h3>
	<p>Unlike static hoardings that can become like distant wallpaper, delivery vehicles ads are mobile and at eye level, so they really breakthrough.</p>
	</div>
	</div>				
	</div>
	</div>

	<div class=" featureThree featureBx">
	<div class="row">
	<div class="col-md-6 col-sm-12">
	<div class="featureContent textRight">
	<img src="webasset/img/icons/organizedDelivery.png">
	<!-- <p class="smallContent"></p> -->
	<h3>Organised Delivery Fleet</h3>
	<p>Last-mile delivery works on pre-defined routes in limited geographical areas hence allowing to do hyperlocal advertising on the macro markets.</p>
	</div>
	</div>	

	<div class="col-md-6 col-sm-12"><img src="webasset/img/svg/organizedDelivery.svg" class="svgImg"></div>		
	</div>
	</div>

	<div class=" featureTwo featureBx">	
	<div class="row">

	<div class="col-md-6 col-sm-12"><img src="webasset/img/svg/targetReach.svg" class="svgImg"></div>
	<div class="col-md-6 col-sm-12">
	<div class="featureContent textLeft">
	<img src="webasset/img/icons/target.png">
	<!-- <p class="smallContent"></p> -->
	<h3>Targeted Reach</h3>
	<p>Bohni vehicles move to residential and commercial spaces in designated geographics so you can filter your audience reach in a very efficient way.</p>

	</div>
	</div>				
	</div>
	</div>

	<div class=" featureThree featureBx">
	<div class="row">
	<div class="col-md-6 col-sm-12">
	<div class="featureContent textRight">
	<img src="webasset/img/icons/billBoard.png">
	<!-- <p class="smallContent"></p> -->

	<h3>1 Billboards VS 15 Trucks</h3>
	<p>Buy one billboard, or for the same rate get 10 targeted and tracked bohni vehicles reaching exponentially more viewers.</p>

	</div>
	</div>	
	<div class="col-md-6 col-sm-12"><img src="webasset/img/svg/billboardTruck.svg" class="svgImg"></div>		
	</div>
	</div>

	<div class=" featureOne featureBx">
	<div class="row">
	<div class="col-md-6 col-sm-12"><img src="webasset/img/svg/oohMeasurement.svg" class="svgImg"></div>	
	<div class="col-md-6 col-sm-12">
	<div class="featureContent textLeft">
	<img src="webasset/img/icons/measurement.png">
	<!-- <p class="smallContent"></p> -->
	<h3>OOH Measurement</h3>
	<p>With telematics vehicle tracking, impression data, and live fleet analytics, brands will have all the information to measure the campaign performance.</p>
	</div>
	</div>	
	
	</div>
	</div>
		


	</div>
	</section>

	<section id="howStarted">
	<div class="container">
	<div class="heading">
	<h2>How to Get Started</h2>
	<!-- <p>BOHNI is the only E-commerce media company. Thousands of vetted, available vehicles in every market across the Mumbai. The vehicles run for E-commerce giants.</p> -->
	<br/>
	</div>
	</div>
	<div class="container">
	<img src="webasset/img/svg/getStarted.svg">
	</div>
	</section>


	<section id="testi">
	<div class="container">
	<h2>Testimonials</h2>
	</div>
	<div class="container">
	<div class="row">
	<!-- <div class="col-md-1"></div> -->
	<div class="col-md-12">
	<div id="testimonial-slider" class="owl-carousel">
	<div class="testimonial">
	  <p class="description">
	      "The experiential and interactive inventories of Roll N Scroll are highly efficient and attractive. Team Roll N Scroll easily takes care of Municipal permissions and other in order to execute the activity without any obstacle."
	  </p>
	  <h3 class="title"></h3>
	  <div class="clientLogo"><img src="webasset/img/testimonials/indiabulls.png"></div>
	</div>

	<div class="testimonial">
	  <p class="description">
	      "We have been working with Roll N Scroll for last two years and we are quite satisfied with the services provided by them. They have a professional approach, systematic working and their field staff is also very active and always on the toes."
	  </p>
	  <h3 class="title"></h3>
	  <div class="clientLogo"><img src="webasset/img/testimonials/sleepwell.png"></div>

	</div>
	<div class="testimonial">
	  <p class="description">
	      "As computer and aviation academy, we knew that we needed to reach to students directly and create high brand. Roll N Scroll exactly understood our requirement and we did mobile scrolling van activity in three different location. Roll N Scroll! Agency does what they say they're going to do and delivers an on-time, quality services."
	  </p>
	  <h3 class="title"></h3>
	  <div class="clientLogo"><img src="webasset/img/testimonials/aptech.png"></div>

	</div>
	</div>
	</div>
	</div>
	<!-- <div class="col-md-1"></div> -->
	</div>
	</section>

	<!-- <section id="drive">
	<div class="container">
	<div class="row">
	<div class="col-md-6 col-sm-12">
	<br/>
	<br/>

	<h2>Drive by us</h2>
	<p>make thousands per month. <br/> Make your vehicle earn for you! <br/>Simply download the bohni app to get started.</p>
	<br/>
	<input type="text" name="applinkSendNumber" placeholder="Mobile Number*" class="form-control">
	<button type="button"><i class="fa fa-mobile" class="form-control"></i> Text App Download Link</button>
	<br/>

	<a href="#"><img src="webasset/img/google-play.svg" class="driverDowld"></a>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="#"><img src="webasset/img/app-store.svg" class="driverDowld" width="50px" height="60px"></a>

	</div>
	<div class="col-md-6 col-sm-12">
	<img class="driveWithUs" src="webasset/img/driveWithUs.png"></img>
	</div>
	</div>
	</div>
	</section> -->

	<section id="partners">
	<div class="container">
	<div class="heading">
	<h2>Our Esteemed Partner Works With</h2>
	</div>
	</div>
	<div class="container">
	<div class="row">
	<div class="col-1"></div>
	<div class="col-10">
	<div class="row">
	<div class="col-4">
		<div class="imgBx">

			<img src="webasset/img/3m.png">
		</div>
	</div>

	<div class="col-4">
		<div class="imgBx">
			<img src="webasset/img/amazone.png">
		</div>
	</div>
	<div class="col-4">
		<div class="imgBx">
			<img src="webasset/img/blueDart.png">
		</div>
	</div>
	</div>
	</div>
	<div class="col-1"></div>
	</div>
	</div>
	</section>

	<section id="newsletter">
	<div class="container">
	<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6 col-sm-12">
	<h4>Don't miss out, Be the first to know</h4>
	<p>Get notified about the details of ther offers, as well other important development update.</p>
	<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-7 col-sm-12 padRight">
		<input type="text" name="newsLetterEmail" id="newsLetterEmail" class="form-control" placeholder="Enter your email address">
	</div>
	<div class="col-md-3 col-sm-12 padLeft">
		<button type="button" class="form-control">Let me know</button>
	</div>
	<div class="col-md-1"></div>
	</div>
	</div>
	<div class="col-md-3"></div>
	</div>
	</div>
	</section>

	<jsp:include page='layout/bohni_footer.jsp'/>


	

</body>

<script type="text/javascript">
	
	function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}

$(function() {
    $(window).on("scroll", function() {
        if($(window).scrollTop() > 50) {
            $(".fixed-top").addClass("rolledDown");
        } else {
           
           $(".fixed-top").removeClass("rolledDown");
        }
    });
});



</script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$("#testimonial-slider").owlCarousel({
items:1,
itemsDesktop:[1000,1],
itemsDesktopSmall:[979,1],
itemsTablet:[769,1],
pagination:true,
transitionStyle:"goDown",
autoplay:true
});
});
</script>
</html>


<!-- logo

driver/vehicle partner

target replace

eyeball img

organised : vehicle in order

testi: upar/background

drive with us name

brand heading

drive back -->
<!-- 


elifgible points
and descri

about us wrapify

weightage

login btn

brand img

dash day 1

pair area coverd

reach location

toi : budget

page rename:
budget by location

order :budget
profit: impre

earning(paid+free)

revenue report: budget spent

location : area covered

social:% of area covered

data table:summary report

sss

idle time -->

<!-- driven time -->
<!-- total time -->

<!-- imgs gallery -->
