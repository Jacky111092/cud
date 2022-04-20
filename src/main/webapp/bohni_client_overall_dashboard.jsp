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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">

  <link rel="stylesheet" href="custom.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <!-- favicon -->
  <link rel="icon" href="dist/img/bohni/favicon.png" type="image/x-icon" />
    <!-- Select2 -->
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">   
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Lightbox -->
  <link rel="stylesheet" href="plugins/ekko-lightbox/ekko-lightbox.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script> -->

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>


</head>
<body style="background-color: #f8f9fb;">
<div class="container-scroller">
<div class="horizontal-menu">



<nav class="navbar navbar-expand-md navbar-display" style="position: fixed;">
<div class="container">
  <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
    <a class="navbar-brand brand-logo" href="#">
    <img src="webasset/img/whitelogo.png" alt="logo" />
    </a>
  </div>	


  <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
      <span class="fa fa-list text-white"></span>
  </button>

  <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
      <div class="navbar-nav" style="padding-left: 220px;">
          <a href="#" class="nav-item nav-link text-white active">Dashboard</a>
          <!-- <div class="nav-item dropdown">
              <a href="#" class="nav-link text-white dropdown-toggle" data-toggle="dropdown">Ad Setup</a>
              <div class="dropdown-menu">
                  <a href="/ad-setup" class="dropdown-item">New Ad Setup</a>
                  <a href="/boost-campaign" class="dropdown-item">Boost Campaign</a>
              </div>
          </div> -->
         <!-- <form action="viewTimeline.do" class="frmBx" method="post"  autocomplete="off">enctype="multipart/form-data" -->
		
              
          <a href="viewTimeline.do?client_id=${ClientDetails.getClient_id()}" class="nav-item text-white nav-link" ><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Timeline</a>
          <!-- <a href="/analytics" class="nav-item text-white nav-link">Analytics</a> -->
          <a href="viewCampaignReport.do?client_id=${ClientDetails.getClient_id()}" class="nav-item text-white nav-link"><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Reports</a>
          <a href="viewWallet.do?client_id=${ClientDetails.getClient_id()}" class="nav-item text-white nav-link"><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Wallet</a>
			<!-- </form> -->
      </div>
     
      <div class="navbar-nav">

          <a href="#" class="nav-item text-white nav-link"><i class="fa fa-bell-o"></i></a>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link text-white dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i></a>
            <div class="dropdown-menu" style="left: -120px;">
                <a href="viewClientProfile.do?client_id=${ClientDetails.getClient_id()}" class="dropdown-item"><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Profile</a>
                <a href="/billing" class="dropdown-item">Billing</a>
                <a href="logoutClient.do" class="dropdown-item">Logout</a>
            </div>
          </div>
      </div>
  </div>
  </div>
</nav>

</div>

<section class="top-section pt-5">

<div class="container">
<div class="row">
<div class="col-12 col-md-8"></div>
<div class="col-12 col-md-4">
<!-- @if($Campaigns['Response_Code'] == 0)
 -->
 <div class="form-group float-right">
	<select class="select-box"> <!-- onchange="location = this.options[this.selectedIndex].value;" -->
   <!--  @foreach($Campaigns['Campaign_Details'] as $camp)


        @if($camp['id'] == $campaign_id) -->
        
		
		<c:forEach items="${allCampaignList}" var="allCampaign">
		
            <option value="${allCampaign.getCampaign_name()}">${allCampaign.getCampaign_name()}</option>
          <!--   <option></option> -->
            
            <%-- <%-- </c:forEach> --%> --%>
        <!-- @else -->
            <!-- <option value="/dashboard/{{$camp['id']}}">{{$camp['campaign_name']}}</option> -->
        <!-- @endif -->
        </c:forEach>
<%-- 		</c:forEach>	
 --%>    <!-- @endforeach -->
</select>
</div>

<!-- @endif
 --></div>
</div>

