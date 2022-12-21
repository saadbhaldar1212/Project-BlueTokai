<%@page import="com.bluetokai.Final_BlueTokai.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bluetokai.Final_BlueTokai.dao.ProductDao"%>
<%@page import="com.bluetokai.Final_BlueTokai.helper.FactoryProvider"%>
<%@page import="com.bluetokai.Final_BlueTokai.entities.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Dashboard | Blue Tokai</title>

<!-- Common Css and Js -->
<%@include file="components/common_css_js.jsp"%>

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<!-- Custom styles for this template -->
<link href="css/dashboard.css" rel="stylesheet">
</head>

<body>
<%

ProductDao pDao = new ProductDao(FactoryProvider.getFactory());
List<Product> plist = pDao.getAllProducts();

CategoryDao cDao = new CategoryDao(FactoryProvider.getFactory());
List<Category> clist = cDao.getCategories();

UserDao uDao = new UserDao(FactoryProvider.getFactory());
List<User> ulist = uDao.getAllUsers();

%>
	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3"
			href="admin_index.jsp">BlueTokai</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="navbar-nav">
			<div class="nav-item text-nowrap">
				<a class="nav-link px-3" href="admin_log_out.jsp">Log out</a>
			</div>
		</div>
	</header>

	<div class="container-fluid">
		<div class="row">
			<%@ include file="components/side_navbar.jsp"%>
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div class="container" style="padding-top: 60px;">
					<%@ include file="components/category_successful.jsp"%>
					<%@ include file="components/product_successful.jsp"%>
					<div class="row">
						<div class="col-md-4">
							<div class="card">
								<div class="card-body text-center">
									<div class="container">
										<img src="img/Admin/team.png" style="max-width: 125px;"
											class="img-fluid rounded-circle">
									</div>
									<h4><%= ulist.size() %></h4>
									<h1 class="text-muted">Users</h1>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card">
								<div class="card-body text-center">
									<div class="container">
										<img src="img/Admin/list.png" style="max-width: 125px;">
									</div>
									<h4><%= clist.size() %></h4>
									<h1 class="text-muted">Category</h1>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card">
								<div class="card-body text-center">
									<div class="container">
										<img src="img/Admin/brand-identity.png"
											style="max-width: 125px;" class="img-fluid rounded-circle">
									</div>
									<h4><%= plist.size() %></h4>
									<h1 class="text-muted">Products</h1>
								</div>
							</div>
						</div>
					</div>

					<div class="container-fluid" style="padding-top: 80px;">
						<h1>Statistics</h1>
						<hr>
						<br>
						<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>

					</div>
				</div>
			</main>

		</div>
	</div>

	<!-- Modal start -->

	<%@ include file="components/category_modal.jsp"%>
	<%@ include file="components/product_modal.jsp"%>

	<!-- Modal end -->

	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/feather.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/dashboard.js"></script>
</body>

</html>