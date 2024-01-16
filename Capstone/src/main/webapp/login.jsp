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
	<!-- Topbar Start -->
	<div class="container-fluid bg-light pt-3 d-none d-lg-block">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
					<div class="d-inline-flex align-items-center">
						<p>
							<i class="fa fa-envelope mr-2"></i>info@traveler.com
						</p>
						<p class="text-body px-3">|</p>
						<p>
							<i class="fa fa-phone-alt mr-2"></i>+61 345 6789
						</p>
					</div>
				</div>
				<div class="col-lg-6 text-center text-lg-right">
					<div class="d-inline-flex align-items-center">
						<a class="text-primary px-3" href=""> <i
							class="fab fa-facebook-f"></i>
						</a> <a class="text-primary px-3" href=""> <i
							class="fab fa-twitter"></i>
						</a> <a class="text-primary px-3" href=""> <i
							class="fab fa-linkedin-in"></i>
						</a> <a class="text-primary px-3" href=""> <i
							class="fab fa-instagram"></i>
						</a> <a class="text-primary pl-3" href=""> <i
							class="fab fa-youtube"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid position-relative nav-bar p-0">
		<div class="container-lg position-relative p-0 px-lg-1"
			style="z-index: 9;">
			<nav
				class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-1 py-lg-0 pl-1 pl-lg-5">
				<a href="" class="navbar-brand">
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
			<h3>Log in and get exploring</h3>

			<c:if test="${not empty errorMessage}">
				<div style="text-align: center;">
					<p style="color: red;">${errorMessage}</p>
				</div>
			</c:if>

			<div class="row justify-content-center">

				<div class="col-md-10 col-lg-3 px-1">

					<form action="Authentication">
						<input type="text" name="action" hidden value="LOG_IN"> <label
							for="username">Username:</label><br> <input type="text" id="username"
							name="username" placeholder="Enter your username"><br>
						<br> <label for="pwd">Password:</label><br> <input
							type="password" id="pwd" name="password"
							placeholder="Enter your password"><br> <br> <input
							type="submit" value="Submit">

					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end login session -->
</html>