 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><meta charset="ISO-8859-1">
<title>Customer Queries</title>	
<style>
.container {
padding-left: 250px;
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
<div style="text-align:center"> <h1>Customer Queries</h1></div>
<div class= "container">
<a href="StaffDashboard.do"><button class="profile">Home</button></a>
<a href="StaffProfile.jsp"><button class="profile">Profile</button></a>
<a href="getClaimsDetails.do"><button class="profile">Customer Queries</button></a>
<a href="getQueriesDetails.do"><button class="profile">Customer Queries</button></a>
<a href="getUserDetails.do"><button class="profile">Customer Details</button></a>
<a href="staffLogout.do"><button class="profile">Logout</button></a>
</div>
<br>
<br>
<br>
<hr>
 <table align="center">
<tr>
<th>Query Id</th>
<th>Customer Name</th>
<th>Contact No</th>
 <th>Email Id</th>
<th>Message</th>
<th></th> 
</tr>
<c:forEach items="${queryList}" var="query">
<c:if test="${query.getStatus()=='in process'}">
 <tr>
	<td><c:out value="${query.getQueryId()}"/></td>
	<td><c:out value="${query.getName()}"/></td>
	<td><c:out value="${query.getPhoneno()}"/></td>
	<td><c:out value="${query.getEmailid()}"/></td>
	<td><c:out value="${query.getMesaage()}"/></td>
 <td>
 <form action="issueQueryTicketForm.do" method="post">
<input type = "hidden" name="queryId" value="${query.getQueryId()}"/>
<input type = "submit" value="Issue Ticket"/>
</form>
</td>
</tr>
</c:if>
</c:forEach> 
</table>
</div>
</body>
</html>