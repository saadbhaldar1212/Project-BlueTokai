<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Common Css and Js -->
<%@include file="components/common_css_js.jsp"%>

</head>
<body>
	<div class="container text-center">
		<h1 style="margin-top: 18%;">Thanks you for ordering, Order
			arriving soon</h1>
		<a class="btn btn-outline-primary mt-3" href="index.jsp" type="button" onclick="deleteProduct()">Continue Shopping</a>
	</div>
	
	<%@ include file="components/footer.jsp" %>

	<!-- Bootstrap Bundle with Popper -->
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
