<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Vehicle Details</title>
<style>
 {box-sizing: border-box}
 
 /* Add padding to containers */
.container {

    margin: auto;
    width: 80%;
    border: none;
    padding: 10px;
 }
 .buttonContainer {
	margin: auto;
    
    padding: 10px;
    padding-left: 300px;
}
.formContainer {
margin: auto;
    width: 60%;
    padding: 10px;
    padding-left: 200px;
    
}
h1 {
text-align:center;
padding-top:40px; 
font-size: 60px;
color: solid black;
}

p {
color:  black;
text-align: center;
}


label {
color: white;
}
/* Overwrite default styles of hr */
hr {
  border: 1px solid black;
  margin-bottom: 25px;
}

/* Set a style for the add details button */
.addbtn {
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
    color: solid black; 
    border: 2px solid #000000;
}

.resetbtn {
  position:relative;
left:20px;
top:20px;
background-repeat: no-repeat;
padding-right: 60px;
padding-left: 60px;
height: 50px;
text-align: center;
background-position: center;
background-color: #B6ACAC; 
    color: solid black; 
    border: 2px solid #000000;
}

.registerbtn:hover {
  opacity:1;
}

.resetbtn:hover {
  opacity:1;
}
.text1 {
height: 22px;
width: 230px;
}


body, html {
height: 100%;

}
.labels {
color: black;

}
.bg {
    /* The image used */
    margin-top:-40px;
    background-image: url("img/staffbg.jpg");
  
    /* Full height */
    height: 150%;
    /* Center and scale the image nicely */
    
    background-repeat:repeat;
    background-size: cover;
    }

</style>
</head>

<body>
<div class="bg">

<form action="vehicle.do" name="myForm">
  <div class="container">
    <h1>Vehicle Details</h1>
    <p>Please fill this form to add vehicle details</p>
    <hr>
     <div class="formContainer">
    <table>
    <col width="130">
    <col width="300">
     <tr>
    <td>
    <label class="labels" for="vehicleId"><b>Vehicle Id:</b></label>
    <br>
    <br>
    </td>
     <td>
<input id="company" class= "text1" type="text" placeholder="Enter Vehicle Id" name="vehicleId" required> 
 <br>
    <br>
   </td>
    </tr>
    <tr>
    <td>
    <label class="labels" for="companyName"><b>Company Name:</b></label>
    <br>
    <br>
    </td>
     <td>
<input id="company" class= "text1" type="text" placeholder="Enter Company Name" name="companyName" required> 
 <br>
    <br>
   </td>
    </tr>
   
    
    <tr>
    <td>
    <label class="labels" for="vehicleModel"><b>Vehicle Model:</b></label>
     <br>
    <br>
    </td>
    <td>
	<input id="model" class= "text1" type="text" placeholder="Enter Vehicle Model" name="vehicleModel" required>
	 <br>
    <br>
	</td>
    </tr>
    
     <tr>
    <td>
    <label class="labels" for="fuelType"><b>Fuel Type:</b></label>
     <br>
    <br>
    </td>
    <td>
    <input id="fuel" class= "text1" type="text" placeholder="Enter Fuel Type" name="fuelType" required>
     <br>
    <br>
	</td>
    </tr>
    
    
    
    <tr>
    <td>
    <label class="labels" for="Price"><b>Price:</b></label>
     <br>
    <br>
    </td>
    <td>
    <input id="price" class= "text1" type="number" placeholder="Enter Price" name="Price" required>
     <br>
    <br>
	</td>
    </tr>
    
    
     <tr>
    <td>
    <label class="labels" for="insurancePremiumAmount"><b>Insurance Premium Amount:</b></label>
     <br>
    <br>
    </td>
    <td>
    <input id="premium" class= "text1" type="number" placeholder="Enter Insurance Premium Amount" name="insurancePremiumAmount" required>
	 <br>
    <br>
	</td>
    </tr>
    </table>
   </div>
    
	<br>
	<br>
	<br>
	<div class="buttonContainer">
    <button onclick="myFunction()" class="addbtn">Add Details</button>
    <script>
	function myFunction() {
		
		 if((myForm.companyName.value == "") || (myForm.vehicleModel.value == "") ||(myForm.fuelType.value == "") || (myForm.Price.value == "") || (myForm.insurancePremiumAmount.value == "")) 
			  {
		  alert("Incomplete Details");
	    	return false;
			  }
	    else {
	    	alert("Vehicle Details Added");
	    	return true;
	    	
	         }
		
	}
</script>
  
    <button type="reset" class="resetbtn">Reset</button>   
  </div>
  </div>
  </form>  
  </div>
   </body>
	</html>
	
	
	
	