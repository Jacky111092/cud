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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
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
          <li class="breadcrumb-item"><a href="/all-client">All Client</a></li>
         <!--  <li class="breadcrumb-item active">View Client</li> -->
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <!-- <div class="col-12 col-sm-3"> -->
        <%--  <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">About Client</h3>
              </div>
             
              <div class="card-body">
                <strong><i class="fa fa-bookmark mr-1"></i> Company Name</strong>
                 <c:forEach items="${allClientList}" var="allClients">
                 
                <p class="text-muted pl-4">
                <c:out value="${allClients.getCompany_name()}"/>
                  <!-- {{$client['client_Detail']['company_name']}} -->
                </p>
                <hr>
                <strong><i class="fa fa-car mr-1"></i> Contact Person</strong>
                <p class="text-muted pl-4"><c:out value="${allClients.getUsername()}"/></p>
                <hr>
                <strong><i class="fa fa-th-large mr-1"></i> Phone Number</strong>
                <p class="text-muted pl-4"><c:out value="${allClients.getPhone_no()}"/></p>
                <hr>
                <strong><i class="fa fa-car mr-1"></i> Email (Work)</strong>
                <p class="text-muted pl-4"><c:out value="${allClients.getWork_emailid()}"/></p>
                <hr>
                <strong><i class="fas fa-map-marker-alt mr-1"></i> Email (Personal)</strong>
                <p class="text-muted pl-4"><c:out value="${allClients.getPersonal_emailid()}"/></p>
                <hr>
                <strong><i class="fa fa-calendar mr-1"></i> Website</strong>
                <p class="text-muted pl-4"><c:out value="${allClients.getWebsite()}"/></p>
                <hr>
                <strong><i class="fas fa-calendar mr-1"></i> Designation</strong>
                <p class="text-muted pl-4"><c:out value="${allClients.getDesignation()}"/></p>
                </c:forEach>
              </div>
            </div>  --%>
           <script>
           $(document).ready(function() {
        	    $('#example1').DataTable( {
        	        responsive: true,
        	        "pageLength": 10
        	    } );
        	} );
           
           /* function Geeks() {
        	   
               document.getElementById("row1").remove();
           }
           
           function UpStud(stud)
           {
        	   var companyname = document.sample.CompanyName.value;
        	   var tr = document.createElement('tr');
        	   var s= stud.parentNode.parentNode;
        	   var td1 = tr.appendChild(document.createElement('td'));
        	   var td2 = tr.appendChild(document.createElement('td'));

        	   td1.innerHTML = '<input type="text" name = "companyname1">';
        	   td2.innerHTML = '<input type="button" name = "up" value="Update" onclick = "UpStud(this);">';
        	   
        	   document.getElementById("example1").replaceChild(tr,s);
        	   
           }
           
          // edit the row
           function editRow()
           {
               table.rows[rIndex].cells[0].innerHTML = document.getElementById("fname").value;
               table.rows[rIndex].cells[1].innerHTML = document.getElementById("lname").value;
               table.rows[rIndex].cells[2].innerHTML = document.getElementById("age").value;
           }
           
          
           function edit_row()
           {
        	   document.getElementById("edit_button"+no).style.display="none";
        	   document.getElementById("save_button"+no).style.display="block";
        	  	
        	   var name=document.getElementById("name_row"+no);
        	   var country=document.getElementById("country_row"+no);
        	   var age=document.getElementById("age_row"+no);
        	  	
        	   var name_data=name.innerHTML;
        	   var country_data=country.innerHTML;
        	   var age_data=age.innerHTML;
        	  	
        	   name.innerHTML="<input type='text' id='name_text"+no+"' value='"+name_data+"'>";
        	   country.innerHTML="<input type='text' id='country_text"+no+"' value='"+country_data+"'>";
        	   age.innerHTML="<input type='text' id='age_text"+no+"' value='"+age_data+"'>";
           } */
           </script>
           <div class="card card-primary" style="width:100%;"> 
            <div class="card-header">
                <h3 class="card-title">List of All Clients</h3>
              </div>
             <div class="card-body">
                <div class="table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th><i class="fas fa-business-time mr-1"></i> CompanyName</th>
                    <th><strong><i class="fas fa-user-tie mr-1"></i> Contact Person</strong></th>
                    <th><strong><i class="fas fa-phone mr-1"></i> Phone Number</strong></th>
                    <th><strong><i class="fas fa-envelope-open mr-1"></i> Email (Work)</strong></th>
                    <th><strong><i class="far fa-envelope-open mr-1"></i> Email (Personal)</strong></th>
                    <th><strong><i class="fas fa-globe mr-1"></i> Website</strong></th>
                    <th><strong><i class="fas fa-calendar mr-1"></i> Designation</strong></th>
                    <th></th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                  
                  <c:forEach items="${allClientList}" var="allClients">
 	                <tr>
 	                <form action="editClient.do" class="frmBx" method="post">
                        <td name="company_name"><c:out value="${allClients.getCompany_name()}"/></td>
                        <td name="username">
                          <c:out value="${allClients.getUsername()}"/></td>
  	                    <td name="phone_no"><c:out value="${allClients.getPhone_no()}"/></td>
  	                    <td name="work_emailid"> <input type="hidden" id="work_email" class="form-control" name="work_emailid" placeholder="Email (Work)" value="<c:out value="${allClients.getWork_emailid()}"/>"><c:out value="${allClients.getWork_emailid()}"/></td>
  	                    <td name="personal_emailid"><c:out value="${allClients.getPersonal_emailid()}"/></td>
  	                    <td>
  	                    	<c:out value="${allClients.getWebsite()}"/>
  	                    </td>
  	                    <td>
  	                    	<c:out value="${allClients.getDesignation()}"/>
  	                    </td>
  	                    <!-- <td><a href="/view-admin/{{$admin['id']}}" class="view-btn"><i class="fa fa-eye"></i></a></td> -->
  	                    
  	                    <td><button type="submit" class="btn btn-primary" name ="edit" value="edit">Edit</button>
  	                    
  	                    <!-- <i class='fas fa-edit'></i> -->
  	                    </td>
  	                    <td><button type="submit" class="btn btn-primary" name = "delete" value="delete">Delete</button>
  	                    <!-- <i class='fas fa-trash'></i> -->
  	                    </td>
  	                    </form>
  	                </tr>
  	                </c:forEach>
                    
                 
                  </tbody> 
                </table>
                </div>
              </div>
              </div>
      <!-- </div> -->

      <!-- <div class="col-12 col-sm-9">
      <div class="card">
      <div class="card-header p-2">
        <ul class="nav nav-pills">
          <li class="nav-item"><a class="nav-link active" href="#campaigns" data-toggle="tab">Campaigns</a></li>
          <li class="nav-item"><a class="nav-link" href="#wallet" data-toggle="tab">Wallet</a></li>
        </ul>
      </div>
      
      <div class="card-body">
      <div class="tab-content">
      <div class="active tab-pane" id="campaigns">

      <div class="card">
        <div class="card-header">
          <h3 class="card-title">List of Campaigns</h3>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
          <thead>
          <tr>
          <th>Sr.No</th>
          <th>Campaign Name</th>
          <th>Status</th>
          </tr>
          </thead>
          <tbody>
              @php $i = 1; @endphp
              @foreach($campaign['Campaign_Details'] as $campaign)
              <tr>
                  <td>{{$i}}</td>
                  <td><a href="/view-campaign/{{$campaign['id']}}">{{$campaign['campaign_name']}}</a></td>
                  <td>{{($campaign['is_approved'] == 1) ? 'Approved' : 'Not Approved'}}</td>
              </tr>
              @php $i++; @endphp
              @endforeach
          </tbody> 
          </table>
        </div>
      </div>
      </div>
      <div class="tab-pane" id="wallet">
        


        
      </div>
      <div class="tab-pane" id="settings"></div>

      </div>
      </div>
      </div>
      </div>

 -->


      

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



