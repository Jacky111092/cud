<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Issue Ticket</title>
<style>
 {box-sizing: border-box}
 
.container {

    margin: auto;
    width: 60%;
    
    padding: 10px;
 }
h1 {
text-align: center;
color: black;
padding-top:20px; 
font-size: 60px;
}

p {
font-size: 30px;
text-align: center;
}
/* Full-width input fields */
input[type=text] {
  width: 50%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

body, html {
    height: 100%;
    margin: 0;
}


.bg {
    /* The image used */
    background-image: url("img/staffbg.jpg");
    
    /* Full height */
    height: 120%; 

    /* Center and scale the image nicely */
    
    background-repeat: no-repeat;
    background-size: cover;
    }
/* Overwrite default styles of hr */
hr {
  border: 1px solid black;
  margin-bottom: 25px;
}

/* Set a style for the add details button */
.issuebtn {
  padding: 14px 16px;
  margin: 8px 0;
  cursor: pointer;
  opacity: 0.9;
  width: 20%;
    background-color: white;
    color: black;
    border: 2px solid #555555;
    font-size: 20px;
}

.resetbtn {
  padding:  14px 16px;
  margin: 8px 0;
  cursor: pointer;
  opacity: 0.9;
  width: 20%;
  background-color: white;
    color: black;
    border: 2px solid #555555;
    font-size: 20px;
}

.registerbtn:hover {
  opacity:1;
}

.resetbtn:hover {
  opacity:1;
}

.buttonContainer {
	margin: auto;
    width: 100%;
    padding: 10px;
    padding-left: 200px;
}


</style>
</head>

<body>
<div class="bg" style= "margin-top:-40px">
  <div class="container">
    <br>
    <h1><b>Issue Ticket</b></h1>
    <hr>
    <form action="issueTicket.do" method="post">
    <table>
    <tr>
    <td>
    <label><b>ClaimId:</b></label>
    <br>
    </td>
    <td>
    <label>${claim.getClaimId()}</label>
    <br>
    </td>
    </tr>
    <tr>
    <td>
     <label><b>UserId:</b></label>
    <br>
    </td>
    <td>
    <label>${claim.getPolicy().getUser().getEmailid()}</label>
    </td>   
    </tr>
    <tr>
    <td>
    <label><b>Policy No:</b></label>
    <br>
    </td>
    <td>
            <label>${claim.getPolicy().getPolicyId()}</label>
    
    </td>    
    </tr>
  
  <tr>
  <td>
  <label for="staffID"><b>Description</b></label>
  <br>
  </td>
  <td>
    <textarea id="description" name="description" rows="8" cols="50" required></textarea>
  <br>
  </td>
  </tr>  
    </table>
   <br>
    <br>
   	<div class="buttonContainer">
	<button onclick="myFunction()" class="issuebtn"><b>Issue</b></button>
   <input type="hidden" value="${claim.getClaimId()}" name="claimId"/>
    <button type="reset" class="resetbtn"><b>Reset</b></button>   
  </div>
   </form>
  
  </div>
  </div>
    <script>
	function myFunction()
	{
		
		var t= document.getElementById("ticket").value;
		var d= document.getElementById("description").value;
		var s=document.getElementById("staffID").value;		
		var p = document.getElementById("emailID").value;
		var atpos = p.indexOf("@");
		var dotpos = p.indexOf(".");
		
		
		if((myForm.emailID.value == "") || (myForm.ticket.value == "") ||(myForm.description.value == "") || (myForm.staffID.value == "")) 
		  {
	  			alert("Incomplete Details");
  				return false; 
		  }
		else if((t!= ""|| d!= ""|| s!= ""||p!="")){
  				alert("Ticket Issued");
  			return false; 
  	
      		}
  		else {
		if(atpos<1 || dotpos<atpos+2 || dotpos+2>=p.length)
		{
			alert("Not a valid email address.");
			return false; 
		}
		
  		}
	}
	
</script>
  
    
   </body>
	</html>
	
	
	
	