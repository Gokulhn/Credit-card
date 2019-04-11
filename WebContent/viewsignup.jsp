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

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 65%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

th {
	color: white;
	background-color: black;
}

tr:nth-child(even) {
	background-color: #dddddd;
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
	<table>
		<tr>
			<th>User Name</th>
			<th>Mobile Number</th>
			<th>Mail ID</th>
			<th>User ID</th>
		</tr>
		<c:forEach items="${list}" var="lis">
			<tr>
				<td>${lis.name}</td>
				<td>${lis.mobnum}</td>
				<td>${lis.mailid}</td>
				<td>${lis.uid}</td>
				<td><button class="button button3"><a href="deleteSignup?name=${lis.name}">Delete user</a> </button> </td>
			</tr>
		</c:forEach>
	</table>
	<a href="manager.jsp">
<button class="button button1">BACK</button>
</a>
	
</body>
</html>