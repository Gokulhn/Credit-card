<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Application</title>

<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	color: white;
	background-color: black;
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
</style>

</head>
<body>
	<h2>Applied Application</h2>
	<table>
		<tr>
			<th>Application ID</th>
			<th>User ID</th>
			<th>First Name</th>
			<th>Account Number</th>
		</tr>
		<c:forEach items="${data}" var="d">
			<tr>
				<td>${d.aid}</td>
				<td>${d.uid}</td>
				<td>${d.fname}</td>
				<td>${d.acc}</td>

				<td><button class="button button3">
						<a href="viewFullApp?uid=${d.uid}">View Full Application</a>
					</button></td>
			</tr>
		</c:forEach>
	</table>
	<a href="manager.jsp">
<button class="button button1">BACK</button>
</a>

</body>
</html>