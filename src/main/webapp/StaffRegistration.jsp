<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
 
 body, html {
height: 100%;

}
 .bg {
   margin-top:-40px;
    background-image: url("img/staffbg.jpg");
        height: 150%; 
        
    background-repeat: no-repeat;
    background-size: cover;
    }
 /* Add padding to containers */
.container {
padding-left: 50px; }
 
.formContainer {
	margin: auto;
    width: 60%;
    padding: 10px;    
}
.buttonContainer {
	margin: auto;
    width: 60%;
    padding: 10px;
    padding-left: 300px;
}

h1 {
padding-top:40px; 
font-size: 60px;
color: solid black;
}
h2{
text-align: center;
}
p {
color: black;
text-align: center;
}
label {
color: solid black;
}

.adhr {
  border: 1px solid black;
  margin-bottom: 25px;
  width: 100%;
}

hr{
border: 1px solid black;
  margin-bottom: 25px;
  width: 60%;
}
.tooltip {
    position: relative;
    display: inline-block;
   }

.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: black;
    color: #fff;
    text-align: center;
    padding: 5px 0;
    border-radius: 6px;
 
    /* Position the tooltip text - see examples below! */
    position: absolute;
    z-index: 1;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
    visibility: visible;
}
/* Set a style for the add details button */
.addbtn {
background-image: url('img/tick.png');
background-repeat: no-repeat;
  color: black;
  padding: 30px 30px;
  margin: 4px 50px;
  border: none;
  cursor: pointer;
  opacity: 0.9;
  background-color: white;  
  border: 2px solid black;
  border-radius: 52%;
   
}

.resetbtn { 
background-image: url('img/reset.png');
background-repeat: no-repeat;
  color: black;
  padding: 30px 30px;
  margin: 4px 2px;
  border: none;
  cursor: pointer;
  opacity: 0.9;
  background-color: white;  
  border: 2px solid black;
  border-radius: 52%;
  
}

.staff {
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
.addbtn:hover {
    color: black;
}

.resetbtn:hover {
    color: black;
}

</style>
</head>

<body>
<div class="bg">
<div style="text-align:center"> <h1>Administrator</h1></div>
<div class= "container">
<a href="Admin.jsp"><button class="staff">Home</button></a>
<a href="StaffRegistration.jsp"><button class="staff">Staff Registration</button></a>
<a href="getTicket.do"><button class="staff">Ticket Approval</button></a>
<a href="ReportGeneration.jsp"><button class="staff">Report Generation</button></a>
<a href="getUser.do"><button class="staff">User Validation</button></a>
<a href="adminLogout.do"><button class="staff">Log Out</button></a>
</div>
<br>
<hr class="adhr">
<form name="myForm" action= "addStaff.do">
  <div class="container">
    <h2>REGISTER</h2>
    <p>Fill the staff details</p>
    <hr>
    <div class="formContainer">
    
    <table style="width:100%">
    <tr>
    <td>
    <label for="name"><b>Name:</b></label>
    </td>
    <td>
    <input id="name" type="text" placeholder="Enter Name" name="name" required>
    </td>
    </tr>
    <tr>
    <td>
    <label for="email"><b>Email:</b></label>
    </td>
     <td>
    <input id="email" type="email" placeholder="Enter Email" name="emailid" required>
    </td>
    </tr>
    <tr>
    <td>
    <label for="name"><b>Password:</b></label>
    </td>
    <td>
    <input id="name" type="password" placeholder="Enter Password" name="password" required>
    </td>
    </tr>
    
    <tr>
    <td>
    <label for="contact"><b>Contact Number:</b></label>
     </td>
     <td>
    <input id="contact" type="number" placeholder="Enter Contact Number" name="contactNumber" required >
    </td>
    </tr>
 
  <tr>
    <td>
    <label for="address"><b>Address:</b></label>
    </td>
   
    <td>
    <textarea id="address" rows="10" cols="50" name="address"></textarea>
    </td>
  </tr>
  
  
  <tr>
    <td>
    <label for="dob"><b>Date of Birth:</b></label>
    
    
    </td>
    <td>  
      <input id="dob" type="date" name="dob" required>
	</td>
  
  </tr>
</table>


    </div>
    
	<div class="buttonContainer">
	<div class="tooltip">
	<button onclick="myFunction()" class="addbtn"></button>
	<span class="tooltiptext">Register</span>
	</div>
    <script>
function myFunction()
			{
				var u = document.getElementById("name").value;
				var p = document.getElementById("email").value;
				var n = document.getElementById("contact").value;
				var u = document.getElementById("dob").value;
				
				var atpos = p.indexOf("@");
				var dotpos = p.indexOf(".");
				
				if(atpos<1 || dotpos<atpos+2 || dotpos+2>=p.length)
				{
					alert("Not a valid email address.");
					return false;
				}
				if(n.length != 10)
				{
					alert("Contact Number should be of 10 digits");
					return false;
				}
								
				return true;
			} 
</script>
  <div class="tooltip">
    <button type="reset" class="resetbtn"></button>   
 <span class="tooltiptext">Reset</span>
	</div>
	</div>
     </div>
  </form>
  </div>  
   </body>
	</html>
	
	
	
	