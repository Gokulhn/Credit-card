<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>
  body{
	    marin:0;
	}
	h1{
	    margin:0;
	    padding: 1em 0;
	}
	p{
	    margin:0;
	    padding: 1em 0;
	}
	#section-a{
	    padding: 2em;
	    color: #D32323;
	}
	#section-a:first-child {
	    background:#2690d4;
	}
	#main-footer{
	    padding: 1em;
	    background: #000;
	    color: white;
	    text-align: center;
	}
	.contact{
	    margin:0;
	    font-size: 1.4em;
	    padding: 0px;
	}
	.arrow-down{
	    width: 100%;
	    margin: 0 auto;
	    text-align: center;
	    
	    
	}
	.arrow-down::after{
	    content: "";
	    width: 20px;
	    height: 20px;
	    margin:  auto;
	    position: absolute;
	    top: 0;
	    right: 0;
	    left: 0;
	    bottom: -80%;
	    border-right: 4px solid blue;
	    border-bottom: 4px solid blue;
	    transform: rotate(45deg);
	    -webkit-transform: rotate(45deg);
	    -webkit-animation: 2s arrow infinite ease;
	    animation: 2s arrow infinite ease;
	}
	@-webkit-keyframes arrow{
	    0%,100% {
	        top: 50px;
	    }
	    50%{
	        top: 80px;
	    }
	}
	@keyframes arrow{
	    0%,100% {
	        top: 50px;
	    }
	    50%{
	        top: 80px;
	    }
	}
	.welcom{
	    position: absolute;
	    text-align: center;
	    float: midle;
	    margin: 50px 50px 0px 0px; 
	    top: 20%;
	    left: 25%;
	    right: 25%;
	    font-size:50px;
	}
	.about{
	    background-color: rgb(255, 255, 255);
	}
	 body {
	  
	      font-family: Arial, Helvetica, sans-serif;
	      font-size: 20px;
	    }
	    #myBtn {
	      display: none;
	      position: fixed;
	      bottom: 20px;
	      right: 30px;
	      z-index: 99;
	      font-size: 18px;
	      border: none;
	      outline: none;
	      background-color: red;
	      color: white;
	      cursor: pointer;
	      padding: 15px;
	      border-radius: 4px;
	    }
	    #myBtn:hover {
	      background-color: #555;
	    }
  </style>
<title>Credit Card Application HOME</title>
</head>

<body>
<form action="login.jsp">

    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#section-a">Credit Card Application System </a>
        </div>
        <ul class="nav navbar-nav">
          <li class="active"><a href="home.jsp">Home</a></li>
          <li><a href="#section-a">About </a></li>
          <li><a href="#section-b">Contact us</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="userLogin.html"><span class="glyphicon glyphicon-log-in"></span> User Login</a></li>
           <li><a href="managerlogin.html"><span class="glyphicon glyphicon-log-in"></span> Manager</a></li>
        </ul>
      </div>
    </nav>
  </form>






 <img src="premium-credit-cards.jpg" alt="logo" width="40%" height:auto>
<font Color="green" size="10px" face="arial">Credit Card Approval System</font>
  <a href="#footer">
    <div class="arrow-down"> </div>
  </a>

  <section id="section-a" class="about">
    <div>
      <font Color="green" size="15px" face="arial">About Project</font>
      <p>
        <font color="black" size="5px"><strong>Introduction:-</strong></font>
        <br>
        <font color="black" size="4px">Credit cards are issued by banks after the consumer opens the bank account and requested for the card. 
        The credit card is having their personal identification number (PIN) for payment by signing a receipt with card details electronic verification system allow to verify the credit card validity and customer should maintain sufficient amount of credit in his account then only he can have accessing permissions.
        The main objective of the credit card approval system to manage the details of limits, reports, documents, limits.
        The project is totally built at administrative end thus only the administrator is guaranteed the access.
        Credit card processing is very efficient when compared to other cards.<br><br>

          <font color="black" size="5px"><strong>Purpose:-</strong></font>
          <br> The main objective of the credit card approval system to manage the details of limits, reports, documents, limits.
          The project is totally built at administrative end thus only the administrator is guaranteed the access.
           Credit card processing is very efficient when compared to other cards.
           Credit Card Approval System is developed to record the details of various activities of the user. This Credit Card Approval is used to overcome the entire problem which they are facing currently, 
           and making complete atomization of manual system to computerized system.<br><br>
          <font color="black" size="5px"><strong>Scope:-</strong></font>
          <br> The scope of the project is the system on which the software is installed, i.e. the project is developed as
          a desktop application, and it will work for a particular institute. But later on the project can be modified to
          operate it online.<br><br>
      </p>
      </font>
    </div>
  </section>

  <br>
  <br>
  <br>
  <section class="grid">
    <div class="box">
      <h3 class="content-title">Contact Us</h3>
      <pre class="contact">
         Nagarjuna College Of Engineering & Technology,
         Mudugurki, Venkatagiri Kote Post, Devanhalli, Bangalore- 562164
         080-6746-2700,701,702
         info@ncetmail.com
          </pre>
    </div>
    <div id="section-b"></div>

  </section>



  <footer id="footer"class="grid">
    <div>Credit Card Approval System</div>
    <div>&copy;NCET</div>

  </footer>
 
  </head>

  <body>

    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>


    <script>
      window.onscroll = function () { scrollFunction() };
      function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }
      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>


</body>
</html>
