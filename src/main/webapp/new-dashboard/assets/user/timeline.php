<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>User Dashboard - Bohni</title>

	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	
  	<link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">

  	<link rel="stylesheet" type="text/css" href="css/user.css">
  	<link rel="stylesheet" type="text/css" href="css/timeline.css">

  	<link rel="stylesheet" type="text/css" href="OwlCarousel/owl.css">
  	

</head>
<body>

<section id="header">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 padNone">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<nav class="navbar navbar-expand-lg navbar-light">
								<a class="navbar-brand" href="#"><img class="logo" src="../img/logoo.png"></img></a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item">
								    <a class="nav-link" href="http://localhost/BohniOfficial/user/dashboard.php">Dashboard</a>
								</li>
								<span class="liDeivder">|</span>
								<li class="nav-item">
								    <a class="nav-link" href="#">Static Map</a>
								</li>
								<span class="liDeivder">|</span>
								<li class="nav-item">
								    <a class="nav-link" href="http://localhost/BohniOfficial/user/timeline.php">Timeline</a>
								</li>
								<span class="liDeivder">|</span>
								<li class="nav-item">
								    <a class="nav-link" href="#">Notification</a>
								</li>
							</ul>
							<form class="form-inline my-2 my-lg-0">
								 <a href="#" class="dashboardBtn">Logout</a>
							</form>
							</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</section>
<!-- 
<section id="details">
	<div class="container">
		<h2>Campaign Details</h2>
	</div>
	<div class="container">
		<select class="form-control" id="campaignName">
          <option selected="">Amazon India Pvt Ltd</option>
          <option>Tata Motors India</option>
        </select>
	</div>
	<div class="container">
		<table class="table">
		    <thead>
		    <tr>
		      <th>Name</th>
		      <th>Zone</th>
		      <th>Days/Km</th>
		      <th>Amount</th>
		      <th>Created at</th>
		      <th>Start Date</th>
		      <th>End Date</th>
		      <th>Status</th>
		    </tr>
		    </thead>
		    <tbody>
		      <tr>
			      <td>Amazon India Pvt Ltd</td>
			      <td>Thane,Maharashtra</td>
			      <td>20 Km</td>
			      <td>42,000</td>
			      <td>8/07/2019</td>
			      <td>9/07/2019</td>
			      <td>7/8/2019</td>
			      <td><span class="badge badge-pill badge-success">Active</span></td>
		      </tr>
		    </tbody>
		</table>
	</div>
	<div class="container">
		<button class="btn btn-block filter-btn">Reset</button>
	</div>
</section> -->

<section id="timelineSec">
	<div class="container">
		<h2>Timeline</h2>
	</div>
	<div class="container-fluid px-1 px-md-4 mx-auto">
    <div class="timelineBx">
        <div class="row d-flex justify-content-between px-3 top">
            <div class="d-flex">
                <!-- <h5>ORDER <span class="text-primary font-weight-bold">#Y34XDHR</span></h5> -->
            </div>
            <div class="d-flex flex-column text-sm-right">
                <p class="mb-0">Expected End Date <span class="font-weight-bold">30 August 2021</span></p>
                <!-- <p>USPS <span class="font-weight-bold">234094567242423422898</span></p> -->
            </div>
        </div> <!-- Add class 'active' to progress -->
        <div class="row d-flex justify-content-center">
            <div class="col-12">
                <ul id="progressbar" class="text-center">
                    <li class="active step0">
                    	<div class="timlineContent">
                    		<h4>Payment</h4>  
                    		<p>01 June 2021</p>
                    	</div>
                    </li>
                    <li class="active step0">
                    	<div class="timlineContent">
                    		<h4>Creative Upload</h4>  
                    		<p>01 June 2021</p>
                    	</div>
                    </li>
                    <li class="active step0">
                    	<div class="timlineContent">
                    		<h4>Order Live</h4>  
                    		<p>01 June 2021</p>
                    	</div>
                    </li>
                    <li class="step0">
		                   <div class="timlineContent">
                    		<h4>Installation</h4>  
                    		<p>01 June 2021</p>
                    	</div>
                    </li>
                    <li class="step0">
                    	<div class="timlineContent">
                    		<h4>Active</h4>  
                    		<p>01 June 2021</p>
                    	</div>
                    </li>
                    <li class="step0">
                    	<div class="timlineContent">
                    		<h4>Proof of Work 1</h4>  
                    		<p>01 June 2021</p>
                    	</div>
                    </li>
                    <li class="step0">
                    	<div class="timlineContent">
                    		<h4>Proof of Work 2</h4>  
                    		<p>01 June 2021</p>
                    	</div>
                    </li>
                    <li class="step0">
                    	<div class="timlineContent">
                    		<h4>Campaign End</h4>  
                    		<p>01 June 2021</p>
                    	</div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- <div class="row justify-content-between top">
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/9nnc9Et.png">
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br>Processed</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/u1AzR7w.png">
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br>Shipped</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/TkPm63y.png">
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br>En Route</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/HdsziHP.png">
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br>Arrived</p>
                </div>
            </div>
          </div> -->
      </div>
    </div>
</section>

<!-- <section id="images">
	<div class="container">
		<h2>Campaign Images</h2>
		<p>[Start of the Campaign]</p>
	</div>
	<div class="container">
		<select class="form-control" id="campaignName">
          <option selected="">Filter by Vehicle</option>
          <option>MH 02 J 7585</option>
          <option>MH 03 K 5455</option>
        </select>
	</div>
	<div class="container">
		<div class="carousel-wrap">
		  <div class="owl-carousel">
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		    <div class="item"><img src="img/6.jpg"></div>
		  </div>
		</div>
	</div>
</section> -->


<section id="footer">
	<div class="container">
		<p>&copy; Copyright 2021. All Rights Reserved.</p>
	</div>
</section>

<!-- Javascript Code -->

<script type="text/javascript" src="OwlCarousel/owl.js"></script>
<script type="text/javascript">
	$('.owl-carousel').owlCarousel({
  loop: true,
  margin: 10,
  nav: true,
  navText: [
    "<i class='fa fa-caret-left'></i>",
    "<i class='fa fa-caret-right'></i>"
  ],
  autoplay: true,
  autoplayHoverPause: true,
  responsive: {
    0: {
      items: 2
    },
    600: {
      items: 3
    },
    1000: {
      items: 5
    }
  }
})
</script>

</body>
</html>