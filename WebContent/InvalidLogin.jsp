<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.button {
	display: inline-block;
	border-radius: 4px;
	background-color: #f4511e;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 20px;
	width: 200px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}

.mrc{
    color:#004680;
    size: 5px;
    font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    border: 0px;
    padding-top: 25px;
    padding-left: 35%;
}
.grid{
padding-top: 20%;
}

.mrc1{
    color:#804900;
    size: 5px;
    font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    border: 0px;
    padding-top: 25px;
    padding-center: 25%;
}
.center {
    margin: auto;
    width: 60%;
    border: 2px solid #73AD21;
    padding: 5px;
  }
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Credit Card Approval</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="home.jsp">Home</a></li>

			</ul>

		</div>
	</nav>
	<div class="mrc1">
		<br> <br>
		<center>
			<div class="center">
				<h1>Login Failed</h1>
				<h1>Please login again...</h1>

			</div>
		</center>
		<br>
		<center>
			<button class="button">
				<a href="home.jsp">Return to home</a>
			</button>
		</center>


	</div>

</body>
</html>