<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout | BlueTokai</title>

<!-- Common Css and Js -->
<%@include file="components/common_css_js.jsp"%>

</head>
<body>

	<!-- Navigation Bar -->
	<%@ include file="components/navbar.jsp"%>

	<div class="container">
		<div class="row mt-3">
			<div class="col-md-6">
				<button class="btn btn-outline-dark text-center"
					style="margin-left: 180px"
					onclick="add_to_cart1(49, 'Kerehaklu Estate - Light', 580)">View
					Order Summary</button>
				<div class="card">
					<div class="card-body">
						<div class="cart-body mt-2"></div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3>Details for Order</h3>
						<br>
						<form action=#>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									value="saadbhaldar1212@gmail.com">
							</div>
							<br>
							<div class="form-group">
								<label for="exampleInputName" class="form-label">Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="Saad Bhaldar">
							</div>
							<br>
							<div class="form-group">
								<label for="exampleFormControlTextarea1" class="form-label">Full Resedential Address</label>
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3" required></textarea>
							</div>
							<br>
							<div class="form-group">
								<div class="form-check">
									<input class="form-check-input" type="checkbox"
										id="flexCheckCheckedDisabled" checked disabled> <label
										class="form-check-label" for="flexCheckCheckedDisabled">
										I hereby accept all the terms and conditions </label>
								</div>
							</div>
							<div class="container text-center mt-3">
								<a class="btn btn-outline-success" href="order_successful.jsp" type="button">Order Now</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<%@include file="components/cart_modal.jsp"%>

	<!--Footer-->
	<%@include file="components/footer.jsp"%>
</body>
</html>