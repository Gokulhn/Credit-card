
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">APPLICATION FOR CREDIT CARD</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">About us</a></li>
			<li><a href="#">Contact us</a></li>

		</ul>

		<ul class="nav navbar-nav navbar-right">

			<li><a href="userApplication.jsp"> <span
					class="glyphicon glyphicon-menu-left"></span> Back
			</a></li>
		</ul>
		</ul>
	</div>
</nav>

<link rel="stylesheet" type="text/css" href="file.css">
</head>

<body>
	<h1 class="text-success text-center">Application for Credit Card</h1>
	<br>

	<form action="userApplication" method="post" onsubmit="return validation()" class="bg-light">

		<h2>Account Number :</h2>
		<h3>
			<input type="text" placeholder="Account number" name="acc"
				id="accnum" autocomplete="off"> <span id="username"
				class="text-danger font-weight-bold"></span>
		</h3>

		<h2>First name :</h2>
		<h3>
			<input type="text" placeholder="first name" name="first" required>
		</h3>

		<h2>Last name :</h2>
		<h3>
			<input type="text" placeholder="last name" name="last">
		</h3>

		<h2>Your name, As you would like to have on Card :</h2>
		<h3>
			<input type="text" placeholder="on card name" name="oncardname"
				required>
		</h3>

		<h2>Mother's name :</h2>
		<h3>
			<input type="text" placeholder="Mother name" name="mothername"
				required>
		</h3>

		<h2>Father's name :</h2>
		<h3>
			<input type="text" placeholder="Father name" name="fathername"
				required>
		</h3>

		<h2>Spouse name (optional) :</h2>
		<h3>
			<input type="text" placeholder="Spouse name" name="Spousename"
				autocomplete="off">
		</h3>
		
		<h2>Annual Income (in Rs):</h2>
		<h3>
			<input type="number" placeholder="Annual income" name="income"
				autocomplete="off" >
		</h3>

		<h2>Date of birth :</h2>
		<h3>
			<input type="date" name="bday">
		</h3>
		<h2>Gender :</h2>
		<h3>
			<input type="radio" name="gender" id="male"><label
				for="male"> Male</label><br> <input type="radio" name="gender"
				id="female"> <label for="male"> Female</label><br> <input
				type="radio" name="gender" id="other"><label for="male">
				Other</label>
		</h3>
		<br>

		<h2>Marital Status :</h2>
		<h3>
			<input type="radio" name="status" value="Single"> <label
				for="male"> Single</label> <br> <input type="radio"
				name="status" value="Married"><label for="male">
				Married</label>
		</h3>
		<br>
		<h2>Nationality :</h2>
		<h3>
			<input type="radio" name="nation" value="Indian"><label
				for="male"> Indian </label><br> <input type="radio"
				name="nation" value="Nri"><label for="male"> Non
				Resident Indian</label>
		</h3>
		<br>
		<h2>Education Status :</h2>
		<h3>
			<input type="radio" name="education" value="Graduate"><label
				for="male"> Graduate </label><br> <input type="radio"
				name="education" value="Post"><label for="male">
				Post Graduate </label><br> <input type="radio" name="education"
				value="under"><label for="male"> Under Graduate</label>
		</h3>
		<br>
		<h2>PAN no :</h2>
		<h3>
			<input type="text" placeholder="Pan number" name="panNum" required>
		</h3>

		<h2>Adhar no :</h2>
		<h3>
			<input type="text" placeholder="Addar number" name="Addar" required>
		</h3>
		<h2>Your Permanent Address :</h2>
		<h3>
			<input type="textbox" placeholder="Address" name="address" required>
		</h3>
		
		<h2>Your Mobile number :</h2>
		<h3>
			<input type="number" placeholder="mobile number" name="mobnum"
				required>
		</h3>
		
		<h2>Your Designation :</h2>
		<h3>
			<input type="textbox" placeholder="Designation" name="disg" >
		</h3>
		
		<h2>Employement Status :</h2>
		<h3>
			<input type="radio" name="emp" value="business"> <label
				for="male"> Business</label> <br>
				 <input type="radio"name="emp" value="pro"><label for="male"> Professional</label><br>
				<input type="radio" name="emp" value="self"> <label
				for="male"> Self Employed</label> <br>
		</h3>
		
		
		<h2>Your Mail ID :</h2>
		<h3>
			<input type="text" placeholder="mail Id" name="mailId" required>
		</h3>
		
		
		
		
		<input type="submit" value="Submit" id="button" ><br> <br>
		
		
		<input type="reset" name="reset" value=" Clear " class="btn btn-danger" >
	</form>
	
	<form action="userApplication.jsp">
                <input type="submit" name="submit1" value="Cancel" class="btn btn-danger">
            </form>
	
	<script>
		function validation() {
			var accnumber = document.getElementById('accnum').value;
			if (accnumber == "") {
				document.getElementById('accnum').innerHTML = "**Enter Account Number here";
				return false;
			}
			if (isNaN(accnumber)) {
				document.getElementById('accnum').innerHTML = "**Account Number Should be Digits only";
				return false;
			}
			if (accnumber.length != 16) {
				document.getElementById('accnum').innerHTML = "**Enter 16 Digits Account number only";
				return false;
			}
		}
	</script>


</body>
</html>