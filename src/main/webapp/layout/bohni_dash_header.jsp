<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


<link rel="stylesheet" href="new-dashboard/assets/css/demo_2/style.css" />

<link rel="shortcut icon" href="webasset/img/favicon.png" />

<link rel="stylesheet" type="text/css" href="new-dashboard/assets/user/css/user.css">
<link rel="stylesheet" type="text/css" href="new-dashboard/assets/user/css/timeline.css">

<link rel="stylesheet" type="text/css" href="new-dashboard/assets/user/OwlCarousel/owl.css">

<link rel="stylesheet" type="text/css" href="new-dashboard/assets/user/css/dashboard.css">

<link rel="stylesheet" type="text/css" href="new-dashboard/assets/user/css/adSetup.css">



<!-- chart -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<!-- chart -->


</head>
<body style="background-color: #f8f9fb;">
<div class="container-scroller">
<div class="horizontal-menu">


<nav class="navbar navbar-expand-md navbar-display" style="position: fixed;">
<div class="container">
  <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
    <a class="navbar-brand brand-logo" href="/dashboard">
    <img src="webasset/img/whitelogo.png" alt="logo" />
    </a>
  </div>


  <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
      <i class="fa fa-list text-white"></i>
      <!-- <span class="navbar-toggler-icon"></span> -->
  </button>

  <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">


      <div class="navbar-nav">
          <a href="viewClientDashboard.do?client_id=${clientt.getClient_id()}" class="nav-item nav-link text-white active"><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Dashboard</a>
         <!--  <div class="nav-item dropdown">
              <a href="#" class="nav-link text-white dropdown-toggle" data-toggle="dropdown">Ad Setup</a>
              <div class="dropdown-menu">
                  <a href="/ad-setup" class="dropdown-item">New Ad Setup</a>
                  <a href="/boost-campaign" class="dropdown-item">Boost Campaign</a>
              </div>
          </div> -->
         <a href="viewTimeline.do?client_id=${clientt.getClient_id()}" class="nav-item text-white nav-link" ><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Timeline</a>
          <!-- <a href="/analytics" class="nav-item text-white nav-link">Analytics</a> -->
          <a href="viewCampaignReport.do?client_id=${clientt.getClient_id()}" class="nav-item text-white nav-link"><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Reports</a>
          <a href="viewWallet.do?client_id=${clientt.getClient_id()}" class="nav-item text-white nav-link"><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Wallet</a>
			

      </div>
     
      <div class="navbar-nav">
          <a href="#" class="nav-item text-white nav-link"><i class="fa fa-bell-o"></i></a>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link text-white dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i></a>
            <div class="dropdown-menu" style="left: -120px;">
                <a href="viewClientProfile.do?client_id=${clientt.getClient_id()}" class="dropdown-item"><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Profile</a>
                <a href="/billing" class="dropdown-item">Billing</a>
                <a href="logoutClient.do" class="dropdown-item">Logout</a>
            </div>
          </div>
      </div>
  </div>
  </div>
</nav>


<!-- <nav class="navbar top-navbar col-lg-12 col-12 p-0">
<div class="container">
<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
<a class="navbar-brand brand-logo" href="/dashboard">

<img src="webasset/img/logo2.png" alt="logo" />
</a>
<a class="navbar-brand brand-logo-mini" href="/dashboard"><img src="webasset/img/favicon.png" alt="logo" /></a>
</div>
<div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">

