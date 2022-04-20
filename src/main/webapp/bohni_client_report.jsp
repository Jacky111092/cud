<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Bohni - Advertising is about to Change</title>

<link rel="stylesheet" href="new-dashboard/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="new-dashboard/assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="new-dashboard/assets/vendors/css/vendor.bundle.base.css">

<link rel="stylesheet" href="new-dashboard/assets/vendors/jquery-bar-rating/css-stars.css" />
<!-- <link rel="stylesheet" href="new-dashboard/assets/vendors/font-awesome/css/font-awesome.min.css" /> -->

<link rel="stylesheet" href="new-dashboard/assets/css/demo_2/style.css" />

<link rel="shortcut icon" href="webasset/img/favicon.png" />


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script> -->

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>


</head>
<body style="background-color: #f8f9fb;">




<jsp:include page='layout/bohni_dash_header.jsp'/>
<!-- @section('content')
 -->

<div class="container breadcrumb-container">
<nav aria-label="breadcrumb">
<ol class="breadcrumb m-0">
<li class="breadcrumb-item"><a href="/dashboard"><i class="fa fa-home"></i> Dashboard</a></li>
<li class="breadcrumb-item active" aria-current="page">Reports</li>
</ol>
</nav>
</div>

<section class="campaign-report">
<div class="container">
<div class="card">
<div class="card-body">
<div class="row">
<div class="col-11">
<h4 class="card-title">Campaign Overall Details</h4>
</div>
<div class="col-1">
<!-- <button class="btn btn-outline-secondary btn-sm"><i class="fa fa-download"></i></button> -->
</div>
</div>

<br>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
			<th><b>Id</b> </th>
			<th><b>Campaign Name</b></th>
			<th><b>Campaign Zone</b></th>
			<th><b>Campaign Status</b></th>
			<th><b>Campaign Start Date</b></th>
			<!-- <th><b>Campaign End Date</b></th> -->
			<th><b>Created at</b></th>
			<!-- <th><b>Campaign Images</b></th> -->
			<th></th>
			</tr>
		</thead>
		<tbody>
		 <c:forEach items="${allCampaignList}" var="allCampaign">
			
			<tr>
				<td> <c:out value="${allCampaign.getCampaignId()}"/></td>
				<td><c:out value="${allCampaign.getCampaign_name()}"/></td>
				<td><c:out value="${allCampaign.getLocation()}"/></td>
				<td>
					
					<span class="badge badge-pill badge-success"><c:out value="${allCampaign.getStatus()}"/></span>
					
				</td>
				<td><c:out value="${allCampaign.getStart_date()}"/></td>
				<!-- <td>{{$campaign['end_date']}}</td> -->
				<td><c:out value="${allCampaign.getPayment_created_date()}"/></td>
				<!-- <td>
					<img style="border-radius: 50%;width: 40px; height: 40px;" src="{{URL::asset('img/vehicles/11.jpg')}}">
					<img style="border-radius: 50%;width: 40px; height: 40px;" src="{{URL::asset('img/vehicles/11.jpg')}}">
				</td> -->
				<td>
					<a href="/campaign-pdf/{{$campaign['id']}}" class="btn btn-sm download-report"><i class="fa fa-download"></i></a>
					<!-- <button class="btn btn-sm download-report"><i class="fa fa-download"></i></button> -->
				</td>
			</tr>
			
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
</div>
</div>
</section>

