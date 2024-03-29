<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>TRAVELER - Free Travel Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<style>
h3 {
	text-align: center;
	margin-bottom: 50px;
}

.small-text {
	font-size: 10px;
}

.normal-text {
	font-size: 16px;
}
</style>


</head>

<body>
	<!-- Navbar Start -->
	<div class="container-fluid position-relative nav-bar p-0">
		<div class="container-lg position-relative p-0 px-lg-1"
			style="z-index: 9;">
			<nav
				class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-1 py-lg-0 pl-1 pl-lg-5">
				<a href="Home" class="navbar-brand">
					<h1 class="m-0 text-primary">
						<span class="text-dark">TRAVEL</span>ER
					</h1>
				</a>
			</nav>
		</div>
	</div>
	<br>
	<br>

	<!-- login session -->
	<div class="container">
		<div class="heading_container heading_center">
			<h3>Register Your Account</h3>

			<c:if test="${not empty errorMessage}">
				<div style="text-align: center;">
					<p style="color: red;">${errorMessage}</p>
				</div>
			</c:if>

			<div class="row justify-content-center">
				<div>
					<form action="Register" method="post" class="registerForm">
						<div class="form-group">
							<label for="userFirstName">First Name:</label> <input type="text"
								name="userFirstName" class="form-control" required>
						</div>

						<div class="form-group">
							<label for="userLastName">Last Name:</label> <input type="text"
								name="userLastName" class="form-control" required>
						</div>

						<div class="form-group">
							<label for="userEmail">Email:</label> <input type="email"
								name="userEmail" class="form-control" required>
						</div>

						<div class="form-group">
							<label for="userName">Username:</label> <input type="text"
								name="userName" class="form-control" required>
						</div>

						<div class="form-group">
							<label for="userPass">Password:</label> <input type="password"
								name="userPass" class="form-control" required>
						</div>

						<div class="form-group">
							<button class="registerBtn" type="submit">
								<i class="fa fa-user" aria-hidden="true"></i> Register Now
							</button>
						</div>
					</form>
					<span>Already had an account? Log in <a href="login.jsp">here</a></span>
				</div>
			</div>
		</div>
	</div>
	<!-- end login session -->
</html>