<h4 class="section-header pb-2"><i class="fa fa-th" aria-hidden="true"></i> Campaign Overview</h4>
<c:forEach items="${allCampaignList}" var="allCampaign">
<c:forEach items="${allCampaignList}" var="allCampaignDetails">
<c:choose>
<c:when test="${allCampaign.getCampaignId() == allCampaignDetails.getCampaignId()}">
                  
                  
<div class="row">
<div class="col-12 col-md-4">
<div class="card budget-card bg-primary mb-4">
<div class="budget-body">
<center>

<div class="icon-area1 dash-icon-shape text-primary rounded-circle shadow new-icons mb-4">
<div class="fa fa-check">
</div>
</div>


<h1><i class="fa fa-inr" aria-hidden="true"></i> <c:out value="${allCampaignDetails.getAmount()}"/></h1>
<p class="budget-text">Budget</p>
  
</center>

<div class="budget-bottom">
<div class="row">
    <div class="col-8">
<%--     <%= "<h1> The sum is "+(Integer.parseInt(request.getParameter(${allCampaignDetails.getAmount()}))+Integer.parseInt(request.getParameter("${allCampaignDetails.getRemaining_amount()")))+"</h1>"%>
 --%>    
    <%-- <%! int num1 = ${allCampaignDetails.getAmount()}; %>
	<%! int num2 = ${allCampaignDetails.getRemaining_amount()}; %> 
	<%! int add(){ 
		return num1+num2; }
	%>
	<%! int sub() {
         return num1-num2;
	}
	%> --%>
	<c:set var="totallll" value="${0}"/> 
	<c:set var="totalllllll" value="${0}"/> 
        <h4><i class="fa fa-inr" aria-hidden="true"></i> 
        <c:forEach items="${allWallet}" var="allWalletd">
        <c:forEach items="${allWalletd}" var="walletDetails">
        <c:choose>
								<c:when test="${allCampaignDetails.getCampaignId() == walletDetails.getCampaign().getCampaignId()}">
		          					
		          					<p class="num"><c:set var="totallll" value="${totallll + walletDetails.getPaid_amount()}" /></p>
			          				
				          </c:when>
				          </c:choose>
       </c:forEach>
        </c:forEach>
        ${totallll}
        
        <%-- <c:out value="${allCampaignDetails.getAmount()-allCampaignDetails.getRemaining_amount()}"/> --%>
        
        </h4>
        <p>Paid</p>
    </div>
    <div class="col-4">
      
    <div class="icon-area dash-icon-shape text-primary rounded-circle shadow new-icons">
      <div class="fa fa-line-chart">
      </div>
    </div>
    </div>
  </div>
  <hr>
  <div class="row">
    <div class="col-8">
<%--     <%= "<h1> The sum is "+(Integer.parseInt(request.getParameter(${allCampaignDetails.getAmount()}))+Integer.parseInt(request.getParameter("${allCampaignDetails.getRemaining_amount()")))+"</h1>"%>
 --%>    
    <%-- <%! int num1 = ${allCampaignDetails.getAmount()}; %>
	<%! int num2 = ${allCampaignDetails.getRemaining_amount()}; %> 
	<%! int add(){ 
		return num1+num2; }
	%>
	<%! int sub() {
         return num1-num2;
	}
	%> --%>
        <h4><i class="fa fa-inr" aria-hidden="true"></i> <c:out value="${totallll-allCampaignDetails.getRemaining_amount()}"/></h4>
        <p>Consumed</p>
    </div>
    <div class="col-4">
      
    <div class="icon-area dash-icon-shape text-primary rounded-circle shadow new-icons">
      <div class="fa fa-line-chart">
      </div>
    </div>
    </div>
  </div>
  <hr>
  <div class="row">
    <div class="col-8">
        <h4>
        <c:set var="totallll" value="${0}"/> 
        <h4><i class="fa fa-inr" aria-hidden="true"></i> 
        <c:forEach items="${allWallet}" var="allWalletd">
        <c:forEach items="${allWalletd}" var="walletDetails">
        <c:choose>
								<c:when test="${allCampaignDetails.getCampaignId() == walletDetails.getCampaign().getCampaignId()}">
		          					
		          					<p class="num"><c:set var="totallll" value="${totallll + walletDetails.getPaid_amount()}" /></p>
			          	
				          </c:when>
				          </c:choose>
       </c:forEach>
        </c:forEach>
        ${totallll}
        <%-- <i class="fa fa-inr" aria-hidden="true"></i><c:out value="${allCampaignDetails.getRemaining_amount()}"/> </h4> --%>
        <p>Remaining</p>
    </div>
    <div class="col-4">
    <div class="icon-area dash-icon-shape text-primary rounded-circle shadow new-icons">
      <div class="fa fa-line-chart">
      </div>
    </div>


    </div>
  </div>

  
