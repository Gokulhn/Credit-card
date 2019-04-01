<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application</title>
</head>

<body>
	<center>
		<h1> Application for Credit Card </h1>
	</center>
	<form>
		First name :<br> <input type="text" placeholder="first name"
			name="first" required> <br>
			<br>
		 Last name :<br> <input
			type="text" placeholder="last name" name="last"> <br>
			<br>
		Your name, As you would like to have on Card :<br> <input
			type="text" placeholder="on card name" name="oncardname" required>
			<br>
		<br> Mother's name :<br> <input type="text"
			placeholder="Mother name" name="mothername" required> <br>
			<br>
		Father's name :<br> <input type="text" placeholder="Father name"
			name="fathername" required> <br>
			<br>
		Spouse name (optional) : <br> <input type="text" placeholder="Spouse name"
			name="Spousename" autocomplete="off" > <br>
			<br>
		Date of birth :<input type="date" name="bday"><br><br>
		Gender :<br> 
		<input type="radio" name="gender" value="male" > Male<br>
  		<input type="radio" name="gender" value="female"> Female<br>
  		<input type="radio" name="gender" value="other"> Other<br>
  		<br>
		Marital Status :<br>
		<input type="checkbox" name="status" value="Single" > Single <br>
 		<input type="checkbox" name="status" value="Married" > Married <br><br>
		Nationality :<br>
		<input type="checkbox" name="nation" value="Indian" > Indian <br>
 		<input type="checkbox" name="nation" value="Nri" > Non Resident Indian <br><br>
		Education Status :<br>
		<input type="checkbox" name="education" value="Graduate" > Graduate <br>
 		<input type="checkbox" name="education" value="Post" > Post Graduate <br>
 		<input type="checkbox" name="education" value="under" >Under Graduate <br><br>
 		PAN no :<br>
 		<input type="text" placeholder="Pan number" name="panNum" required> <br>
		<br>
		Addar no :<br>
		<input type="text" placeholder="Addar number" name="Addar" required> <br> <br>
		Your Permanent Address :<br>
		<input type ="textbox" placeholder ="Address" name="address" required> <br><br>
		Your Mobile number :<br>
		<input type ="number" placeholder ="mobile number" name="mobnum" required><br><br>
		Your Mail ID :<br>
		<input type ="text" placeholder ="mail Id" name="mailId" required><br><br>
		 <input type="submit" value="Submit">
			
	</form>


</body>
</html>