<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
<title>BlueTokai</title>

<!-- Common Css and Js -->
<%@include file="components/common_css_js.jsp"%>

</head>

<body>

	<section class="position-relative py-4 py-xl-5">

		<!-- Log In form-->
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-8 col-xl-6 text-center mx-auto">
					<h1>Log in</h1>
					<p class="w-lg-50">Welcome back!</p>
				</div>
			</div>
			<div class="row d-flex justify-content-center">
				<div class="col-md-3 col-xl-6">
					<div class="card mb-xl-5">
						<div class="card-body align-items-center">
							
							<%@ include file="components/admin_msg.jsp" %>
							
							<form class="text-center" method="post" action="AdminLoginServlet">
								<div class="form-floating mb-3">
									<input class="form-control" id="floatingUName" type="username"
										name="username" placeholder="Username" /> <label
										for="floatingUName">Username</label>

								</div>
								<div class="form-floating mb-3">
									<input class="form-control" id="floatingPW" type="password"
										name="password" placeholder="Password" /> <label
										for="floatingUName">Password</label>

								</div>
								<div class="form-floating mb-5">
									<input class="form-control" id="floatingKey" type="number"
										name="securitykey" placeholder="Security Key" /> <label
										for="floatingKey">Security Key</label>

								</div>
								<div class="mb-3">
									<input type="submit" class="btn btn-outline-dark d-block w-100">
								</div>
								<br>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		

		<!--Footer-->
		<%@include file="components/footer.jsp"%>

	</section>

	<!-- Bootstrap Bundle with Popper -->
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
