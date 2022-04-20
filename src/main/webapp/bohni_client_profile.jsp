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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="new-dashboard/assets/css/demo_2/style.css" />

<link rel="shortcut icon" href="webasset/img/favicon.png" />
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
         <a href="viewClientDashboard.do?client_id=${clientt.getClient_id()}" class="nav-item nav-link text-white active"><input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client" value="${ClientDetails.getClient_id()}">Dashboard</a>
         
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


<div class="container breadcrumb-container">
<nav aria-label="breadcrumb">
<ol class="breadcrumb m-0">
  <li class="breadcrumb-item"><a href="/dashboard"><i class="fa fa-home"></i> Dashboard</a></li>
  <li class="breadcrumb-item active" aria-current="page">Profile</li>
  </ol>
</nav>
</div>



<section class="profile-section">
  <div class="container">
  <div class="card profile-card">
    <div class="row">
      <div class="col-md-10"></div>
      <div class="col-md-2">
        <button type="button" class="btn profile-btn mb-4" data-toggle="modal" data-target="#profile-modal">Edit Profile</button>
      </div>
    </div>


    <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">

      <form action="updateClientViaClient.do" class="frmBx" method="post" autocomplete="off">
      <!-- <input type="hidden" name="_token" value="{{ csrf_token() }}"> -->
		<input type="hidden" id="client_id" class="form-control" name="client_id" placeholder="client_id" value="${ClientDetails.getClient_id()}">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Edit Profile</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
          	<div class="form-group">
              <label for="username">Name</label>
              <input type="text" class="form-control" id="username" name="username" placeholder="username" value="${ClientDetails.getUsername()}" readonly="true">
            </div>
            <div class="form-group">
              <label for="company_name">Company Name</label>
              <input type="text" class="form-control" id="company_name" name="company_name" placeholder="company_name" value="${ClientDetails.getCompany_name()}">
            </div>
           <!--  <div class="form-group">
              <label for="company_address">Company Address</label>
              <input type="text" class="form-control" id="company_address" name="company_address" placeholder="Company Address">
            </div> -->
            <div class="form-group">
              <label for="phone_no">Phone Number</label>
              <input type="text" class="form-control" id="phone_no" name="phone_no" placeholder="phone_no" value="${ClientDetails.getPhone_no()}">
            </div>
            <div class="form-group">
              <label for="work_emailid">Work Email address</label>
              <input type="email" class="form-control" id="work_emailid" name="work_emailid" placeholder="work_emailid" value="${ClientDetails.getWork_emailid()}">
            </div>
           <!--  <div class="form-group">
              <label for="gst_number">GST Number</label>
              <input type="text" class="form-control" id="gst_number" name="gst_number" placeholder="GST Number">
            </div> -->
           <!--  <div class="form-group">
              <label for="contact_person">Contact Person</label>
              <input type="text" class="form-control" id="contact_person" name="contact_person" placeholder="Conatct Person" value="{{$Client['client_Detail']['contact_person']}}">
            </div> -->
            <div class="form-group">
              <label for="personal_emailid">Personal Email address</label>
              <input type="email" class="form-control" id="personal_emailid" name="personal_emailid" placeholder="personal_emailid" value="${ClientDetails.getPersonal_emailid()}">
            </div>
            <div class="form-group">
              <label for="designation">Designation</label>
              <input type="text" class="form-control" id="designation" name="designation" placeholder="designation" value="${ClientDetails.getDesignation()}"> 
            </div>
            <div class="form-group">
              <label for="website">Website</label>
              <input type="text" class="form-control" id="website" name="website" placeholder="website" value="${ClientDetails.getWebsite()}">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn profile-btn">Save changes</button>
          </div>
        </div>

      </form>
      </div>
    </div>

    <div class="row">
    <div class="col-12 col-md-6 left-profile">
      <!-- <div class="row">
        <div class="col-4">
          <img src="new-dash/assets/img/team/team-1.jpg">
        </div>
        <div class="col-8">
          <h2>James March</h2>
          <p>Gender : Male</p>
          <p>Date of Birth : 28th July 1988</p>
          <button class="btn profile-btn">Edit Profile</button>
        </div>
      </div> -->

        <div class="pb-2">
          <div class="row">
            <div class="col-5"><h6>Company Name :</h6></div>
            <div class="col-7">${ClientDetails.getCompany_name()}</div>
          </div>
        </div>
         <!--  <div class="pb-2">
          <div class="row">
            <div class="col-5"><h6>Company Address :</h6></div>
            <div class="col-7">Vasai Virar , Mumbai,Maharashtra , Pin : 410010</div>
          </div>
        </div> -->
        <div class="pb-2">
          <div class="row">
            <div class="col-5"><h6>Phone :</h6></div>
            <div class="col-7">${ClientDetails.getPhone_no()}</div>
          </div>
        </div>
        <div class="pb-2" >
          <div class="row">
            <div class="col-5"><h6>Email Id (Work):</h6></div>
            <div class="col-7">${ClientDetails.getWork_emailid()}</div>
          </div>
        </div>
         <div class="pb-2" >
          <div class="row">
            <div class="col-5"><h6>Website:</h6></div>
            <div class="col-7">${ClientDetails.getWebsite()}</div>
          </div>
        </div>
       <!--  <div class="pb-2">
          <div class="row">
            <div class="col-5"><h6>GST Number :</h6></div>
            <div class="col-7">9AAACC1206D2ZB2</div>
          </div>
        </div> -->
      </div>

      <div class="col-12 col-md-6 right-profile">
        <%-- <div class="pb-2" >
          <div class="row">
            <div class="col-5"><h6>Contact Person:</h6></div>
            <div class="col-7">${ClientDetails.getWebsite()}</div>
          </div>
        </div> --%>
        <div class="pb-2" >
          <div class="row">
            <div class="col-5"><h6>Email Id (Personal):</h6></div>
            <div class="col-7">${ClientDetails.getPersonal_emailid()}</div>
          </div>
        </div>
        <div class="pb-2" >
          <div class="row">
            <div class="col-5"><h6>Designation:</h6></div>
            <div class="col-7">${ClientDetails.getDesignation()}</div>
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








</div>
</div>
</div>
<script src="new-dashboard/assets/vendors/js/vendor.bundle.base.js"></script>
<script src="new-dashboard/assets/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
<script src="new-dashboard/assets/vendors/chart.js/Chart.min.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.resize.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.categories.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.fillbetween.js"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.stack.js"></script>
<script src="new-dashboard/assets/js/off-canvas.js"></script>
<script src="new-dashboard/assets/js/hoverable-collapse.js"></script>
<script src="new-dashboard/assets/js/misc.js"></script>
<script src="new-dashboard/assets/js/settings.js"></script>
<script src="new-dashboard/assets/js/todolist.js"></script>
<script src="new-dashboard/assets/js/dashboard.js"></script>
</body>
</html>