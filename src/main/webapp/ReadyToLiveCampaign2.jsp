 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bohni - Advertising is about to change | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
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
  <link rel="icon" href="{{ URL::asset('dist/img/bohni/favicon.png') }}" type="image/x-icon" />
    <!-- Select2 -->
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">   
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Lightbox -->
  <link rel="stylesheet" href="plugins/ekko-lightbox/ekko-lightbox.css">
  <link rel="stylesheet" href="plugins/ekko-lightbox/ekko-lightbox.css">
<link rel="stylesheet" href="plugins/ekko-lightbox/ekko-lightbox.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.jquery.min.js"></script>
<link href="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.min.css" rel="stylesheet"/>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
 <!--  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/Bohni/logo2.png" alt="Bohni">
  </div> -->

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <!-- <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li> -->
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
    <jsp:include page='layout/admin_header.jsp'/>


  <!-- Content Wrapper. Contains page content -->
   <div class="content-wrapper">
   <section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1></h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="/dashboard">Dashboard</a></li>
          <li class="breadcrumb-item"><a href="#">Client</a></li>
          <li class="breadcrumb-item active">Add Client</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
<div class="container-fluid">

  <div class="row">
    <div class="col-md-12">
      <div class="card card-primary">
        <div class="card-header">
          <h3 class="card-title">Add Campaign</h3>
        </div>
        
          <div class="card-body">
          <div class="row">
            <div class="col-12 col-md-4">
              <div class="form-group">
              <input type="hidden" id="campaignId" class="form-control" name="campaignId" placeholder="Campaign Id" value="${campaignDetails.getCampaignId()}">
              <input type="hidden" id="status" class="form-control" name="status" placeholder="status" value="${campaignDetails.getStatus()}">
              
              <%-- <c:forEach items="${allClientList}" var="allClients"> --%>
                  <label for="company_name">Client</label>
                 <%-- <input class="form-control"  name = "company_name" id ="company_name" value="${allClientList}"> --%>
                  <div class="select2-purple">
                  <input type="text" class="form-control" name="company_name" id="company_name" value="${campaignDetails.getCompany_name()}" disabled>
                   <%-- <select class="form-control select2" name="company_name" style="width: 100%;">
		                    <option selected="selected" disabled="disabled">Select role</option>
                  			<c:forEach items="${allClientList}" var="allClients"> 
                  			<option>${allClients.getCompany_name()}</option>
                  			</c:forEach>
                  			
                  </select> --%>
                  </div>
                  
                  
                  <%--
                  Working  <div class="select2-purple">
                   <select class="form-control select2" name="roletype" style="width: 100%;">
		                    <option selected="selected" disabled="disabled">Select role</option>
                  			<option>${allClientList}</option>
                  			
                  </select>
                  </div> --%>
                  
                <%-- <form:select path="company_name">
                <form:options items="${allClientList}" itemValue="company_name" itemLabel="company_name" /> 
                </form:select> --%>
                <%-- items="<c:out value="${allClients.getCompany_name()}"/>" />   --%>
                   <!-- <div class="select2-purple">
                      <select class="form-control select2" name="roletype" style="width: 100%;">
		                    <option selected="selected" disabled="disabled">Select role</option>
                        @foreach($admin_roles['roles'] as $role)
		                    <option value="{{$role['id']}}">{{$role['role']}}</option>
                        @endforeach
                         <option>Client</option>
                      <option>Vehicle/Vehicle Partners</option>
                      <option>Drivers</option>
                      <option>Wallet</option>
                      <option>Zones/Areas</option>
		                  </select>
			
                      </select>
                      </div>    --> 
                        <%-- </c:forEach>      --%>         
 </div>
            </div>
            <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="brand_name">Brand Name</label>
                  <input type="text" class="form-control" name="brand_name" id="brand_name" value="${campaignDetails.getBrand_name()}" disabled>
              </div>
            </div>
            <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="campaign_name">Campaign Name</label>
                  <input type="text" id="campaign_name" class="form-control" name="campaign_name" value="${campaignDetails.getCampaign_name()}" disabled>
              </div>
            </div>
            <%-- <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="no_of_kilometres">No. of kilometres</label>
                  <input type="number" id="no_of_kilometres" class="form-control" name="no_of_kilometres" value="${campaignDetails.getNo_of_kilometres()}" disabled>
              </div>
            </div>
            <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="rate">Rate/Kilometre</label>
                  <input type="number" id="rate" class="form-control" name="rate" value="${campaignDetails.getRate()}" disabled>
              </div>
            </div>
            <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="amount">Amount</label>
                  <input type="number" class="form-control" name="amount" id="amount" value="${campaignDetails.getAmount()}" disabled>
                </div>
            </div> --%>
            <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="no_of_vehicles">No of Vehicles Needed</label>
                  <input type="number" class="form-control" name="no_of_vehicles" id="no_of_vehicles" value="${campaignDetails.getNo_of_vehicles()}" disabled>
                </div>
            </div>
            <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="location">Location</label>
                  <input type="text" class="form-control" name="location" id="location" value="${campaignDetails.getLocation()}" disabled>
                </div>
            </div>
             <div class="col-12 col-md-4">
              <!-- <div class="form-group">
                  <label for="start_date">Start Date</label>
                  <input type="date" class="form-control" name="start_date" id="start_date">
                </div>
            </div>
            
            <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="end_date">End Date</label>
                  
                  <input type="date" class="form-control" name="end_date" id="end_date">
                </div>
            </div>  -->
            
           <!--  <div class="col-12 col-md-4">
              <div class="form-group">
                  <label for="status">Status</label>
                  <input type="text" class="form-control" name="status" id="status">
                </div>
            </div> -->
          </div>
          </div>
          <!-- <div class="card-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
          </div> -->
      </div>
    </div>
    <script>
           $(document).ready(function() {
        	    $('#example1').DataTable( {
        	        responsive: true,
        	        "pageLength": 10
        	    } );
        	} );
           </script>
    <div class="container-fluid">
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">List of Available Vehicles</h3>
      </div>
      <div class="card-body">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
          <tr>
            <th>Id</th>
            <th>Vehicle Partner</th>
            <th>Vehicle Number</th>
            <th>Contact Details</th>
            <th>Running locations</th>
            <th>Actions</th>
            
          </tr>
          </thead>
          <tbody>
            <%-- 
              <tr>
                  <td>{{$i}}</td>

                  <td>{{$zone['zone_name']}}</td>
                  <td>
                    <a href="#" class="view-btn pr-4" data-toggle="modal" data-target="#exampleModal{{$i}}"><i class="fa fa-edit"></i></a>
                  </td>
                  <td>
                    <button class="btn view-btn" onclick="DeleteZone(<?php echo $zone['id']; ?>)"><i class="fa fa-trash"></i></button>
                  </td>
              </tr> --%>
				<c:forEach items="${allVehicleList}" var="allVehicle">
				<c:choose>
				 <c:when test="${allVehicle.getCampaign().getCampaignId()==campaignDetails.getCampaignId() ||  empty allVehicle.getCampaign() }">
				<tr>
				<form action="addVehiclesToCampaign.do" class="frmBx" method="post">
                  <!-- <td>{{$i}}</td> -->
					<input type="hidden" id="campaignId" class="form-control" name="campaignId" placeholder="Campaign Id" value="${campaignDetails.getCampaignId()}">
              		<%-- <input type="hidden" id="vehicle_partner" class="form-control" name="vehicle_partner" placeholder="vehicle_partner" value="${allVehicle.getVehicle_partner()}">
                   --%><td><input type="hidden" id="vehicleId" class="form-control" name="vehicleId" placeholder="vehicleId" value="<c:out value="${allVehicle.getVehicleId()}"/>">
 	                <c:out value="${allVehicle.getVehicleId()}"/> </td>
 	                <td>
 	                <c:out value="${allVehicle.getOwner_name()}"/>
 	                </td>
                  <td>
                  <c:forEach items="${allVehiclePartner}" var="allVehiclePartner">
                   <%-- <c:out value="${allcampaignAndVehicle.getCampaign().getCampaignId()}"/>
                   <c:out value="${allVehicle.getCampaign().getCampaignId()}"/> --%>
                  <c:choose>
   				 <c:when test="${allVehicle.getVehicle_partner().getVehicle_partner_id() == allVehiclePartner.getVehicle_partner_id()}">
                  <c:out value="${allVehiclePartner.getCompany_contact_person_contact()}"/>
                  </c:when>
                  </c:choose>
				</c:forEach>
                  </td>
                  <td>
                  <c:out value="${allVehicle.getVehicle_number()}"/>
                  </td>
                  <td>
                  <p>
                  <c:out value="${allVehicle.getStart_location()}"/>----------
                   <c:out value="${allVehicle.getDelivery_location()}"/>
                   </p>
                  </td>
                  <td>
  	                    	 <c:choose>
							    <c:when test="${ empty allVehicle.getCampaign()}">
							        <button type="submit" class="btn btn-primary" name =add value="add">Add</button>
							        &nbsp;&nbsp;&nbsp;&nbsp;
							    </c:when>
							    <c:when test="${ allVehicle.getCampaign().getCampaignId()==campaignDetails.getCampaignId()}">
							   
							    
							       <button type="submit" class="btn btn-primary" name ="delete" value="delete">Delete</button>
							    </c:when>
							    
							</c:choose>
 	
  	                    	
  	                    </td>
  	                    <!-- <td>
  	                    <button type="submit" class="btn btn-primary" name = "delete" value="delete">Delete</button>
  	                    </td> -->
  	                  </form>
              </tr>
              </c:when>
              </c:choose>
              </c:forEach>
              </tbody>
              <!-- <div class="modal fade" id="exampleModal{{$i}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">

                  <form action="/edit-zone" class="frmBx" method="post" enctype="multipart/form-data" autocomplete="off">
                  <input type="hidden" name="_token" value="{{ csrf_token() }}">

                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Update Zone</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="row">
                        <input type="hidden" name="id" value="{{$zone['id']}}">
                        <div class="col-12">
                          <div class="form-group">
                          <label for="zone_name">Zone Name</label>
                          <input type="text" class="form-control" name="zone_name" id="zone_name" placeholder="Zone Name" value="{{$zone['zone_name']}}">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                  </div>
                  </form>

                </div>
              </div> -->

           <!--  @php $i++; @endphp
            @endforeach
         
          </tbody>  -->
        </table>
      </div>
     <!--  <div class="card-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
    </div>
     -->
   
     </div>
     </div>
    </div>
  </div>
</section>
   
   
   
   
    </div>
  
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; {{date("Y")}} <a href="https://bootestech.in/">Bootestech</a></strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>

<!-- DataTables  & Plugins -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="plugins/jszip/jszip.min.js"></script>
<script src="plugins/pdfmake/pdfmake.min.js"></script>
<script src="plugins/pdfmake/vfs_fonts.js"></script>
<script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<!-- LightBox -->
<script src="plugins/ekko-lightbox/ekko-lightbox.min.js"></script>
<!-- Select2 -->
<script src="plugins/select2/js/select2.full.min.js"></script>
<!-- Custom js -->
<script src="custom.js"></script>



