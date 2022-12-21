<html>
    <head>
        <title>Welcome | BlueTokai</title>

        <!-- Common Css and Js -->
        <%@include file="components/common_css_js.jsp"%>

    </head>
    <body>
        <!--Offcanvas Navbar-->
        <nav class="navbar navbar-light bg-gradient fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand p-2" href="#"></a> <a
                    class="navbar-toggler" type="button"
                    data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                    aria-controls="offcanvasNavbar"> <span
                        class="navbar-toggler-icon "></span>
                </a>
                <div class="offcanvas offcanvas-end" tabindex="-1"
                     id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
                        <h3 class="offcanvas-title" id="offcanvasNavbarLabel">For
                            Admin</h3>
                        <button type="button" class="btn-close text-reset"
                                data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item"><a class="nav-link"
                                                    href="admin_log_in.jsp">Login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container mx-auto" style="margin-top: 170px; background:white; padding-top: 70px; padding-bottom: 70px">
            <div class="row justify-content-md-center">
                <div class="col col-md-2"><img src="img/Logo/Brand.webp" style="height:100px; width:100px;"></div>
                <div class="col col-md-2 col-lg-2 text-center">
                    <h1>BlueTokai</h1>
                    <h5>Coffee Roasters</h5>
                </div>
                <div class="col-md-4 d-grid gap-2 col-2 col-lg-4"
                     style="margin-left: 40px">
                    <a href="user_sign_in.jsp" class="btn btn-outline-dark"
                       role="button">Sign up</a> <a href="user_log_in.jsp"
                       class="btn btn-dark" role="button">Log in</a>
                </div>
            </div>
        </div>
    </body>
</html>