</div>
<%-- </c:forEach>
 --%></div>
</div>
</div>
<div class="col-12 col-md-8 pt-5">

<div class="row">
<div class="col-12 col-md-6">
  <div class="mb-5">
  <div class="count-cards card ">
    <div class="count-boxes">
      <div class="row">
        <div class="col-6">
          <div class="icon-sq-box" style="background-color: #800080;">
            <i class="fa fa-fire" aria-hidden="true"></i>
          </div>
        </div>
        <div class="col-6">
          <p class="num-heading">Kilometers</p>
          <c:set var="total" value="${0}"/> 
		          <c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails" >
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
		          					
		          					<p class="num"><c:set var="total" value="${total + campaignAndVehicleDetails.getTotal_kms_ran()}" /><%-- ${campaignAndVehicleDetails.getTotal_kms_ran()} --%></p>
			          		<%-- <p class="num">${TotalKmsRan} </p> --%>
          <%-- <p class="num">${TotalKmsRan} </p> --%>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				         
				          
				          </c:forEach>
				          <p class="num">${total}</p>
        </div>      
      </div>
      <hr class="m-2">
      <div class="row pl-4">
        <p><p class="text-success"><i class="fa fa-arrow-up" aria-hidden="true"></i> 3.48</p> &nbsp;&nbsp; Last Update</p>  
      </div>
    </div>
  </div>
  </div>
</div>

<div class="col-12 col-md-6">
   <div class="mb-5">
  <div class="card count-cards">
    <div class="count-boxes">
      <div class="row">
        <div class="col-6">
          <div class="icon-sq-box bg-warning">
            <i class="fa fa-car" aria-hidden="true"></i>
          </div>
        </div>
        <div class="col-6">
          <p class="num-heading">Vehicles</p>
          <c:set var="total" value="${0}"/> 
		          <c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails" varStatus="status">
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
		          					
		          					<p class="num"><c:set var="total" value="${status.count}" /><%-- ${campaignAndVehicleDetails.getTotal_kms_ran()} --%></p>
			          		<%-- <p class="num">${TotalKmsRan} </p> --%>
          <%-- <p class="num">${TotalKmsRan} </p> --%>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				         
				          
				          </c:forEach>
				          <p class="num">${total}</p>
          <%-- <p class="num">${CountOfVehicles}</p> --%>
        </div>      
      </div>
      <hr class="m-2">
      <div class="row pl-4">
        <p><p class="text-danger"><i class="fa fa-arrow-down" aria-hidden="true"></i> 3.48</p> &nbsp;&nbsp; Last Update</p>  
      </div>
    </div>
  </div>
  </div>
</div>
</div>

<div class="row">
<div class="col-12 col-md-6">
  <div class="mb-5">
  <div class="card count-cards">
    <div class="count-boxes">
      <div class="row">
        <div class="col-6">
          <div class="icon-sq-box" style="background-color: #ff794d;">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
          </div>
        </div>
        <div class="col-6">
          <p class="num-heading">Days</p>
          <p class="num">45</p>
        </div>      
      </div>
      <hr class="m-2">
      <div class="row pl-4">
        <p><p class="text-danger"><i class="fa fa-arrow-down" aria-hidden="true"></i> 1.2</p> &nbsp;&nbsp; Last Update</p>  
      </div>
    </div>
  </div>
  </div>