<ul class="navbar-nav navbar-nav-right">
<li class="nav-item nav-profile dropdown">
        <a class="nav-link" id="notiAlert" href="#" data-toggle="dropdown" aria-expanded="false">
            <i class="fa fa-bell-o"></i>
            </a>
            <div class="dropdown-menu navbar-dropdown notification-bar" aria-labelledby="notiAlert">
            <h6 class="dropdown-item-text font-15 m-0 py-3 border-bottom d-flex justify-content-between align-items-center">
            Notifications <span class="badge notification-badge rounded-pill">2</span>
            </h6> 
            <div class="notification-menu p-2" data-simplebar>
                <a href="#" class="notification-part py-4">
                    <div class="row m-2 p-2 noti-inside">
                    <div class="col-1">
                        <div class="noti-icon">
                            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="col-9">
                        <h6 class="my-0 fw-normal text-dark">Payment Successfull</h6>
                        <small class="text-muted mb-0">Your payment Credited successfully.</small>
                    </div>
                    <div class="col-2">
                        <small class="float-end text-muted">5 min ago</small>
                    </div>
                    </div>
                </a>

                <a href="#" class="notification-part py-4">
                    <div class="row m-2 p-2 noti-inside">
                    <div class="col-1">
                        <div class="noti-icon">
                            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="col-9">
                        <h6 class="my-0 fw-normal text-dark">Campaign Update</h6>
                        <small class="text-muted mb-0">Your campaign starts from today.</small>
                    </div>
                    <div class="col-2">
                        <small class="float-end text-muted">2 hrs ago</small>
                    </div>
                    </div>
                </a>
                <hr>
                
                <center><a href="#">View All</a></center>
              

            </div>
                
        </div>
    </li>

<li class="nav-item nav-profile dropdown">
  <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
    <div class="nav-profile-img">
      <img src="new-dash/assets/img/team/team-1.jpg" alt="image" />
    </div>
    <div class="nav-profile-text">
      <p class="text-black font-weight-semibold m-0">James March <i class="mdi mdi-chevron-down"></i></p>
    </div>
  </a>
  <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
    <a class="dropdown-item" href="/profile">
      <i class="fa fa-user mr-2 text-secondary"></i> Profile </a>
    <a class="dropdown-item" href="/billing">
      <i class="fa fa-money mr-2 text-secondary"></i> Billing </a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">
      <i class="mdi mdi-logout mr-2 text-secondary"></i> Logout </a>
  </div>
</li>
</ul>
<button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="horizontal-menu-toggle">
<span class="mdi mdi-menu"></span>
</button>
</div>
</div>
</nav>
<nav class="bottom-navbar">
<div class="container bottom-nav-container" >
<ul class="nav page-navigation">
<li class="nav-item">
<a class="nav-link" href="/dashboard">
  <i class="fa fa-tachometer menu-icon" aria-hidden="true"></i>
  <span class="menu-title">Dashboard</span>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
  <i class="fa fa-cog menu-icon" aria-hidden="true"></i>
  <span class="menu-title">Ad Setup</span>
  <i class="menu-arrow"></i>
</a>
<div class="submenu">
  <ul class="submenu-item">
    <li class="nav-item">
      <a class="nav-link" href="/ad-setup">New Ad Setup</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/boost-campaign">Boost Campaign</a>
    </li>
  </ul>
</div>
</li>
<li class="nav-item">
<a class="nav-link" href="/timeline">
  <i class="fa fa-tasks menu-icon"></i>
  <span class="menu-title">Timeline</span>
</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/analytics">
  <i class="mdi mdi-chart-bar menu-icon"></i>
  <span class="menu-title">Analytics</span>
</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/reports">
  <i class="fa fa-file-pdf-o menu-icon"></i>
  <span class="menu-title">Reports</span>
</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/wallet">
  <i class="fa fa-money menu-icon"></i>
  <span class="menu-title">Wallet</span>
</a>
</li>

</ul>
</div>
</nav> -->
</div>


<!-- @yield('content')
 -->


<section id="footer">
  <div class="container">
    <p>&copy; Copyright 2021. All Rights Reserved.</p>
  </div>
</section>

<!-- content-wrapper ends -->
<!-- partial:partials/_footer.html -->
<!-- <footer class="footer">
<div class="container">
<div class="d-sm-flex justify-content-center justify-content-sm-between">
<span class="text-muted d-block text-center text-sm-left d-sm-inline-block">© Copyright 2021 All Right Reserved</span>
<span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"><a href="#" target="_blank"></a></span>
</div>
</div>
</footer> -->
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
<!-- ///// -->


<script type="text/javascript">
var rangeSlider = function(){
var slider = $('.range-slider'),
range = $('.range-slider__range'),
value = $('.range-slider__value');

slider.each(function(){

value.each(function(){
var value = $(this).prev().attr('value');
$(this).html(value);
});

range.on('input', function(){
$(this).next(value).html(this.value);
});
});
};

rangeSlider();
</script>



</body>
</html>