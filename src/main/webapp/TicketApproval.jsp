 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ page import="bean.IssuedTkt" %>
<%@ page import="java.util.*" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
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
</style>
<script type="text/javascript">
    function getTicketId(){
        var id = document.getElementById('TicketId').value;
        alert(id);
    }
    
</script>
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
<div align="center"><h2>TICKET APPROVAL</h2></div>

<div class="container">

 <table id="data_table" border=1 style="color:black">
<tr>
<th>Ticket Id</th>
<th>Email</th>
 <th>Ticket Type</th>
<th>Description</th>
<th>Staff ID</th> 
</tr>

<c:forEach items="${ticketList}" var="ticket">
 <tr id="${ticket.getTktId()}">
	<td id="Ti"><c:out value="${ticket.getTktId()}"/></td>
	<td id="customerEmail"><c:out value="${ticket.getClaim().getPolicy().getUser().getEmailid()}"/></td>
	<td id="ticketType"><c:out value="${ticket.getType()}"/></td>
	<td id="ticketDesc"><c:out value="${ticket.getDescrp()}"/></td>
	<td id="staffId"><c:out value="${ticket.getStaff().getEmailid()}"/></td>
 <td>
 <form action="ticketApprove.do">
<input type = "hidden" name="ticketID" value="${ticket.getTktId()}"/>
<input type = "submit" value="Approve"/>
</form>
</td>
</tr>
</c:forEach> 
</table>
</div>
</div>
</body>
</html>