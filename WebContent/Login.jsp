<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900|Oswald:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
   <script>  
function validateForm(){  
var name=document.myform.name.value;  
var password=document.myform.password.value;  
  
if (name==null || name==""){  
	 document.getElementById("numloc").innerHTML="Name can't be blank";  
	return false;  
}else if(password.length<6){ 
	 document.getElementById("numloc1").innerHTML="Password must be at least 6 characters long.";
  return false;  
  }  
}
</script>
</head>
<body Style="background-image:url('images/4C2A15A8-A943-5193-0921-6D436DC4001C_cr(2).jpg')">

<br>
<center>
<h1><strong><b>LOGIN FORM</b></strong></h1>
</center>
<br>
 <form name="myform" action="LoginController" method="post" onsubmit="return validateForm()">
<div class="container">
  <div class="row">
    <div class="col-3">
    </div>
    <div class="col-6">
   
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">USERNAME:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" placeholder="Username" name="name"><span id="numloc" style="color:red"></span>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">PASSWORD</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password"><span id="numloc1"style="color:red"></span>
    </div>
  </div>

 <div class="form-group row">
    <div class="col-sm-4">
      
    </div>

<div class="col-sm-3">
      <button type="submit" class="btn btn-primary">Sign in</button>
    </div>

<div class="col-sm-4">
<a href='Registration.jsp'
      class="btn btn-danger">Registration
      </a> 
    </div>
  </div>
  
  </div>
    </div>
  </div>
</form>
<script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>

  
  <script src="js/main.js"></script>

</body>
</html>