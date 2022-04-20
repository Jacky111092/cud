<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/dashboard" class="brand-link">
      <img src="dist/img/Bohni/whitelogo.png" alt="BohniLogo" style="opacity: .8">
      <!-- <span class="brand-text font-weight-light">AdminLTE 3</span> -->
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
                  <img src="profile_picture/profile_picture.jpg" class="img-circle elevation-2"  alt="User Image">
<!--           <img src="profile_picture/profile_picture.jpg" class="img-circle elevation-2" onerror="this.src='profile_picture/profile_picture.jpg'" alt="User Image">
 -->        </div>
        <div class="info">
          <a href="#" class="d-block"><b> ${user.getEmailid()}
          </b></a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
     <!--  <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>
 -->
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item "><!-- menu-open -->
            <a href="#" class="nav-link"> <!-- active -->
              <i class="nav-icon fa fa-user"></i>
              <p>
                Admin Role
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="addsubadmin.jsp" class="nav-link">
                  <i class="fa fa-user-plus nav-icon"></i>
                  <p>Add Sub Admin</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link"> <!-- active -->
              <i class="nav-icon fa fa-users"></i>
              <p>Clients<i class="right fas fa-angle-left"></i></p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="Client.jsp" class="nav-link">
                  <i class="fa fa-user-plus nav-icon"></i>
                  <p>Add Client</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="viewAllClients.do" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>All Clients</p>
                </a>
              </li>
            </ul>
          </li>
         
          <!-- <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-user"></i>
              <p>Users <i class="right fas fa-angle-left"></i></p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/layout/top-nav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>User Registration</p>
                </a>
              </li>
             
            </ul>
          </li> -->
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-tasks"></i>
              <p>Campaigns
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item">
                <a href="getCampaignClient.do" class="nav-link">
                  <i class="fa fa-plus-circle nav-icon"></i>
                  <p>Add New Campaign</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="viewAllCampaign.do" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>All Campaigns</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="viewAllApprovedCampaign.do" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>Ready To Live</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="viewAllLiveCampaigns.do" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>Live Campaigns</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/approved-campaigns" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>Approved Campaigns</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/running-campaigns" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>Running Campaigns</p>
                </a>
              </li>
             
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-users"></i>
              <p>
                Vehicle Partners
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="AddVehiclePartner.jsp" class="nav-link">
                  <i class="fa fa-user-plus nav-icon"></i>
                  <p>Add Vehicle Partner</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="viewAllVehiclePartner.do" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>All Vehicle Partners</p>
                </a>
              </li>
            </ul>
          </li>
			 <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-car"></i>
              <p>
                Vehicles
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="viewAllVehiclePartnerss.do" class="nav-link">
                  <i class="fa fa-plus nav-icon"></i>
                  <p>Add Vehicles</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="viewAllVehicles.do" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>All Vehicles</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="viewAllVehiclesRequest.do" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>New Requests</p>
                </a>
              </li>
            </ul>
          </li>
           <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-users"></i>
              <p>Drivers<i class="fas fa-angle-left right"></i></p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/add-driver" class="nav-link">
                  <i class="fa fa-user-plus nav-icon"></i>
                  <p>Add Driver</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/all-drivers" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>All Drivers</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-envelope"></i>
              <p>
                Wallet
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="viewWalletForCampaign.do" class="nav-link">
                  <i class="fa fa-plus-circle nav-icon"></i>
                  <p>Add Wallet</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="viewAllWallet.do" class="nav-link">
                  <i class="fa fa-list-ul nav-icon"></i>
                  <p>Wallet List</p>
                </a>
              </li>
            </ul>
          </li>

           <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-globe"></i><p>Zones/Areas<i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
               <li class="nav-item">
                <a href="viewAllZone.do" class="nav-link">
                  <i class="fa fa-location-arrow nav-icon"></i>
                  <p>Zones</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="viewAllArea.do" class="nav-link">
                  <i class="fa fa-map-marker nav-icon"></i>
                  <p>Areas</p>
                </a>
              </li>
            </ul>
          </li>

         

          <li class="nav-item">
            <a href="/subscribers" class="nav-link">
              <i class="nav-icon fa fa-th-large"></i>
              <p>Subscribers</p>
            </a>
          </li>

          <li class="nav-header">LOGOUT</li>
          <li class="nav-item">
            <a href="adminLogout.do" class="nav-link">
              <i class="nav-icon fa fa-power-off"></i>
              <p>Logout</p>
            </a>
          </li>
          
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>