<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />

<!-- Common Css and Js -->
<%@include file="components/common_css_js.jsp"%>


<title>Enterprise | Blue Tokai</title>
</head>

<body>

	<!-- Navigation Bar -->
	<%@include file="components/navbar.jsp"%>

	<!--Corousel-->
	<div id="carouselBulkOrders" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/Enterprise/Bulk Orders.png" class="d-block w-100 h-25"
					alt="...">
			</div>
		</div>
	</div>

	<!--Form for Bulk Orders-->
	<br>
	<br>
	<h5 style="margin-left: 40px;">Special corporate discounts
		available for bulk merchandise purchase across all categories.</h5>
	<div class="container" style="margin-top: 50px;">
		<%@ include file="components/category_successful.jsp"%>
		<form class="row g-3" action="SaveToDBServlet" method="post">
			<input type="hidden" name="operation1" value="bulkorders">
			<div class="col-6">
				<label for="inputName" class="form-label">Name</label> <input
					type="text" name="bName" class="form-control" id="inputName">
			</div>
			<div class="col-6">
				<label for="inputEmail4" class="form-label">Email id</label> <input
					type="email" name="bEmail" class="form-control" id="inputEmail4"
					placeholder="id@gmail.com">
			</div>
			<div class="col-6">
				<label for="inputNumber" class="form-label">Contact Number</label> <input
					type="text" name="bContact" class="form-control" id="inputNumber">
			</div>
			<div class="col-8">
				<label for="inputAddress" class="form-label">Address</label>
				<textarea id="inputAddress" name="bAddress" class="form-control"
					name="message" rows="4">
            </textarea>
			</div>
			<div class="col-md-6">
				<label for="inputCity" class="form-label">City</label> <input
					type="text" name="bCity" class="form-control" id="inputCity">
			</div>
			<div class="col-md-5">
				<label for="inputZip" class="form-label">Zip</label> <input
					type="text" name="bZip" class="form-control" id="inputZip"
					placeholder="e.g - 411044">
			</div>
			<div class="col-12">
				<button type="submit" class="btn btn-dark">Submit</button>
			</div>
			<div class="col-12">
				<label class="form-check-label" for="awareUser"> - Once we
					receive your request, our representative will contact as soon as
					possible. </label>
			</div>
		</form>
		<br>
	</div>

	<!-- Modal -->
	<%@include file="components/cart_modal.jsp"%>
	<!--Footer-->
	<%@include file="components/footer.jsp"%>


	<!-- Bootstrap Bundle with Popper -->
	<script src="js/bootstrap.bundle.min.js">
		
	</script>
</body>
</html>