</div>

<div class="col-12 col-md-6">
   <div class="mb-4">
  <div class="card count-cards">
    <div class="count-boxes">
      <div class="row">
        <div class="col-6">
          <div class="icon-sq-box" style="background-color: #668cff;">
            <i class="fa fa-eye" aria-hidden="true"></i>
          </div>
        </div>
        <div class="col-6">
          <p class="num-heading">Impressions</p>
          <p class="num">49,655</p>
        </div>      
      </div>
      <hr class="m-2">
      <div class="row pl-4">
        <p><p class="text-success"><i class="fa fa-arrow-up" aria-hidden="true"></i> 12 </p> &nbsp;&nbsp; Last Upadate</p>  
      </div>
    </div>
  </div>
  </div>

</div>
</div>
</div>
</div>
</c:when>
</c:choose>
</c:forEach>
</c:forEach>
</div>

</section>



<section class="chart-section">
  <div class="container">
    <h4 class="section-header pb-2"><i class="fa fa-th" aria-hidden="true"></i> Map Overview</h4>
    <div class="card">
       <!--  <figure class="highcharts-figure p-4"> -->
         

<!-- <div class="row"> -->
          <!-- <div class="col-12">
            <div class="card"> -->
            <div class="card-header border-0">
             <!--  <h3 class="card-title">
                <i class="fas fa-map-marker-alt mr-1"></i>
                Map overview
              </h3> -->
              <div class="card-tools">
                <button type="button" class="btn  btn-sm daterange" title="Date range">
                  <i class="far fa-calendar-alt"></i>
                </button>
                <button type="button" class="btn  btn-sm" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body" style="padding:0px 20px;">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d241316.64332144568!2d72.74109713631994!3d19.082522324824836!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1628665376374!5m2!1sen!2sin" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <div class="card-footer bg-transparent">
            </div>
         <!--  </div>
          </div> -->
       <!--  </div> -->
       <!--  <div id="performance-chart" style="height: 400px;"></div> -->
       <!--  </figure> -->
    </div>    
  </div>
</section>
<%-- <section class="end-section">
  <div class="container">
    <div class="row">
      <div class="col-12 col-md-4">
        <div class="card left-card m-2 text-white">
        <div class="card-body">
          <center>
            <div class="icon-area dash-icon-shape text-primary rounded-circle shadow new-icons mb-4">
            <div class="fa fa-map-marker">
            </div>
            </div>
            <h2>2318</h2>
            <p>Total Area Covered</p>
          </center>
        </div>
        </div> 
      </div>
      <div class="col-12 col-md-4">
        <div class="card left-card m-2 text-white" style="background-color: #4e78ba;">
        <div class="card-body">
          <center>
            <div class="icon-area dash-icon-shape text-primary rounded-circle shadow new-icons mb-4">
            <div class="fa fa-money">
            </div>
            </div>
            <h2>2318</h2>
            <p>Paid Area Covered</p>
          </center>
        </div>
        </div> 
      </div>
      <div class="col-12 col-md-4">
        <div class="card right-card text-white m-2">
        <div class="card-body">
          <center>
            <div class="icon-area dash-icon-shape text-primary rounded-circle shadow new-icons mb-4">
            <div class="fa fa-truck">
            </div>
            </div>
            <h2>5192</h2>
            <p>Free Area Covered</p>
          </center>
        </div>
        </div> 
      </div>
    </div>
  </div>
