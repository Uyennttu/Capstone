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
	font-size: 16px; /* Adjust the size as needed */
}
</style>
</head>

<body>
	<jsp:include page="header-section.jsp"></jsp:include>
	
	<!-- Packages Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">

				<h1>${tour.name}</h1>
			</div>
			<div class="row">

				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="package-item bg-white mb-2">

						<div
							class="new position-absolute top-0 start-0 translate-middle bg-primary text-white px-2 py-1">
							<span>Best Seller</span>
						</div>
						<img class="img-fluid" src="img/${tour.imgName}" alt="">
						<div class="p-4">
							<div class="d-flex justify-content-between mb-3">
								<small class="m-0"><i
									class="fa fa-map-marker-alt text-primary mr-2"></i>${tour.city}</small>

							</div>
							<a class="h6 text-decoration-none" href="">${tour.name}</a>
							<div class="border-top mt-4 pt-4">
								<div class="d-flex justify-content-between">
									<h6 class="m-0">
										<i class="fa fa-star text-primary mr-2"></i>${tour.rating} <small>(${tour.numOfRate})</small>
									</h6>
									<h5 class="m-0">
										<span class="small-text">from</span> <span class="normal-text">$${tour.price}</span>
									</h5>
								</div>
							</div>
						</div>
						</div>
						<br>
						
						<!-- Booking -->
					<form action="Booking">
					<input type="text" value="RESERVE" name="action" hidden="true">
						<input type="text" value="${tour.id}" name="tourId" hidden="true">
					<input type="submit" value="Reserve">
					</form>
					
					<!-- End Booking -->
					
				</div>

				<!-- Packages End -->




				

<jsp:include page="footer-section.jsp"></jsp:include>
</body>

</html>