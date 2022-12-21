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
        <div id="carouselKiosk" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/Enterprise/Kiosk.png" class="d-block w-100 h-25"
                         alt="...">
                </div>
            </div>
        </div>s

        <!--About us kiosk-->
        <h5 style="color: gray; padding-left: 60px; padding-top: 40px;">
            BlueTokai Connect (Kiosk)</h5>
        <hr width="30%" style="margin-left: 35px;">
        <p style="padding: 80px;">Inspired by that tree on many a campus
            (under whose shade, coffees and conversations have lead to numerous
            Aha! moments) we bring you BlueTokai Connect - a unique 'third space'
            - a breakout zone in your office, executive floors or reception lobby.
            At Connect, we boast of an integrated coffee approach. We offer frothy
            coffee options to kick start your day, refreshing teas for afternoon
            slumps and a whole range of delectable beverages to last for the late
            night ins.</p>
        <div class="container-fluid">
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-5">
                        <div class="card-body">
                            <h3 class="card-title" style="color: brown; padding-left: 60px;">
                                <strong>BlueTokai Connect (Kiosk)</strong>
                            </h3>
                            <p class="card-text"
                               style="padding-left: 80px; padding-top: 30px;">

                                Bi- level seating <br> Clean and Modular unit <br> Easy
                                to assemble <br> Subtle Lighting <br> Perfect to spark
                                new ideas <br> Warm and inviting space for positivity,
                                creativity and interaction <br>

                            </p>
                            <br>
                        </div>
                    </div>
                    <div class="col-md-5" style="margin-left: 40px;">
                        <img src="img/Enterprise/coffee-kiosk_1.webp"
                             class="img-fluid rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <h4 style="color: gray; padding-left: 100px; padding-top: 40px;">
            The wish-giving tree</h4>
        <p style="padding-left: 100px; padding-right: 80px; padding-top: 30px;">
            At Connect, we boast of an integrated coffee approach. We offer frothy
            cappuccinos to kick start your day, munchies for midday pangs,
            refreshing teas for afternoon slumps and hot soups for those late
            nights in.</p>

        <!--Form for Kiosk-->
        <div class="container" style="padding-top: 70px;">
            <h2>Enquiry Form</h2>
            <%@ include file="components/category_successful.jsp"%>
            <form class="row g-3" style="padding-top: 30px;"
                  action="SaveToDBServlet" method="post">
                <input type="hidden" name="operation1" value="kiosk">
                <div class="col-6">
                    <label for="inputName" class="form-label">Name</label> <input
                        name="kName" type="text" class="form-control" id="inputName">
                </div>
                <div class="col-6">
                    <label for="inputCompName" class="form-label">Company</label> <input
                        name="kCompany" type="text" class="form-control" id="inputCompName">
                </div>
                <div class="col-6">
                    <label for="inputDesignation" class="form-label">Designation</label>
                    <input name="kDesignation" type="text" class="form-control"
                           id="inputDesignation">
                </div>
                <div class="col-6">
                    <label for="inputNumber" class="form-label">Contact Number</label>
                    <input name="kContact" type="text" class="form-control"
                           id="inputNumber">
                </div>
                <div class="col-6">
                    <label for="inputEmail4" class="form-label">Email id</label> <input
                        name="kEmail" type="email" class="form-control" id="inputEmail4"
                        placeholder="id@gmail.com">
                </div>
                <div class="col-md-8">
                    <label for="inputCity" class="form-label">City</label> <input
                        name="kCity" type="text" class="form-control" id="inputCity">
                </div>
                <div class="col-6">
                    <label for="inputState" class="form-label">State</label> <input
                        name="kState" type="name" class="form-control" id="inputState">
                </div>
                <div class="col-6">
                    <label for="inputRequirement" class="form-label">Requirement</label>
                    <input name="kRequirement" type="text" class="form-control"
                           id="inputRequirement">
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-dark">Enquire</button>
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