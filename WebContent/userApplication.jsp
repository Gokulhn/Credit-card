<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<style>
.button {
	display: inline-block;
	padding: 20px;
	width: 500px;
	font-size: 24px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: #4CAF50;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px #999;
}

.button:hover {
	background-color: #3e8e41
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}

.dropbtn {
	background-color: #3498DB;
	color: white;
	padding: 35px;
  width: 500px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
	background-color:#67067f;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	overflow: auto;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 20px;
	width: 350px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	background-color: #ddd;
}

.show {
	display: block;
}
</style>
<meta charset="ISO-8859-1">
<title>Welcome to User Application</title>
</head>
<body background="user.jpg">

<%
response.setHeader("Cache-Control", "no-cache , no-store , must-revalidate");
response.setHeader("Progma", "no-cache");
response.setHeader("Expries", "0");
if(session.getAttribute("uid")==null){
	response.sendRedirect("userLogin.html");
}
%>

	<center>
		<h1 style="color: #5b0a70;">HELLO APPLICANT</h1>
	</center>

	<h1 style="color: white;">
		<%
			out.println("WELCOME USER : " + (String) session.getAttribute("uname").toString().toUpperCase());
		%>
	</h1>
	<h1 style="color: white;">
		<%
			out.println("USER ID :- " + (String) session.getAttribute("uid"));
		%>
	</h1>

	<div class="dropdown">
		<button onclick="myFunction()" class="dropbtn">MY ACCOUNT</button>
		<br> <br>
		<div id="myDropdown" class="dropdown-content">
			<a href="#home">1 -> Profile</a> <a href="updatepass.jsp">2 -> Change
				Password</a> <a href="logout">3 -> Logout</a>
		</div>
	</div>

	<script>
		/* When the user clicks on the button, 
		 toggle between hiding and showing the dropdown content */
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {
				var dropdowns = document
						.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>
	<br>
	<center><a href="isAppliedApplication">
		<button class="button">New Application</button>
	</a></center>
	<br>
	<br>

<center>
	<a href="confirmDelete.html">
		<button class="button">Delete My Application</button>
	</a></center>
	<br>
	<br>
<center>
	<a href="Application.jsp">
		<button class="button">Update Application</button>
	</a></center>
	<br>
	<br>

</body>
</html>