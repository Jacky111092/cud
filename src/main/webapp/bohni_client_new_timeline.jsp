<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Bohni - Advertising is about to Change</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="webasset/img/favicon.png" rel="icon">
  <!-- <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->

  <link href="new-dash/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="new-dash/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="new-dash/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="new-dash/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="new-dash/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="new-dash/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="new-dash/assets/vendor/aos/aos.css" rel="stylesheet">

  
  <!-- Template Main CSS File -->
  <link href="new-dash/assets/css/newstyle.css" rel="stylesheet">
  
</head>

<body>

  <!-- ======= Header ======= -->
  <header  id="header" class="fixed-top ">
    <div class="container">

      <div class="logo float-left">
         <a href="#"><img src="webasset/img/logo2.png" alt="" class="img-fluid"></a>
      </div>
      <nav class="nav-menu float-right d-none d-lg-block">
        <ul>
          <li><a href="/dashboard">Dashboard</a></li>
          <li><a href="/map">Map</a></li>
          <li class="active"><a href="/timeline">Timeline</a></li>
          <li>
            <a style="font-size: 14px;" href="#"><i class="bx bxs-bell"></i></a>
          </li>

          <li class="drop-down" style="border:1px solid #1a385a;border-radius: 20px;"><a href="">
            <img style="border-radius: 50%;" src="new-dash/assets/img/team/team-1.jpg" width="20" height="20">
          </a>
            <ul>
              
              <li><a href="#">Profile</a></li>
              <li><a href="#">Setting</a></li>
              <li><a href="#">Logout</a></li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </header>

  <!-- End Header -->

<section class="campaign-details">
<div class="container-fluid">
<div class="card">
<div class="p-5">
  <div class="section-title">
  <h2>Campaign Details</h2>
  </div>

    <div class="row">
      <div class="col-8"></div>
      <div class="col-4">
        <div class="form-group">
          <select class="form-control" id="campaignName">
          <option selected>Amazon India Pvt Ltd</option>
          <option>Tata Motors India</option>
          </select>
        </div>
      </div>
      
    </div>
    

    <div class="table-responsive">
    <table class="table">
    <thead>
    <tr>
      <th>Name</th>
      <th>Zone</th>
      <th>Days/Km</th>
      <th>Amount</th>
      <th>Created at</th>
      <th>Start Date</th>
      <th>End Date</th>
      <th>Status</th>
      <!-- <th></th> -->
    </tr>


    </thead>
      <tbody>
      <tr>
      <td>Amazon India Pvt Ltd</td>
      <td>Thane,Maharashtra</td>
      <td>20 Km</td>
      <td>42,000</td>
      <td>8/07/2019</td>
      <td>9/07/2019</td>
      <td>7/8/2019</td>
      <td><span class="badge badge-pill badge-success">Active</span></td>
      <!-- <td>
        <button class="btn btn-outline-warning btn-sm" data-toggle="modal" data-target="#exampleModal">
        <i class="bx bx-edit-alt"></i>
      </button>
      </td> -->

      </tr>
     <!--  <tr>
      <td>Tata Motors India</td>
      <td>Pune, Maharashtra</td>
      <td>30/130</td>
      <td>15,000</td>
      <td>30/09/2020</td>
      <td>9/10/2020</td>
      <td>10/10/2020</td>
      <td><span class="badge badge-pill badge-success">Active</span></td>

      <td>
        <button class="btn btn-outline-warning btn-sm" data-toggle="modal" data-target="#exampleModal">
        <i class="bx bx-edit-alt"></i>
      </button>
      </td>
      </tr> -->

      </tbody>
    </table>
    </div>

    <button class="btn btn-sm filter-btn" data-toggle="modal" data-target="#exampleModal">
        <i class="bx bx-edit-alt"></i> Edit Campaign
      </button>


</div>
</div>
</div>
</section>


<section class="timeline-section">
  <div class="container-fluid">
    <div class="card">
      <div class="p-5">
    <div class="section-title">
      <h2>Campaign Timeline</h2>
    </div>

     <!-- <div class="row">
      <div class="col-8"></div>
      <div class="col-4">
        <div class="form-group">
          <select class="form-control" id="campaignName">
          <option selected>Amazon India Pvt Ltd</option>
          <option>Tata Motors India</option>
          </select>
        </div>
      </div>
      
    </div> -->



    <div class="row">
      <div class="col-12" data-aos="fade-up">

    <ul class="bs4-order-tracking">
    <li class="step active">
        <h2 class="campaign-date">1 June</h2>
        <div><i class="bx bx-check"></i></div> <h2>Payment</h2> <br>
        
    </li>
    <li class="step active">
        <h2 class="campaign-date">2 June</h2>
        <div><i class="bx bx-check"></i></div> <h2>Order Live</h2><br>
    </li>
    <li class="step">
        <h2 class="campaign-date">4 June</h2>
        <div><i class="bx bx-check"></i></div> <h2>Pasting Process</h2><br>
    </li>
    <li class="step">
        <h2 class="campaign-date">5 June</h2>
        <div><i class="bx bx-check"></i></div><h2>Ready For Campaign</h2><br>
    </li>
    </ul>
    </div>
  </div>

  <center>
    <p class="timer-para"><i class="bx bx-time"></i> Left 3 days to launch</p>
  </center>
  
