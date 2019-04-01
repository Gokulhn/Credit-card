<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager</title>
<link rel="text/css" href="style.css">
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
body {
   background-image: url("office1.jpg");
  background-color: #cccccc;
  padding:100px 100px 350px 100px;
  
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
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
h1 {
  margin: 1em 0 0.5em 0;
	color: #BB8FCE  ;
	font-weight: normal;
	font-family: 'Ultra', sans-serif;   
	font-size: 50px;
	line-height: 42px;
	text-transform: uppercase;
	text-shadow: 0 2px white, 0 3px #777;

}</style>
</head>
<body>
<center><h1>HELLO MANAGER</h1></center>
 
 <a href="ViewSignup">
<button class="button"  style="vertical-align:middle"><span>View all SignUp</span></button>
</a><br>
<br>

<a href=#>
<button class="button"  style="vertical-align:middle"><span>View All Application</span></button>
</a><br>
<br>

 <a href="home.jsp">
<button class="button"  style="vertical-align:middle"><span>Logout</span></button>
</a>

</body>
</html>