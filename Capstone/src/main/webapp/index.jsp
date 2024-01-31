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
	<jsp:include page="header-section.jsp"></jsp:include>

	<!-- Carousel Start -->
	<div class="container-fluid p-0">
		<div id="header-carousel" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100" src="img/carousel-1.jpg" alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-white text-uppercase mb-md-3">Tours & Travel</h4>
							<h1 class="display-3 text-white mb-md-4">Let's Discover The
								World Together</h1>
							<a href="Home?action=SHOW_ALL_TOURS"
								class="btn btn-primary py-md-3 px-md-5 mt-2">View All Tours</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="w-100" src="img/carousel-2.jpg" alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-white text-uppercase mb-md-3">Tours & Travel</h4>
							<h1 class="display-3 text-white mb-md-4">Discover Amazing
								Places With Us</h1>
							<a href="Home?action=SHOW_ALL_TOURS"
								class="btn btn-primary py-md-3 px-md-5 mt-2">View All Tours</a>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#header-carousel"
				data-slide="prev">
				<div class="btn btn-dark" style="width: 45px; height: 45px;">
					<span class="carousel-control-prev-icon mb-n2"></span>
				</div>
			</a> <a class="carousel-control-next" href="#header-carousel"
				data-slide="next">
				<div class="btn btn-dark" style="width: 45px; height: 45px;">
					<span class="carousel-control-next-icon mb-n2"></span>
				</div>
			</a>
		</div>
	</div>
	<!-- Carousel End -->


	<!-- Booking Start -->
	<div class="container-fluid booking mt-5 pb-5">
		<div class="container pb-5">
			<div class="bg-light shadow" style="padding: 30px;">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-6">
								<div class="mb-3 mb-md-0">
									<form action="Home?action=SEARCH">
										<input type="text" name="action" hidden value="SEARCH">
										<input class="custom-select px-1" style="height: 47px;"
											type="text" name="searchValue"
											placeholder="Search for a place or activity">
									</form>
								</div>
							</div>
							<div class="col-md-6">
								<div class="mb-3 mb-md-0">
									<div class="date" id="date1" data-target-input="nearest">
										<input type="text"
											class="form-control p-4 datetimepicker-input"
											placeholder="When?" data-target="#date1"
											data-toggle="datetimepicker" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="d-flex">
						<input class="btn btn-primary btn-block" type="submit"
							value="Submit" style="height: 47px; margin-top: -2px;">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Booking End -->



	<!-- Feature Start -->
	<h3>Why book with Traveler?</h3>
	<div class="container-fluid pb-5">
		<div class="container pb-5">
			<div class="row">
				<div class="col-md-4">
					<div class="d-flex mb-4 mb-lg-0">
						<div
							class="d-flex flex-shrink-0 align-items-center justify-content-center bg-primary mr-3"
							style="height: 100px; width: 100px;">
							<i class="fa fa-2x fa-money-check-alt text-white"></i>
						</div>
						<div class="d-flex flex-column">
							<h5 class="">Competitive Pricing</h5>
							<p class="m-0">Best value experiences with a price guarantee.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="d-flex mb-4 mb-lg-0">
						<div
							class="d-flex flex-shrink-0 align-items-center justify-content-center bg-primary mr-3"
							style="height: 100px; width: 100px;">
							<i class="fa fa-2x fa-award text-white"></i>
						</div>
						<div class="d-flex flex-column">
							<h5 class="">Best Services</h5>
							<p class="m-0">24/7 of support via phone or live chat.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="d-flex mb-4 mb-lg-0">
						<div
							class="d-flex flex-shrink-0 align-items-center justify-content-center bg-primary mr-3"
							style="height: 100px; width: 100px;">
							<i class="fa fa-2x fa-globe text-white"></i>
						</div>
						<div class="d-flex flex-column">
							<h5 class="">Trusted reviews</h5>
							<p class="m-0">4.3 stars from 240,000+ Worldwide reviews.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Feature End -->

	<!-- Packages Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">
				<h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Tours</h6>
				<h1>Book Amazing Tours</h1>
			</div>
			<div class="row">
				<c:forEach items="${tours}" var="tour">
					<div class="col-sm-6 col-md-4 col-lg-3">
						<div class="package-item bg-white mb-2">
							<c:if test="${tour.bestSeller}">
								<div
									class="new position-absolute top-0 start-0 translate-middle bg-primary text-white px-2 py-1">
									<span>Best Seller</span>
								</div>
							</c:if>
							<img class="img-fluid" src="img/${tour.imgName}" alt="">
							<div class="p-4">
								<div class="d-flex justify-content-between mb-3">
									<small class="m-0"><i
										class="fa fa-map-marker-alt text-primary mr-2"></i>${tour.city}</small>
								</div>
								<a class="h6 text-decoration-none" href="Tour?tourId=${tour.id}">${tour.name}</a>
								<div class="border-top mt-4 pt-4">
									<div class="d-flex justify-content-between">
										<h6 class="m-0">
											<i class="fa fa-star text-primary mr-2"></i>${tour.rating} <small>(${tour.numOfRate})</small>
										</h6>
										<h5 class="m-0">
											<span class="small-text">from</span> <span
												class="normal-text">$${tour.price}</span>
										</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<c:if test="${not empty searchResultMessage}">
				<div style="text-align: center;">
					<p style="color: red;">${searchResultMessage}</p>
				</div>
			</c:if>
		</div>
	</div>


	<!-- Packages End -->

	<!-- Destination Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">
				<h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Destination</h6>
				<h1>Explore Top Destination</h1>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid" src="img/destination-1.jpg" alt=""> <a
							class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">United States</h5> <span>100 Cities</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid" src="img/destination-2.jpg" alt=""> <a
							class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">United Kingdom</h5> <span>100
								Cities</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid" src="img/destination-3.jpg" alt=""> <a
							class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">Australia</h5> <span>100 Cities</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid" src="img/destination-4.jpg" alt=""> <a
							class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">India</h5> <span>100 Cities</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid" src="img/destination-5.jpg" alt=""> <a
							class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">South Africa</h5> <span>100 Cities</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid" src="img/destination-6.jpg" alt=""> <a
							class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">Indonesia</h5> <span>100 Cities</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Destination Start -->

	<!-- Service Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">
				<h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Services</h6>
				<h1>Tours & Travel Services</h1>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="service-item bg-white text-center mb-2 py-5 px-4">
						<i class="fa fa-2x fa-route mx-auto mb-4"></i>
						<h5 class="mb-2">Travel Guide</h5>
						<p class="m-0">Justo sit justo eos amet tempor amet clita amet
							ipsum eos elitr. Amet lorem est amet labore</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="service-item bg-white text-center mb-2 py-5 px-4">
						<i class="fa fa-2x fa-ticket-alt mx-auto mb-4"></i>
						<h5 class="mb-2">Ticket Booking</h5>
						<p class="m-0">Justo sit justo eos amet tempor amet clita amet
							ipsum eos elitr. Amet lorem est amet labore</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="service-item bg-white text-center mb-2 py-5 px-4">
						<i class="fa fa-2x fa-hotel mx-auto mb-4"></i>
						<h5 class="mb-2">Hotel Booking</h5>
						<p class="m-0">Justo sit justo eos amet tempor amet clita amet
							ipsum eos elitr. Amet lorem est amet labore</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Service End -->

	<!-- Team Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">
				<h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Guides</h6>
				<h1>Our Travel Guides</h1>
			</div>
			<div class="row">
				<c:forEach items="${tourGuideDetails}" var="tourGuide">
					<div class="col-lg-3 col-md-4 col-sm-6 pb-2">
						<div class="team-item bg-white mb-4">
							<div class="team-img position-relative overflow-hidden">
								<img class="img-fluid w-100" src="img/${tourGuide.imgName}"
									alt="">
							</div>
							<div class="text-center py-4">
								<h5 class="text-truncate">${tourGuide.guideName}</h5>
								<p class="m-0">${tourGuide.location}</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</div>
	<!-- Team End -->


	<!-- Testimonial Start -->
	<div class="container-fluid py-5">
		<div class="container py-5">
			<div class="text-center mb-3 pb-3">
				<h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Testimonial</h6>
				<h1>What Say Our Clients</h1>
			</div>
			<div class="owl-carousel testimonial-carousel">
				<c:forEach items="${testimonialDetails}" var="testimonial">
					<div class="text-center">
						<img class="img-fluid mx-auto" src="img/${testimonial.imgName}"
							style="width: 100px; height: 100px;">
						<div class="testimonial-text bg-white p-4 mt-n5">
							<p class="mt-5">${testimonial.feedback}</p>
							<h5 class="text-truncate">${testimonial.firstName}</h5>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Testimonial End -->

	<jsp:include page="footer-section.jsp"></jsp:include>
</body>

</html>