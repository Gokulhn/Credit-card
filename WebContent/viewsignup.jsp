<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<style>
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
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

</style>
</head>
<body>
	<table>
		<tr>
			<th>User Name</th>
			<th>Mobile Number</th>
			<th>Mail ID</th>
		</tr>
		<c:forEach items="${list}" var="lis">
			<tr>
				<td>${lis.name}</td>
				<td>${lis.mobnum}</td>
				<td>${lis.mailid}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="manager.jsp">
<button class="button button2">BACK</button>
</a>
	
</body>
</html>