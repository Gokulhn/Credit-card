<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Sign up Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
</head>
<body>
<div class="container"><br>
        <h1 class="text-success text-center">User Signup Form  </h1><br>
        <div class="col-lg-8 m-auto d-block">
        
            <form method="GET" action="signup" onsubmit="return validation()" class="bg-light">
                <div class="from-group">

                    <label>UserName :</label>
                    <input type="text" name="userName" class="form-control" id="user" autocomplete="off">
                    <span id="username" class="text-danger font-weight-bold"></span>
                </div>

                <div class="from-group">
                    <label>Mobile Number :</label>
                    <input type="text" name="mobile" class="form-control" id="monum">
                    <span id="mono" class="text-danger font-weight-bold"></span>
                </div>
                
                <div class="from-group">
                    <label>Email ID :</label>
                    <input type="email" name="email" class="form-control" id="email">
                    <span id="eid" class="text-danger font-weight-bold"></span>
                </div>
                
                <div class="from-group">
                    <label>Password :</label>
                    <input type="password" name="pass" class="form-control" id="pass">
                    <span id="pasd" class="text-danger font-weight-bold"></span>
                </div>

                <div class="from-group">
                    <label>Confirm Password :</label>
                    <input type="password" name="cpass" class="form-control" id="cpass">
                    <span id="cpasd" class="text-danger font-weight-bold"></span>
                </div>

                <br>
                <div>
                    <input type="submit" name="submit" value="Submit" class="btn btn-success">
                    <input type="reset" name="reset" value=" Clear " class="btn btn-info">

                </div>


            </form>
            <br>
            <form action="home.jsp">
                <input type="submit" name="submit1" value="Cancel" class="btn btn-danger">
            </form>
        </div>
    </div>
    
    <script>function validation() {
        var user = document.getElementById('user').value;
        var pwd = document.getElementById('pass').value;
        var cpwd = document.getElementById('cpass').value;
        var monum = document.getElementById('monum').value;
        var email = document.getElementById('email').value;
        if (user == "") {
            document.getElementById('username').innerHTML = "**Enter username here";
            return false;
        }
        if ((user.length <= 3) || (user.lentgh >= 15)) {
            document.getElementById('username').innerHTML = "**Username Should between 4 and 15";
            return false;
        }
        if (!isNaN(user)) {
            document.getElementById('username').innerHTML = "**Username Should Characters only";
            return false;
        }
        if (pwd == "") {
            document.getElementById('pasd').innerHTML = "**Enter Password here";
            return false;
        }
        if ((pwd.length <= 5) || (user.lentgh >= 15)) {
            document.getElementById('pasd').innerHTML = "**Password Should more than 5 Characters";
            return false;
        }
            if (cpwd == "") {
                document.getElementById('cpasd').innerHTML = "**Enter Confirm Password here";
                return false;
            }
            if (pwd!=cpwd) {
                document.getElementById('cpasd').innerHTML = "**Password and Confirm Password are not matching ";
                return false;
            }
            if (monum == "") {
                document.getElementById('mono').innerHTML = "**Enter Mobile Number here";
                return false;
            }
            if (isNaN(monum)) {
                document.getElementById('mono').innerHTML = "**Mobile Number Should be Digits only";
                return false;
            }
            if (monum.length != 10) {
                document.getElementById('mono').innerHTML = "**Enter 10 Digits Mobile number only";
                return false;
            }
            if (email == "") {
                document.getElementById('eid').innerHTML = "**Enter E-Mail id here";
                return false;
            }
            if(email.indexOf('@')<=0){
                document.getElementById('eid').innerHTML = "**Enter valid E-Mail id";
                return false;
            }
        /* if(email.charAt(email.lenthg-3)!='.'){
                document.getElementById('eid').innerHTML = "**Enter valid E-Mail id";
                return false;
            }*/
        
    }</script>
</body>
</html>