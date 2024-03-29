<%@page import="com.bluetokai.Final_BlueTokai.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="com.bluetokai.Final_BlueTokai.dao.*"%>
<%@page import="com.bluetokai.Final_BlueTokai.helper.FactoryProvider"%>
<%@page import="com.bluetokai.Final_BlueTokai.entities.*"%>
<%@ page import="java.util.*"%>


<!-- Navigation Bar -->
<div class="container-fluid">

    <nav class="navbar navbar-expand-lg navbar-light sticky-top"
         style="background-color: #fff; padding-top: 20px;">
        <div class="container-fluid"
             style="margin-bottom: 20px; font-size: large;">
            <a class="navbar-brand" href="index.jsp"
               style="padding-left: 30px; margin: auto;" onclick="showItem()">
                <h2>BlueTokai</h2>
            </a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent"
                 style="margin-left: 30px">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown"><a
                            class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                            role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Shop </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li></li>
                            <li><a class="dropdown-item" href="list_all.jsp?category=1">Roasted
                                    & Grounded Coffee</a></li>
                            <li><a class="dropdown-item" href="list_all.jsp?category=2">Easy
                                    Pour</a></li>
                            <li><a class="dropdown-item" href="list_all.jsp?category=3">Brewing
                                    Equipements</a></li>
                            <li><a class="dropdown-item" href="list_all.jsp?category=4">Grinders</a>
                            </li>
                            <li><a class="dropdown-item" href="list_all.jsp?category=5">Gifting</a>
                            </li>
                            <li><a class="dropdown-item"
                                   href="list_all.jsp?category=all">List all</a></li>
                        </ul></li>
                    <li class="nav-item" style="margin-right: 10px;"><a
                            class="nav-link" href="about_us.jsp">About Us</a></li>
                    <li class="nav-item dropdown" style="margin-right: 10px;"><a
                            class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                            role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Enterprise </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="bulkorders.jsp">Bulk
                                    Orders</a></li>
                            <li><a class="dropdown-item" href="kiosk.jsp">Kiosk</a></li>
                        </ul></li>
                    <li class="nav-item"><a class="nav-link" href="contact_us.jsp">Contact
                            Us</a></li>
                </ul>
            </div>
            <%@ include file="cart.jsp"%>
        </div>
    </nav>

</div>

<link href="css/style.css" rel="stylesheet">
<div id="toast">Custom Toast</div>

