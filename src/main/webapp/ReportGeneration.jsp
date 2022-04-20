
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="myprofile.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Details</title>
<style>
.container {
padding-left: 150px;
}
h2
{
color: black;
}
h1 {
color: black;
padding-top:40px; 
font-size: 60px;
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
table, td, th {
    border: 2px solid black;
    text-color: 1px solid black;
    text-align: center;
    align:center;
}

table {
    border-collapse: collapse;
    width: 90%;
      }

th {
    text-align: center;
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

.generatebtn {
position:relative;
left:20px;
top:20px;
background-repeat: no-repeat;
padding-right: 50px;
padding-left: 50px;
margin-left: 20px;
height: 50px;
text-align: center;
background-position: center;
background-color: #B6ACAC; 
    color: solid black; 
    border: 2px solid #000000;

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
<br>
<hr>
<div class="container">

<div style="text-align:center"> <h2>GENERATE REPORT</h2></div>

<form action="downloadPDF1.do">

<button class="generatebtn">Generate For All</button>
</form>
<br>
<br>
<br>


<table align="center""data_table" border=1 style="color:black">
<tr>
<th>Name</th>
<th>Email ID</th>
<th></th>
</tr>
<c:forEach items="${userList}" var="user"> 
<c:if test="${!user.isStatus()}">
 <tr>
	<td id="shh"><c:out value="${user.getName()}"/></td>
	<td id="customerEmail"><c:out value="${user.getEmailid()}"/></td>
	
 <td>
<form action="downloadPDF.do"> 
<input type = "hidden" name="emailid" value="${user.getEmailid()}"/>
<input type="submit" value="Download PDF Document"/>
</form>

</td>
</tr>
</c:if>
</c:forEach> 
</table>
</div>

</div>


</body>
</html>