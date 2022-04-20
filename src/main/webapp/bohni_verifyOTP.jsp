<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="en">
<head> 
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Bohni - Advertising is about to Change</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">  
      
<link rel="icon" href="webasset/img/favicon.png" type="image/x-icon" /> 

<link rel="stylesheet" href="webasset/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="plugins/ionicons/dist/css/ionicons.min.css">
<link rel="stylesheet" href="plugins/icon-kit/dist/css/iconkit.min.css">
<link rel="stylesheet" href="plugins/perfect-scrollbar/css/perfect-scrollbar.css">
<link rel="stylesheet" href="dist/css/theme.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="src/js/vendor/modernizr-2.8.3.min.js"></script>

<link rel="stylesheet" type="text/css" href="webasset/css/style.css">
<link rel="stylesheet" type="text/css" href="webasset/css/new_login.css">

<style type="text/css">
.card {
    width: 350px;
    padding: 10px;
    border-radius: 20px;
    background: #fff;
    border: none;
    height: 350px;
    position: relative
}

.container {
    height: 100vh
}

body {
    background: #eee
}

.mobile-text {
    color: #989696b8;
    font-size: 15px
}

.form-control {
    margin-right: 12px
}

.form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #ff8880;
    outline: 0;
    box-shadow: none
}

.cursor {
    cursor: pointer
}
.bg-blue {
    color: #fff;
    background-color: #1A237E
}

</style>
</head>

<body>
<div class="d-flex justify-content-center align-items-center container">
    <div class="card py-5 px-3">
    <form action="verifyClientOtp.do" class="frmBx" method="post"  autocomplete="off">
    <input type="hidden" name="client_id" value="${clientt.getClient_id()}">
      <input type="hidden" name="phone_no" value="${clientt.getPhone_no()}">
        <h5 class="m-0">Mobile phone verification</h5><span class="mobile-text">Enter the code we just send on your mobile phone <b class="text-danger">+91 ${clientt.getPhone_no()}</b></span>
        <div class="d-flex flex-row mt-5">
        <input type="text" class="form-control" autofocus="" name="one"><input type="text" class="form-control" name="two"><input type="text" class="form-control" name="three"><input type="text" class="form-control" name="four">
        <input type="text" class="form-control" autofocus="" name="five"><input type="text" class="form-control" autofocus="" name="six"></div>
        <div class="text-center mt-5"><span class="d-block mobile-text"><button class="signin-btn mt-4">Verify</button></span></div>
        <div class="text-center mt-5"><span class="d-block mobile-text">Don't receive the code?</span><span class="font-weight-bold text-danger cursor">Resend</span></div>
    </form>
    </div>
</div>
<div class="bg-blue py-4">
         <center>
        <h2><img src="webasset/img/bohniWhite.png">Done?</h2>
        <!-- <p>Making Advertising More Meaningful</p> -->
        <a href="Bohni_index.jsp" class="signup-btn"><i class="fa fa-chevron-left" aria-hidden="true"></i>&nbsp;&nbsp;Back to Home</a>

        <!-- <button class="signup-btn btn-outline-warning">Sign Up</button> -->
      
      </center>
            <!-- <div class="row px-3"> <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2019. All rights reserved.</small>
                <div class="social-contact ml-4 ml-sm-auto"> <span class="fa fa-facebook mr-4 text-sm"></span> <span class="fa fa-google-plus mr-4 text-sm"></span> <span class="fa fa-linkedin mr-4 text-sm"></span> <span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span> </div>
            </div> -->
        </div>


<script src="src/js/vendor/jquery-3.3.1.min.js"></script>
<script src="plugins/popper/dist/umd/popper.min.js"></script>
<script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="plugins/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
<script src="plugins/screenfull/dist/screenfull.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
      $('input').keyup(function(){
          if(this.value.length==$(this).attr("maxlength")){
              $(this).next().focus();
          }
      });
    });
</script>

</body>
</html>
