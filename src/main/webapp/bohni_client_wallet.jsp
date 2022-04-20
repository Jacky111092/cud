<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Bohni - Advertising is about to Change</title>
<!-- plugins:css -->

<link rel="stylesheet" href="new-dashboard/assets/vendors/mdi/css/materialdesignicons.min.css'">
<link rel="stylesheet" href="new-dashboard/assets/vendors/flag-icon-css/css/flag-icon.min.css'">
<link rel="stylesheet" href="new-dashboard/assets/vendors/css/vendor.bundle.base.css'">

<link rel="stylesheet" href="new-dashboard/assets/vendors/jquery-bar-rating/css-stars.css'" />
<!-- <link rel="stylesheet" href="new-dashboard/assets/vendors/font-awesome/css/font-awesome.min.css'" /> -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


<link rel="stylesheet" href="new-dashboard/assets/css/demo_2/style.css'" />
<!-- End layout styles -->

<link rel="shortcut icon" href="webasset/img/favicon.png" />
</head>
<body>

<div class="container-scroller">
<!-- partial:partials/_horizontal-navbar.html -->

<jsp:include page='layout/bohni_dash_header.jsp'/>








<div class="container-fluid page-body-wrapper">
<div class="main-panel">


<div class="container breadcrumb-container">
    <nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/dashboard"><i class="fa fa-home"></i> Dashboard</a></li>
    <li class="breadcrumb-item active" aria-current="page">Wallet</li>
  </ol>
</nav>
<!-- </div>
 -->


<section class="wallet-section">
<c:forEach items="${allCampaignList}" var="allCampaign">
<div class="content-wrapper pb-0">
<div class="row">

<div class="col-12 col-md-4">
  <div class="card budget-card bg-primary mb-4">
    <div class="budget-body">
      <center>
      <div class="icon-area1 dash-icon-shape text-primary rounded-circle shadow new-icons mb-4">
        <div class="fa fa-check"></div>
      </div>
      <c:set var="totallll" value="${0}"/> 
        <h1>
        
        <i class="fa fa-inr" aria-hidden="true"></i>
        
        
        
        <%-- <c:out value="${allCampaign.getAmount()}"/> --%>
        
        <c:forEach items="${allWallet}" var="allWalletd">
        <c:forEach items="${allWalletd}" var="walletDetails">
        <c:choose>
								<c:when test="${allCampaign.getCampaignId() == walletDetails.getCampaign().getCampaignId()}">
		          					
		          					<p class="num"><c:set var="totallll" value="${totallll + walletDetails.getPaid_amount()}" /></p>
			          	
				          </c:when>
				          </c:choose>
       </c:forEach>
        </c:forEach>
        ${totallll}
        
        
        </h1>
        
        
        
        <p class="budget-text">Paid Amount</p>
      </center>

      <div class="budget-bottom">
        <div class="row">
          <div class="col-8">
              <h4><i class="fa fa-inr" aria-hidden="true"></i> <c:out value="${totallll-allCampaign.getRemaining_amount()}"/></h4>
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
              <h4><i class="fa fa-inr" aria-hidden="true"></i> <c:out value="${allCampaign.getRemaining_amount()}"/></h4>
              <p>Balance</p>
          </div>
          <div class="col-4">
            <div class="icon-area dash-icon-shape text-primary rounded-circle shadow new-icons">
              <div class="fa fa-line-chart">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="col-12 col-md-8 stretch-card grid-margin">
<div class="card">
  <div class="card-body p-5">
    <div class="row">
      <div class="col-12 col-md-8">
        <h4 class="card-title mb-5">Payment Activity</h4>
      </div>
       <div class="col-12 col-md-4">
         
          <div class="form-group float-right">
          <select class="select-box" onchange="location = this.options[this.selectedIndex].value;">
              <c:forEach items="${allCampaignList}" var="allCampaignList">
		
            <option value="${allCampaignList.getCampaign_name()}">${allCampaignList.getCampaign_name()}</option>
          <!--   <option></option> -->
            
            <%-- <%-- </c:forEach> --%> --%>
        <!-- @else -->
            <!-- <option value="/dashboard/{{$camp['id']}}">{{$camp['campaign_name']}}</option> -->
        <!-- @endif -->
        </c:forEach>
          </select>
          </div>
         
      </div>
    </div>
    <div class="table-responsive">
      <table class="table custom-table text-dark">
        <thead>
          <tr>
            <th>Sr No</th>
            <th>Date</th>
            <!-- <th>Payment Type</th> -->
            <th>Amount</th>
          </tr>
        </thead>
        <tbody>
         <c:forEach items="${allWallet}" var="allWalletd">
        <c:forEach items="${allWalletd}" var="walletDetails">
        <c:choose>
								<c:when test="${allCampaign.getCampaignId() == walletDetails.getCampaign().getCampaignId()}">
		          					
            <tr>
              <td>${walletDetails.getWalletId()}</td>
              <td>${walletDetails.getCreated_date()}</td>
              <td>${walletDetails.getPaid_amount()}</td>
              <%-- <td>${walletDetails.getWalletId()}</td> --%>
            </tr>
            </c:when>
            
            </c:choose>
            </c:forEach>
            </c:forEach>
        </tbody>
      </table>
    </div>
    <!-- <a class="text-black d-block pl-4 pt-3 pb-3 font-13 font-weight-bold" href="#">View All</a> -->
  </div>
</div>
</div>


</div>


</div>
</c:forEach>
</section>


<section id="footer">
  <div class="container">
    <p>&copy; Copyright 2021. All Rights Reserved.</p>
  </div>
</section>

</div>
<!-- partial -->
</div>
<!-- main-panel ends -->
</div>
<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="new-dashboard/assets/vendors/js/vendor.bundle.base.js'"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="new-dashboard/assets/vendors/jquery-bar-rating/jquery.barrating.min.js'"></script>
<script src="new-dashboard/assets/vendors/chart.js/Chart.min.js'"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.js'"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.resize.js'"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.categories.js'"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.fillbetween.js'"></script>
<script src="new-dashboard/assets/vendors/flot/jquery.flot.stack.js'"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="new-dashboard/assets/js/off-canvas.js'"></script>
<script src="new-dashboard/assets/js/hoverable-collapse.js'"></script>
<script src="new-dashboard/assets/js/misc.js'"></script>
<script src="new-dashboard/assets/js/settings.js'"></script>
<script src="new-dashboard/assets/js/todolist.js'"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="new-dashboard/assets/js/dashboard.js'"></script>
<!-- End custom js for this page -->
</body>
</html>