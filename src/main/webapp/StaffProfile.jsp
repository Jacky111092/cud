<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Profile</title>
<style>
.container {
padding-left: 250px;
}

h1 {
color: black;
padding-top:40px; 
font-size: 60px;
}

table
{
font-size:30px;
}
body, html {
    height: 100%;
    margin: 0;
}


.bg {
    /* The image used */
    margin-top:-40px;
    background-image: url("img/staffbg.jpg");
    
    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    
    background-repeat: no-repeat;
    background-size: cover;
    }


.button {
    background-color: #4CAF50; 
    border: none;
    color: white;
    padding: 20px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; 
    transition-duration: 0.4s;
      	} 

.profile {
position:relative;
left:20px;
top:20px;
background-repeat: no-repeat;
padding-right: 50px;
padding-left: 50px;
height: 50px;
text-align: center;
background-position: center;
background-color: #B6ACAC; 
    color: black; 
    border: 2px solid #000000;
}

</style>
</head>
<body>
<div class="bg">
<div style="text-align:center"> <h1>Staff Profile</h1></div>
<div class= "container">
<a href="StaffDashboard.do"><button class="profile">Home</button></a>
<a href="StaffProfile.jsp"><button class="profile">Profile</button></a>
<a href="getClaimsDetails.do"><button class="profile">Issue Ticket</button></a>
<a href="getQueriesDetails.do"><button class="profile">Customer Queries</button></a>
<a href="getUserDetails.do"><button class="profile">Customer Details</button></a>
<a href="staffLogout.do"><button class="profile" onclick="alert('are you sure you want to logout!')">Logout</button></a>
</div>
<br>
<br>
<div style="text-align:center" align="center">
<table align="center">
<tr>
<th>
  <label>Name:</label> </th><td><label>${staff.getName()}</label>
  </td></tr> 
  <tr>
<th>  
  <label>Email:</label></th><td><label>${staff.getEmailid()}</label></td></tr>
  <tr><th><label>Contact Number:</label></th><td><label>${staff.getContactNumber()}</label></td></tr>
 <tr> <th><label>Address:</label></th><td><label>${staff.getAddress()}</label></td></tr>
 <tr><th> <label>DOB:</label></th><td><label>${staff.getDob()}</label></td></tr>
  </table>
</div>
</div>
</body>
</html>