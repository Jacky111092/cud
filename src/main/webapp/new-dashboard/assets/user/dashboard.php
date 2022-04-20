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
  	
  	<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">

  	<link rel="stylesheet" type="text/css" href="css/user.css">
  	<link rel="stylesheet" type="text/css" href="css/dashboard.css">

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

<section id="main">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-sm-12">
				<div class="filter-box">
				    <div class="section-title">
				      <h2>Filters</h2>
				      <hr/>
				    </div>
				    <form>
				       <div class="form-group">
				        <label for="campaignName">Select Campaign</label>
				        <select class="form-control" id="campaignName">
				          <option selected="">Amazon India Pvt Ltd</option>
				          <option>Tata Motors India</option>
				          <option>reliance industries limited</option>
				        </select>
				      </div>
				      <div class="form-group">
				        <label for="timePeriod">Select Time Period</label>
				        <select class="form-control" id="timePeriod">
				          <option selected="">Daily</option>
				          <option>Weekly</option>
				          <option>Last 15 Days</option>
				          <option>Monthly</option>
				        </select>
				      </div>
				      <div class="form-check">
				          <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked="">
				          <label class="form-check-label" for="exampleRadios1">
				            Average Per Vehicle
				          </label>
				        </div>
				        <div class="form-check">
				          <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
				          <label class="form-check-label" for="exampleRadios2">
				            Average Area Wise
				          </label>
				        </div>
				        <button class="btn btn-block filter-btn">Reset</button>
				    </form>         
				  </div>
			</div>
			<div class="col-md-9 col-sm-12">
				<div id="kilometer">
					<canvas class="p-4" id="line-chart" width="800" height="300"></canvas>
				</div>
				<div id="performance">
					<canvas class="p-4" id="line-chart2" width="800" height="300"></canvas>
				</div>
				<div id="activeVehicles">
					<div class="row">
						<div class="col-md-3 col-sm-12">
							<div class="activeBx">
								<h2>09</h2>
								<p><strong>Active Areas</strong></p>
								<hr/>
								<ol>
									<li>Vasai</li>
									<li>Thane</li>
									<li>Navi Mumbai</li>
									<li>Mulund</li>
									<li>Andheri</li>
									<li>Bandra</li>
									<li>Dahisar</li>
									<li>Juhu</li>
									<li>Jogeshwari</li>
								</ol>
							</div>
						</div>
						<div class="col-md-3 col-sm-12">
							<div class="activeBx">
								<h2>02</h2>
								<p><strong>Free Branding Areas</strong></p>
								<hr/>
								<ol>
									<li>Ghatkopar</li>
									<li>Kalyan</li>
								</ol>
							</div>
						</div>
						<div class="col-md-3 col-sm-12">
							<div class="activeBx">
								<h2>03</h2>
								<p><strong>Most Active Areas</strong></p>
								<hr/>
								<ol>
									<li>Vasai</li>
									<li>Thane</li>
									<li>Navi Mumbai</li>
								</ol>
							</div>
						</div>
						<div class="col-md-3 col-sm-12">
							<div class="activeBx">
								<h2>05</h2>
								<p><strong>Days Remaining</strong></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



<section id="footer">
	<div class="container">
		<p>&copy; Copyright 2021. All Rights Reserved.</p>
	</div>
</section>

<!-- Javascript Code -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

<script type="text/javascript">
    new Chart(document.getElementById("line-chart"), {
  type: 'line',
  data: {
    labels: ['1 Jun','2 Jun','3 Jun','4 Jun','5 Jun','6 Jun','7 Jun','8 Jun','9 Jun','10 Jun'],
    datasets: [{ 
        data: [0,500,1000,2000,3000,4000,5000],
        label: "Kilometer",
        borderColor: "#3e95cd",
        fill: true
      }
    ]
  },
  options: {
    title: {
      display: true,
      text: 'Vehicle Kilometers Per Day'
    }
  }
});

  new Chart(document.getElementById("line-chart2"), {
  type: 'line',
  data: {
    labels: ['1 Jun','2 Jun','3 Jun','4 Jun','5 Jun','6 Jun','7 Jun','8 Jun','9 Jun','10 Jun'],
    datasets: [{ 
        data: [0,500,1000,2000,3000,4000,5000,6000],
        label: "Impression",
        borderColor: "#3e95cd",
        fill: true
      }
    ]
  },
  options: {
    title: {
      display: true,
      text: 'Impressions Per Day'
    }
  }
});
</script>

</body>
</html>