<section class="gallery-section">
	<div class="container">
	<div class="card">
	<div class="card-body">
	<form action="downloadWorkProofs.do" class="frmBx" method="post">
	<c:forEach items="${allCampaignList}" var="allCampaign">
	<div class="row">
		<div class="col-12 col-md-8">
		<h4 class="card-title">Campaign Images</h4>
		</div>
		<div class="col-12 col-md-4">
         <!--  @if($Campaigns['Response_Code'] == 0) -->
          <div class="form-group float-right">
          <select class="select-box">
          
          <option value="${allCampaign.getCampaign_name()}">${allCampaign.getCampaign_name()}</option>
          
              <!-- @foreach($Campaigns['Campaign_Details'] as $camp)
                  @if($camp['id'] == $campaign_id)
                      <option value="/reports/{{$camp['id']}}" selected>{{$camp['campaign_name']}}</option>
                  @else
                      <option value="/reports/{{$camp['id']}}">{{$camp['campaign_name']}}</option>
                  @endif
              @endforeach -->
          </select>
          </div>
         <!--  @endif -->
      </div>
	</div>
	

		<div class="w3-bar w3-black m-4">
			<center>
			
			<input type="hidden" id="campaignId" class="form-control" name="campaignId" placeholder="Campaign Id" value="<c:out value="${allCampaign.getCampaignId()}"/>">
			
			  <button class="work-proof-btn active" name = "Proof of Work 1" value="Proof of Work 1">Work Proof 1</button>
			  <button class="work-proof-btn"  name = "Proof of Work 2" value="Proof of Work 1">Work Proof 2</button>
			  <button class="work-proof-btn"  name = "Proof of Work 1" value="Proof of Work 1">Work Proof 3</button>
			  <button class="work-proof-btn"  name = "Proof of Work 1" value="Proof of Work 1">Work Proof 4</button>
			</center>
		</div>

		<div id="tab-one" class="city">
		  
		  	<!-- <div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
						<th><b>Vehicle Number</b></th>
						<th><b>Work Proof (Left)</b></th>
						<th><b>Work Proof (Right)</b></th>
						</tr>
					</thead>
					<tbody>

					@foreach($work_proofs['work_proof_one'] as $proof_one)
						<tr>
							<td>{{$proof_one['vehicle_number']}}</td>
							<td>
								<img style="border-radius: 0;width: 100%; height: 100px;" src="{{$proof_one['image_left']}}">
							</td>
							<td>
								<img style="border-radius: 0;width: 100%; height: 100px;" src="{{$proof_one['image_right']}}">
							</td>
						</tr>
					@endforeach

					</tbody>
				</table>
			</div>


		</div>

		<div id="tab-two" class="city" style="display:none">
		  <div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
						<th><b>Vehicle Number</b></th>
						<th><b>Work Proof (Left)</b></th>
						<th><b>Work Proof (Right)</b></th>
						</tr>
					</thead>
					<tbody>

					@foreach($work_proofs['work_proof_two'] as $proof_two)
						<tr>
							<td>{{$proof_two['vehicle_number']}}</td>
							<td>
								<img style="border-radius: 0;width: 100%; height: 100px;" src="{{$proof_two['image_left']}}">
							</td>
							<td>
								<img style="border-radius: 0;width: 100%; height: 100px;" src="{{$proof_two['image_right']}}">
							</td>
						</tr>
					@endforeach

					</tbody>
				</table>
			</div>

		</div>

		<div id="tab-three" class="city" style="display:none">
		  <div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
						<th><b>Vehicle Number</b></th>
						<th><b>Work Proof (Left)</b></th>
						<th><b>Work Proof (Right)</b></th>
						</tr>
					</thead>
					<tbody>

					@foreach($work_proofs['work_proof_three'] as $proof_three)
						<tr>
							<td>{{$proof_three['vehicle_number']}}</td>
							<td>
								<img style="border-radius: 0;width: 100%; height: 100px;" src="{{$proof_three['image_left']}}">
							</td>
							<td>
								<img style="border-radius: 0;width: 100%; height: 100px;" src="{{$proof_three['image_right']}}">
							</td>
						</tr>
					@endforeach

					</tbody>
				</table>
			</div>
		</div>

		<div id="tab-four" class="city" style="display:none">
		  <div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
						<th><b>Vehicle Number</b></th>
						<th><b>Work Proof (Left)</b></th>
						<th><b>Work Proof (Right)</b></th>
						</tr>
					</thead>
					<tbody>

					@foreach($work_proofs['work_proof_four'] as $proof_four)
						<tr>
							<td>{{$proof_four['vehicle_number']}}</td>
							<td>
								<img style="border-radius: 0;width: 100%; height: 100px;" src="{{$proof_four['image_left']}}">
							</td>
							<td>
								<img style="border-radius: 0;width: 100%; height: 100px;" src="{{$proof_four['image_right']}}">
							</td>
						</tr>
					@endforeach

					</tbody>
				</table>
			</div>
		</div>
 -->

	
	</div>
	</c:forEach>
	</form>
	</div>
	</div>
	</div>
</section>





<script type="text/javascript">

$('#myCarousel').carousel({
interval: false
});
$('#carousel-thumbs').carousel({
interval: false
});

$('[id^=carousel-selector-]').click(function() {
var id_selector = $(this).attr('id');
var id = parseInt( id_selector.substr(id_selector.lastIndexOf('-') + 1) );
$('#myCarousel').carousel(id);
});
// Only display 3 items in nav on mobile.
if ($(window).width() < 575) {
$('#carousel-thumbs .row div:nth-child(4)').each(function() {
var rowBoundary = $(this);
$('<div class="row mx-0">').insertAfter(rowBoundary.parent()).append(rowBoundary.nextAll().addBack());
});
$('#carousel-thumbs .carousel-item .row:nth-child(even)').each(function() {
var boundary = $(this);
$('<div class="carousel-item">').insertAfter(boundary.parent()).append(boundary.nextAll().addBack());
});
}
// Hide slide arrows if too few items.
if ($('#carousel-thumbs .carousel-item').length < 2) {
$('#carousel-thumbs [class^=carousel-control-]').remove();
$('.machine-carousel-container #carousel-thumbs').css('padding','0 5px');
}
// when the carousel slides, auto update
$('#myCarousel').on('slide.bs.carousel', function(e) {
var id = parseInt( $(e.relatedTarget).attr('data-slide-number') );
$('[id^=carousel-selector-]').removeClass('selected');
$('[id=carousel-selector-'+id+']').addClass('selected');
});
// when user swipes, go next or previous
$('#myCarousel').swipe({
fallbackToMouseEvents: true,
swipeLeft: function(e) {
$('#myCarousel').carousel('next');
},
swipeRight: function(e) {
$('#myCarousel').carousel('prev');
},
allowPageScroll: 'vertical',
preventDefaultEvents: false,
threshold: 75
});

$('#myCarousel .carousel-item img').on('click', function(e) {
var src = $(e.target).attr('data-remote');
if (src) $(this).ekkoLightbox();
});


function openTab(cityName) {
  var i;
  var x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";

  }
  document.getElementById(cityName).style.display = "block";
}






</script>


</body>
</html>


<!-- 
@endsection -->