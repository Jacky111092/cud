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
<style>
.yourclass
{
background-color: rgba(0,0,0,.05);
}
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color:white;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>
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

 <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Sub Admin</h3>
              </div>
              <form action="addSubAdmin.do" class="frmBx" method="post"  autocomplete="off">
          		<input type="hidden" name="_token">
              <div class="card-body">
             	<div class="row">
               		<div class="col-12 col-md-4">
              			<div class="form-group">
		                    <label for="input2">Name</label>
		                    <input type="text" class="form-control" name="username" id="input2" placeholder="Name">
		                </div>
              		</div>
              		<div class="col-12 col-md-4">
              			<div class="form-group">
		                    <label for="input1">Email address</label>
		                    <input type="email" class="form-control" name="emailid" id="input1" placeholder="Email">
		                </div>
              		</div>
              		<div class="col-12 col-md-4">
              			<div class="form-group">
		                    <label for="input3">Mobile Number</label>
		                    <input type="text" class="form-control" name="mobile_number" id="input3" placeholder="Mobile Number">
		                </div>
              		</div>
              		<div class="col-12 col-md-4">
              			<div class="form-group">
		                  <label>Role</label>
		                  <select class="form-control select2" name="role" style="width: 100%;">
		                    <option selected="selected" disabled="disabled">Select role</option>
                        <!-- @foreach($admin_roles['roles'] as $role)
		                    <option value="{{$role['id']}}">{{$role['role']}}</option>
                        @endforeach -->
                         <option>Campaign Manager</option>
                      <option>Accounts</option>
                      <option>Callers</option>
                      <option>Operations</option>
                      <option>Sales</option>
		                  </select>
		                </div>
              		</div>
              		<div class="col-12 col-md-4">
              			<div class="form-group">
		                    <label for="input4">Password</label>
		                    <input type="password" class="form-control" name="password" id="input4" placeholder="Password">
		                  </div>
              		</div>

                  <div class="col-12 col-sm-4">
                    <div class="form-group">
                      <label for="exampleInputFile">Profile Picture</label>
                      <div class="input-group">
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" name="profile_picture" id="exampleInputFile">
                          <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- <div class="col-12 col-md-4" >
                    <div class="form-group">
                        <label for="access_limit">Access Limit (h:m)</label>
                        <input type="time" class="form-control" name="access_limit" id="access_limit" placeholder="">
                      </div>

                    <div class="form-group">
                      <label>Access Limit</label>
                      <div class="select2-purple">
                      <select class="select2" multiple="multiple" name="access_limit[]" data-placeholder="Select a Limit Access" data-dropdown-css-class="select2-purple" style="width: 100%;">
                      <option>All</option>
                      <option>Dashboard</option>
                      <option>Campaign</option>
                      <option>Wallet</option>
                      <option>Drivers</option>

                      </select>
                      </div>
                    </div>
                    
                    

                  </div>
                                    <div class="form-group" style = "width: 100%;">
                  
                   
              <div style="width:100%;" >
                
              </div> -->
              <!-- /.card-header -->
              <div class="card-body" style="padding:0.5rem;">
               <label>Access Limit</label>
               <div style="float: right;">
               <button type="button" onclick="myFunction()">Add Row</button>
               <button type=button value="delete" id="delete" onclick="Geeks()">Delete Row</button>
               </div>
               <script>
               function myfunc(ele) {

            	   var values = new Array();
            	         $.each($("input[name='case[]']:checked").closest("td").siblings("td"),
            	                function () {
            	                     values.push($(this).text());
            	                });
            	      
            	         alert("val---" + values.join (", "));
            	   }
            	       

            	  $(document).ready(function() {
            	      $("input.case").click(myfunc);
            	  });
               function Geeks() {
            	   var tableRef = document.getElementById('example1');
            	   var tableRows = document.getElementById("example1").rows;
            	   var checkedIndexes = [];
            	   for (var i = 1; i < tableRows.length; i++) {
            	     var checkboxSelected = tableRows[i] && tableRows[i].cells[0].firstElementChild.checked;
            	     if (checkboxSelected) {
            	       checkedIndexes.push(i);
            	     }
            	   }

            	   for (var k = 0; k < checkedIndexes.length; k++) {
            	     tableRef.deleteRow(checkedIndexes[k]-k);
            	   }
            	   
               }
              
            	   
            	
				function myFunction() {
				  var table = document.getElementById("example1");
				  var row = table.insertRow();
				  var cell1 = row.insertCell();
				  var cell2 = row.insertCell();
				  var cell3 = row.insertCell();
				  var cell4 = row.insertCell();
				  var cell5 = row.insertCell();
				  var cell6 = row.insertCell();
				  cell1.innerHTML = '<tr><td><label class="container"><input type="checkbox" id="add" name="add" value="Add"><span class="checkmark"></span></label></td></tr>';
				  cell2.innerHTML = '<tr><td><div class="select2-purple"><select class="form-control select2" name="role_id" style="width: 100%;"><option selected="selected" disabled="disabled">Select role</option><option>Client</option><option>Vehicle/Vehicle Partners</option><option>Drivers</option><option>Wallet</option><option>Zones/Areas</option></select></select></div>'       
				  cell3.innerHTML = '<tr><td><label class="container"><input type="checkbox" id="add" name="add" value="Add"><span class="checkmark"></span></label></td></tr>'; 
				  cell4.innerHTML = '<tr><td><label class="container"><input type="checkbox" id="add" name="add" value="Add"><span class="checkmark"></span></label></td></tr>'; 
				  cell5.innerHTML = '<tr><td><label class="container"><input type="checkbox" id="add" name="add" value="Add"><span class="checkmark"></span></label></td></tr>'; 
				  cell6.innerHTML = '<tr><td><label class="container"><input type="checkbox" id="add" name="add" value="Add"><span class="checkmark"></span></label></td></tr>'; 
				  cell1.className = 'yourclass';
				  cell2.className = 'yourclass';
				  cell3.className = 'yourclass';
				  cell4.className = 'yourclass';
				  cell5.className = 'yourclass';
				  cell6.className = 'yourclass';
				}
				
				</script>
                <div class="table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Select</th>
                    <th>Role Type</th>
                    <th>Add</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    <th>View</th>
                    <!-- <th>Active / Inactive</th>
                    <th></th> -->
                  </tr>
                  </thead>
                  <tbody>
                    
  	                <tr>
                        <td>
                        <input type="checkbox" class="case" name="case[]" value="1"/>
                        <!-- <label class="container"><input type="checkbox" id="add" name="add" value="Add"><span class="checkmark"></span></label> -->
                        </td>
                        <td>
						<div class="select2-purple">
                      <select class="form-control select2" name="roletype" style="width: 100%;">
		                    <option selected="selected" disabled="disabled">Select role</option>
                        <!-- @foreach($admin_roles['roles'] as $role)
		                    <option value="{{$role['id']}}">{{$role['role']}}</option>
                        @endforeach -->
                         <option>Client</option>
                      <option>Vehicle/Vehicle Partners</option>
                      <option>Drivers</option>
                      <option>Wallet</option>
                      <option>Zones/Areas</option>
		                  </select>

                      </select>
                      </div>                        </td>
  	                    <td><label class="container"><input type="checkbox" id="add" name="add" value="Add"><span class="checkmark"></span></label></td>
  	                    <td><label class="container"><input type="checkbox" id="edit" name="edit" value="Edit"><span class="checkmark"></span></label></td>
  	                    <td><label class="container"><input type="checkbox" id="delete" name="delete" value="Delete"><span class="checkmark"></span></label></td>
  	                    <td>
  	                    	<label class="container"><input type="checkbox" id="view" name="view" value="View"><span class="checkmark"></span></label>
  	                    </td>
  	                    <!-- <td>
  	                    	{{($admin['is_block'] == '0') ? 'Active' : 'Inactive'}}
  	                    </td>
  	                    <td><a href="/view-admin/{{$admin['id']}}" class="view-btn"><i class="fa fa-eye"></i></a></td> -->
  	                </tr>
                  
                  </tbody> 
                </table>
                </div>
              </div>
              <!-- /.card-body -->
          
                
              </div>
              <div>
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              	</div>
              	
                </div>
                
              </form>
            </div>


            <div class="card" style = "width:100%;">
              <div class="card-header">
                <h3 class="card-title">List of All Admins</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body" >
                <div class="table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Sr No.</th>
                    <th>Profile Picture</th>
                    <th>Name</th>
                    <th>Email ID</th>
                    <th>Mobile Number</th>
                    <th>Role</th>
                    <th>Active / Inactive</th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                   <c:forEach items="${allAdminList}" var="allAdmins">
  	                <tr>
                        <td>{{$i}}</td>
                        <td>
                          <img id="currentPhoto" class="img-circle elevation-2 admin-profile" src="{{URL::asset('')}}{{$admin['profile_picture']}}" onerror="this.src='{{URL::asset('')}}/AdminUploads/profile_picture/profile_picture.jpg'">
                        </td>
  	                    <td><c:out value="${allAdmins.getUsername()}"/></td>
  	                    <td><c:out value="${allAdmins.getEmailid()}"/></td>
  	                    <td><c:out value="${allAdmins.getMobile_number()}"/></td>
  	                    <td>
  	                    	<c:out value="${allAdmins.getRole()}"/>
  	                    </td>
  	                    <td>
  	                    	<!-- {{($admin['is_block'] == '0') ? 'Active' : 'Inactive'}} -->
  	                    </td>
  	                    <td><a href="/view-admin/{{$admin['id']}}" class="view-btn"><i class="fa fa-eye"></i></a></td>
  	                </tr>
  	                </c:forEach>
                    
                 
                  </tbody> 
                </table>
                </div>
              </div>
              <!-- /.card-body -->
          </div>
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
    </section>
 

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