</section> --%>
<section class="chart-section">
  <div class="container">
    <h4 class="section-header pb-2"><i class="fa fa-th" aria-hidden="true"></i> Summary Report</h4>
    <div class="card">
        <figure class="highcharts-figure p-4">
        <!--  <div class="card"> -->
              <!-- <div class="card-header">
                <h3 class="card-title" style="text-align:center;">Summary Report</h3>
              </div> -->
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Area</th>
                      <th>Kilometres</th>
                      <th>Impressions</th>
                      <th>Reach</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1.</td>
                      <td>Thane</td>
                      <td><span class="badge bg-danger">20</span></td>
                      <td><span class="badge bg-danger">10</span></td>
                      <td><span class="badge bg-warning">20</span></td>
                    </tr>
                    <tr>
                      <td>2.</td>
                      <td>Kalyan</td>
                      <td><span class="badge bg-warning">22</span></td>
                      <td><span class="badge bg-warning">20</span></td>
                      <td><span class="badge bg-warning">20</span></td>
                    </tr>
                    <tr>
                      <td>3.</td>
                      <td>Mulund</td>
                      <td><span class="badge bg-primary">33</span></td>
                      <td><span class="badge bg-primary">30</span></td>
                      <td><span class="badge bg-warning">20</span></td>
                    </tr>
                      
                    <tr>
                      <td>4.</td>
                      <td>Andheri</td>
                      <td><span class="badge bg-success">32</span></td>
                      <td><span class="badge bg-success">22</span></td>
                      <td><span class="badge bg-warning">20</span></td>
                    </tr>
                     <tr>
                      <td>5.</td>
                      <td>Bandra</td>
                      <td><span class="badge bg-success">27</span></td>
                      <td><span class="badge bg-success">25</span></td>
                      <td><span class="badge bg-warning">20</span></td>
                    </tr>
                  </tbody>
                </table>
              <!-- </div> -->
             
            </div>
        </figure>
    </div>    
  </div>
</section>

<section id="footer">
  <div class="container">
    <p>&copy; Copyright 2021. All Rights Reserved.</p>
  </div>
</section>



<!-- partial -->
</div>
<!-- main-panel ends -->
</div>
<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="new-dashboard/assets/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="new-dashboard/assets/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
<script src="new-dashboard/assets/vendors/chart.js/Chart.min.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.resize.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.categories.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.fillbetween.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.stack.js"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="new-dashboard/assets/js/off-canvas.js"></script>
<script src="new-dashboard/assets/js/hoverable-collapse.js"></script>
<script src="new-dashboard/assets/js/misc.js"></script>
<script src="new-dashboard/assets/js/settings.js"></script>
<script src="new-dashboard/assets/js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="new-dashboard/assets/js/dashboard.js"></script>
<!-- End custom js for this page -->
<script type="text/javascript">

  Highcharts.chart('performance-chart', {

  chart: {
    type: 'column'
  },

  title: {
    text: ''
  },

  xAxis: {
    categories: ['Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5', 'Week 6' , 'Week 7','Week 8','Week 9', 'Week 10']
  },

  yAxis: {
    allowDecimals: false,
    min: 0,
    title: {
      text: ''
    },
    visible: false,
  },

  tooltip: {
    formatter: function () {
      return '<b>' + this.x + '</b><br/>' +
        this.series.name + ': ' + this.y;
    }
  },

  plotOptions: {
    column: {
      pointPadding: 0.1,
      borderWidth: 0,
      borderRadius: 10
    }
  },

  series: [{
    name: 'Impressions',
    data: [500, 300, 400, 700, 200,500, 300, 400, 700, 200],
    stack: 'Impressions',
    color:'#00134d'
  }, {
    name: 'Kilometers',
    data: [300, 400, 400, 200, 500,300, 400, 400, 200, 500],
    stack: 'Kilometers',
    color: '#668cff'
  },
  {
    name: 'Reach',
    data: [200, 300, 400, 700, 800,100, 400, 600, 700, 300],
    stack: 'Reach',
    color: '#000080'
  }],
  exporting: { enabled: false },
  credits: {enabled: false}
});








</script>


</body>
</html>