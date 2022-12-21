<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bluetokai.Final_BlueTokai.entities.*"%>
<%@page import="com.bluetokai.Final_BlueTokai.dao.*"%>
<%@page import="com.bluetokai.Final_BlueTokai.helper.*"%>
<%@page import="java.util.*"%>

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
<link href="css/dashboard.css" rel="stylesheet" />
</head>

<body>
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

	<%
	ContactUsDao cDao = new ContactUsDao(FactoryProvider.getFactory());
	List<ContactUs> clist = cDao.getContacts();
		
	KioskDao kDao = new KioskDao(FactoryProvider.getFactory());
	List<Kiosk> klist = kDao.getInfo();
	
	BulkOrdersDao bDao = new BulkOrdersDao(FactoryProvider.getFactory());
	List<BulkOrders> blist = bDao.getInfo();
	%>

	<div class="container-fluid">
		<div class="row">
			<%@ include file="components/side_navbar.jsp"%>
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

				<!--Feedback-->
				<h2 style="padding-top: 30px;">Customer Feedback</h2>
				<div class="table-responsive" style="padding-top: 30px;">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th scope="col">Id</th>
								<th scope="col">Product Name</th>
								<th scope="col">Complaint</th>
								<th scope="col">Email Id</th>
								<th scope="col">Customer Name</th>
							</tr>
						</thead>
						<tbody>
							<%
							for (ContactUs c : clist) {
							%>
							<tr>
								<td><%=c.getCont_id()%></td>
								<td><%=c.getCont_pname()%></td>
								<td><%=c.getBo_message()%></td>
								<td><%=c.getCont_eid()%></td>
								<td><%=c.getCont_uname()%></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
				</div>

				<!-- Kiosk requirements -->
				<h2 style="padding-top: 60px;">Kiosk Requirement</h2>
				<div class="table-responsive" style="padding-top: 30px;">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th scope="col">Id</th>
								<th scope="col">Company</th>
								<th scope="col">Designation</th>
								<th scope="col">Requirement</th>
								<th scope="col">Email-Id</th>
								<th scope="col">City</th>
								<th scope="col">Contact Number</th>
							</tr>
						</thead>
						<tbody>
							<%
							for (Kiosk k : klist) {
							%>
							<tr>
								<td><%=k.getKio_id()%></td>
								<td><%=k.getKio_company()%></td>
								<td><%=k.getKio_designation()%></td>
								<td><%=k.getKio_requirement()%></td>
								<td><%=k.getKio_eid()%></td>
								<td><%=k.getKio_city()%></td>
								<td><%=k.getKio_ucontact()%></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
				</div>
				
				<!-- Bulk Orders requirements -->
				<h2 style="padding-top: 60px;">Bulk Orders Requirement</h2>
				<div class="table-responsive" style="padding-top: 30px;">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th scope="col">Id</th>
								<th scope="col">Name</th>
								<th scope="col">Email Id</th>
								<th scope="col">Contact no.</th>
								<th scope="col">Address</th>
								<th scope="col">City</th>
							</tr>
						</thead>
						<tbody>
							<%
							for (BulkOrders b : blist) {
							%>
							<tr>
								<td><%=b. getBo_id()%></td>
								<td><%=b.getBo_uname()%></td>
								<td><%=b.getBo_eid()%></td>
								<td><%=b.getBo_contact()%></td>
								<td><%=b.getBo_address()%></td>
								<td><%=b.getBo_city()%></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
				</div>
			</main>
		</div>
	</div>

	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/feather.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/dashboard.js"></script>
</body>

</html>