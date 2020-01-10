<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Registration Form</title>

<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,900|Oswald:300,400,700"
	rel="stylesheet">
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
	function validateForm() {
		var username = document.myform.username.value;
		var password = document.myform.password.value;
		var name = document.myform.name.value;
		var Address = document.myform.Address.value;
		var phone = document.myform.phone.value;
		var mail = document.myform.mail.value;
		var userroles = document.myform.userroles.value;
		if (username == null || username == "") {
			document.getElementById("numloc").innerHTML = "userName can't be blank";
			return false;
		} else if (password.length < 6) {
			document.getElementById("numloc1").innerHTML = "Password must be at least 6 characters long.";
			return false;
		}
		if (name == null || name == "") {
			document.getElementById("numloc2").innerHTML = "Name can't be blank";
			return false;
		}
		if (Address == null || Address == "") {
			document.getElementById("numloc3").innerHTML = "Address can't be blank";
			return false;
		}
		if (phone == null || phone == "") {
			document.getElementById("numloc4").innerHTML = "Address can't be blank";
			return false;
		}
		if (mail == null || mail == "") {
			document.getElementById("numloc5").innerHTML = "mail can't be blank";
			return false;
		}
		if (userroles == null || userroles == "") {
			document.getElementById("numloc6").innerHTML = "userroles can't be blank";
			return false;
		}
	}
</script>
</head>
<br>
<center>
	<h1>
		<strong>Registration FORM</strong>
	</h1>
</center>
<br>
<body style="background-image: url('images/Black-Accents.jpg')">
	<form action="Controller" method="post" name="myform"
		onclick="return validateForm()">

		<div class="container">
			<div class="row">

				<div class="col-3"></div>
				<div class="col-6">
					<!-- <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-2 col-form-label"><b>ID:</b></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputEmail3" placeholder="ID" name="id">
                        </div>
                    </div> -->
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label"><b>UserName:</b></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputEmail3"
								placeholder="UseName" name="username"><span id="numloc"
								style="color: red"></span>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label"><b>Password:</b>></label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword3"
								placeholder="Password" name="password"><span
								id="numloc1" style="color: red"></span>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label"><b>Name:</b></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputEmail3"
								placeholder="Name" name="name"><span id="numloc2"
								style="color: red"></span>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label"><b>Address:</b></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputEmail3"
								placeholder="Address" name="Address"><span id="numloc3"
								style="color: red"></span>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label"><b>Phone:</b></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputEmail3"
								placeholder="Phone" name="phone"><span id="numloc4"
								style="color: red"></span>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label"><b>Mail:</b></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputEmail3"
								placeholder="Mail" name="mail"><span id="numloc5"
								style="color: red"></span>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label"><b>UserRoles:</b></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputEmail3"
								placeholder="UserRoles" name="roles"><span id="numloc6"
								style="color: red"></span>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-4"></div>

						<div class="col-sm-3">
							<input type="reset" class="btn btn-primary">
						</div>
						<div class="col-sm-4">
							<input type="submit" class="btn btn-primary" value="Registration">
						</div>
						<div class="col-sm-3">
							<a href="Login.jsp" class="btn btn-primary">Back</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>

</html>