<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
            />
        <title>BlueTokai</title>

        <!-- Common Css and Js -->
        <%@include file="components/common_css_js.jsp" %>

    </head>

    <body>

        <section class="position-relative py-4 py-xl-5">
            <!-- Log In form-->
            <div class="container">
                <div class="row mb-1">
                    <div class="col-md-8 col-xl-2 text-center mx-auto">
                        <h1>Log in</h1>
                        <p class="w-lg-50">Welcome back!</p>
                    </div>
                </div>
                <div class = "container-fluid">
                    <div class="row d-flex justify-content-center">
                        <div class="col-md-6 col-xl-5">
                            <div class="card mb-5">
                                <div class="card-body align-items-center">

                                    <%@ include file="components/login_message.jsp"  %>

                                    <form class="text-center" method="post" action="UserLoginServlet">
                                        <div class="form-floating mb-2">
                                            <input
                                                class="form-control"
                                                id="floatingInput"
                                                type="email"
                                                name="u_email"
                                                placeholder="Email"
                                                />
                                            <label for="floatingInput">Email</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input
                                                class="form-control"
                                                id="floatingPassword"
                                                type="password"
                                                name="u_pass"
                                                placeholder="Password"
                                                />
                                            <label for="floatingInput">Password</label>
                                        </div>
                                        <div class="mb-3">
                                            <input type = "submit"
                                                   class="btn btn-outline-dark d-block w-100">
                                        </div>
                                        <br>
                                        <a href="user_sign_in.jsp">Not registered yet? Click here </a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>

        <!-- Bootstrap Bundle with Popper -->
        <script
            src="js/bootstrap.bundle.min.js">
        </script>
    </body>
</html>
