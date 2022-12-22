<%@page import="com.bluetokai.Final_BlueTokai.dao.CategoryDao"%>
<%@page import="com.bluetokai.Final_BlueTokai.dao.ProductDao"%>
<%@page import="com.bluetokai.Final_BlueTokai.helper.FactoryProvider"%>
<%@page import="com.bluetokai.Final_BlueTokai.entities.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
        <title>Blue Tokai</title>

        <!-- Common Css and Js -->
        <%@include file="components/common_css_js.jsp"%>
        <link href="css/dashboard.css" rel="stylesheet">

    </head>

    <body>

        <%

            String cat = request.getParameter("category");

            ProductDao pDao = new ProductDao(FactoryProvider.getFactory());
            List<Product> list = null;

            if (cat == null) {
                list = pDao.getAllProducts();
            } else if (cat.trim().equals("all")) {
                list = pDao.getAllProducts();
            } else {
                int cid = Integer.parseInt(cat.trim());
                list = pDao.getAllProductsById(cid);
            }

            CategoryDao cDao = new CategoryDao(FactoryProvider.getFactory());
            List<Category> clist = cDao.getCategories();
        %>

        <!-- Navigation Bar -->
        <%@include file="components/navbar.jsp"%>


        <!--Breadcrumbs-->
        <nav
            style="-bs-breadcrumb-divider: '&gt;'; padding-top: 30px; padding-left: 50px;"
            aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">All
                    products</li>
                <li class="text ms-auto" style="margin-right: 3rem"><h5>
                        <%=list.size()%>
                        Products
                    </h5></li>
            </ol>
        </nav>

        <div class="container-fluid">
            <div class="row mx-3">
                <nav id="sidebarMenu"
                     class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                    <div class="position-sticky pt-5">
                        <ul class="nav flex-column">
                            <li class="nav-item"><a class="nav-link" aria-current="page"
                                                    href="list_all.jsp?category=all"> <span data-feather="home"></span>
                                    List all
                                </a></li>
                                <%
                                    for (Category c : clist) {
                                %>
                            <li class="nav-item" data-bs-toggle="modal"
                                data-bs-target="#productsBackdrop"><a class="nav-link"
                                                                  href="list_all.jsp?category=<%= c.getC_id()%>"> <span data-feather="shopping-cart"></span> <%=c.getC_title()%>
                                </a></li>
                                <%
                                    }
                                %>
                        </ul>
                    </div>
                </nav>
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <div class="container" style="padding-top: 60px;">
                        <div class="row">
                            <%
                                for (Product p : list) {
                            %>
                            <div class="col-md-4">
                                <div class="card">
                                    <img src="img/Products/<%=p.getP_image()%>" class="card-img-top">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">
                                            <strong><%=p.getP_name()%></strong>
                                        </h5>
                                        <p class="card-text"><%=p.getP_desc()%></p>
                                        <h6>
                                            From <strong>Rs.<%=p.getP_price()%></strong>
                                        </h6>
                                        <button class="btn btn-dark w-100" onclick="add_to_cart(<%=p.getP_id()%>, '<%=p.getP_name()%>', <%=p.getP_price()%>)">Add
                                            to cart</button>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </main>
            </div>
        </div>


        <!-- Modal -->
        <%@include file="components/cart_modal.jsp" %>

        <!--Footer-->
        <%@include file="components/footer.jsp"%>

    </body>
</html>