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
<section class="billing-section">

  <div class="container breadcrumb-container pt-0 mb-4">
  <nav aria-label="breadcrumb">
  <ol class="breadcrumb mb-0">
  <li class="breadcrumb-item"><a href="/dashboard"><i class="fa fa-home"></i> Dashboard</a></li>
  <li class="breadcrumb-item active" aria-current="page">Billing</li>
  </ol>
  </nav>
  </div>

  <div class="container">
    <div class="card">
      <div class="billing-inside">
        <div class="row">
           <div class="col-12 col-md-9">
            <p>Add Account</p>
            <h4>James March (1516416515669332)</h4>
          </div>
          <div class="col-12 col-md-3">
            <div class="row">
              <div class="col-12">
              <p>Available Balance</p>
              <p><strong>Rs20.45</strong></p>
              </div>
              <!-- <div class="col-12 col-md-6">
                <button class="btn fund-btn mt-3">Add Funds</button>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- <div class="card mt-3">
      <div class="middle-part">
        <div class="row">
          <div class="col-12 col-md-3">
              <h4 class="pl-4 pt-3"><i class="fa fa-calendar"></i> Lifetime</h4>
          </div>
          <div class="col-12 col-md-2"></div>
          <div class="col-12 col-md-3">
              <input type="date" class="form-control m-1" name="">
          </div>
          <div class="col-12 col-md-3">
              <input type="date" class="form-control m-1" name="">
          </div>
          <div class="col-12 col-md-1">
            <button class="add-btn m-1">+</button>
          </div>
        </div>
      </div>
    </div> -->

    
    <div class="card mt-3 mb-4">
  <div class="card-body pb-0">
    <h4 class="card-title">Payment Activity</h4>
  </div>
  <hr>
  <div class="card-body p-2 mb-2">
    <div class="table-responsive">
      <table class="table custom-table text-dark">
        <thead>
          <tr>
            <th>Amount</th>
            <th>Payment Type</th>
            <th>Bank Name</th>
            <th>Account Number</th>
            <th>Account Type</th>
            <th>IFSC Code</th>
            <th>Date</th>
          </tr>
        </thead>
        <tbody>
          @foreach($Wallet['wallet'] as $wallet)
          <tr>
            <td>{{$wallet['amount']}}</td>
            <td><span class="badge badge-pill badge-success">{{$wallet['payment_type']}}</span></td>
            <td>{{$wallet['bank_name']}}</td>
            <td>{{$wallet['bank_acc_no']}}</td>
            <td>{{$wallet['acc_type']}}</td>
            <td>{{$wallet['ifsc_code']}}</td>
            <td>{{$wallet['created_at']}}</td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    
  </div>
</div>









  </div>
</section>


@endsection
</body>
</html>