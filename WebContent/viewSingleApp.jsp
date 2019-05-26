<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<style>
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

.button1 {
	background-color: white;
	color: black;
	border: 2px solid #4CAF50;
}

.button1:hover {
	background-color: #4CAF50;
	color: white;
}

.button3 {
	background-color: white;
	color: black;
	border: 2px solid #f44336;
}

.button3:hover {
	background-color: #f44336;
	color: white;
}
</style>
</head>
<body>
	<center><h2>Complete Application</h2></center>
	<table id="customers">
		<c:forEach items="${list}" var="lis">
			<tr>
				<th>First name</th>
				<td>${lis.fname}</td>
			</tr>
			<tr>
				<th>Mobile Number</th>
				<td>${lis.mob}</td>
			</tr>
			<tr>
				<th>Mail ID</th>
				<td>${lis.mail}</td>
			</tr>
			<tr>
				<th>User ID</th>
				<td>${lis.uid}</td>
			</tr>
			
			<tr>
				<th>Gender</th>
				<td>${lis.gender}</td>
			</tr>
			<tr>
				<th>Employee</th>
				<td>${lis.emp}</td>
			</tr>

			<tr>
				<th>Designation</th>
				<td>${lis.desig}</td>
			</tr>
			<tr>
				<th>Address</th>
				<td>${lis.address}</td>
			</tr>
			<tr>

				<th>Adhar Card num</th>
				<td>${lis.addar}</td>
			</tr>
			<tr>
				<th>Pan Card Number</th>
				<td>${lis.pan}</td>
			</tr>
			<tr>

				<th>Education Status</th>
				<td>${lis.education}</td>
			</tr>
			<tr>


				<th>Citizenshp</th>
				<td>${lis.citizen}</td>
			</tr>
			<tr>

				<th>Marital Status</th>
				<td>${lis.marital}</td>
			</tr>

			<tr>
				<th>DOB</th>
				<td>${lis.dob}</td>
			</tr>
			<tr>
				<th>Annual Income</th>
				<td>${lis.income}</td>
			</tr>
			<tr>
				<th>Spouse</th>
				<td>${lis.wife}</td>
			</tr>
			<tr>
				<th>Mother name</th>
				<td>${lis.mname}</td>
			</tr>

			<tr>
				<th>Father name</th>
				<td>${lis.dname}</td>
			</tr>

			<tr>
				<th>On Card Name</th>
				<td>${lis.cardname}</td>
			</tr>
			<tr>
				<th>Account number</th>
				<td>${lis.acc}</td>
			</tr>



		</c:forEach>
	</table>
	<a href="manager.jsp">
		<button class="button button1">BACK</button>
	</a>

</body>
</html>