</div>
</div>
</div>
</section>


<section class="portfolio">
<div class="container-fluid">
<div class="card">
<div class="p-5"> 
<div class="row">
<div class="col-lg-12">
  <ul id="portfolio-flters">
    <li data-filter=".filter-web" class="filter-active">
      <div class="section-title">
      <h2>Campaign Images<p>[Start of the Campaign]</p></h2>

    </div>
    </li>
  </ul>
</div>
</div>

 <div class="row">
      <div class="col-8"></div>
      <div class="col-4">
        <div class="form-group">
          <select class="form-control" id="campaignName">
          <option selected>Filter by Vehicle</option>
          <option>MH 02 J 7585</option>
          <option>MH 03 K 5455</option>
          </select>
        </div>
      </div>
      
    </div>



<div id="gallery" class="carousel slide" data-ride="carousel">
  
    <div class="carousel-inner p-5">
        <div class="carousel-item active">
            <div class="row">

              <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/5.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/5.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/5.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

           <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/2.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/2.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/2.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

           <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/7.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/7.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/7.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

            <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/8.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/8.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/8.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

            <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/9.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/9.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/9.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

            <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/10.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/10.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/10.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

              

            </div>
        </div>

        <div class="carousel-item">
            <div class="row">
               <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/6.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/6.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/6.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

           <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/8.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/8.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/8.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

           <div class="col-lg-2 col-md-6 filter-web">
            <div class="portfolio-item">
              <img src="img/vehicles/7.jpg" class="campaign-gallery" alt="">
              <div class="portfolio-info">
                <h3><a href="img/vehicles/7.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1">Image 1</a></h3>
                <div>
                  <a href="img/vehicles/7.jpg" data-gall="portfolioGallery" class="venobox" title="Image 1"><i class="bx bx-plus"></i></a>
        
                </div>
              </div>
            </div>
          </div>

            </div>
        </div>
    </div>

    <a style="left: -60px;"  class="carousel-control-prev" href="#gallery" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon img-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a style="right: -60px;" class="carousel-control-next" href="#gallery" role="button" data-slide="next">
        <span class="carousel-control-next-icon img-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

</div>
</div>
</div>
</div>
</section>




<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">Update Campaign Details</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body update-campaign">
        



        <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Extend Kilometers</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Increase Vehicles</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
    <br>

      <div class="container">
        <form>

          <div class="row">
          <div class="col-12">
          <div class="material-textfield">
          <input placeholder=" " type="text">
          <label>No of Km Remaining</label>
          </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-12">
          <div class="material-textfield">
          <input placeholder=" " type="text">
          <label>No of Km You want to extend</label>
          </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-12">
          <div class="material-textfield">
          <input placeholder=" " type="text">
          <label>Total No of Km</label>
          </div>
          </div>
        </div>
        <br>

        <div class="row">
          <div class="col-12">
          <div class="material-textfield">
          <input placeholder=" " type="date">
          <label>Date of Extension</label>
          </div>
          </div>
        </div>

        </form>
      </div>
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
    <br>

    <div class="container">
      <form>

        <div class="row">
          <div class="col-12">
          <div class="material-textfield">
          <input placeholder=" " type="text">
          <label>Number of Vehicles</label>
          </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-12">
          <div class="material-textfield">
          <input placeholder=" " type="text">
          <label>No of Vehicles you want to update</label>
          </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-12">
          <div class="material-textfield">
          <input placeholder=" " type="text">
          <label>Total Number of Vehicles</label>
          </div>
          </div>
        </div>
        <br>

        <div class="row">
          <div class="col-12">
          <div class="material-textfield">
          <input placeholder=" " type="date">
          <label>Date of Extension</label>
          </div>
          </div>
        </div>

      </form>
    </div>
  </div>
</div>



      </div>
      <div class="modal-footer p-4">
        <button type="button" class="btn filter-btn btn-block">Request to admin</button>
      </div>
    </div>
  </div>
</div>



  <!-- ======= Footer ======= -->
  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span></span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        Designed by <a href="https://bootestech.in/" target="_blank">Bootestech</a>
      </div>
    </div>
  </footer>

  <!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->

  <script src="new-dash/assets/vendor/jquery/jquery.min.js"></script>
  <script src="new-dash/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="new-dash/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="new-dash/assets/vendor/php-email-form/validate.js"></script>
  <script src="new-dash/assets/vendor/venobox/venobox.min.js"></script>
  <script src="new-dash/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="new-dash/assets/vendor/counterup/counterup.min.js"></script>
  <script src="new-dash/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="new-dash/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="new-dash/assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="new-dash/assets/js/main.js"></script>


</body>

</html>