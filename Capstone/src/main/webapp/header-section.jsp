<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<div class="container-lg position-relative p-0 px-lg-3"
		style="z-index: 9;">
		<nav
			class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-3 py-lg-0 pl-3 pl-lg-5">
			<a href="" class="navbar-brand">
				<h1 class="m-0 text-primary">
					<span class="text-dark">TRAVEL</span>ER
				</h1>
			</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between px-3"
				id="navbarCollapse">
				<div class="navbar-nav ml-auto py-0">
					<a href="Home" class="nav-item nav-link active">Home</a> <a
						href="service.jsp" class="nav-item nav-link">Services</a> 
						
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">Destinations</a>
						<div class="dropdown-menu border-0 rounded-0 m-0">
							<c:forEach items="${destinations}" var="destination">
								<a
									href="Home?action=SHOW_TOURS_BY_DESTINATION&destinationId=${destination.id}"
									class="dropdown-item">${destination.state}</a>
							</c:forEach>
						</div>
					</div>
					<c:if test="${empty sessionScope.customer}">
						<a href="login.jsp" class="nav-item nav-link">Login</a>
						<a href="register.jsp" class="nav-item nav-link">Register</a>
					</c:if>
					<c:if test="${not empty sessionScope.customer}">
						<a href="#" class="nav-item nav-link">${customer.username}</a>
						<a href="Authentication?action=LOG_OUT" class="nav-item nav-link">Logout</a>

					</c:if>
					<a href="package.jsp" class="nav-item nav-link">Reservation (${sessionScope.reservation.size()})</a>
				</div>
			</div>
		</nav>
	</div>
</div>
<!-- Navbar End -->