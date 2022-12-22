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
        <link rel="stylesheet" href="css/style1.css">
        <%@include file="components/common_css_js.jsp" %>

    </head>

    <body>

        <div class="main">
            <!-- Sing in  Form -->
            <section class="sign-in" style="padding-top: 8rem">
                <div class="container1" id="signinid">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure>
                                <img src="img/signin-image.jpg" alt="sing up image">
                            </figure>
                            <a href="user_sign_in.jsp" class="signup-image-link">Create an
                                account</a>
                        </div>
                        <div class="signin-form">

                            <%@ include file="components/login_message.jsp"%>

                            <h2 class="form-title">Hello, Welcome Back!</h2>
                            <form method="POST" action="UserLoginServlet" class="register-form"
                                  id="login-form">
                                <div class="form-group">
                                    <input class="form-control" id="floatingInput" type="email"
                                           name="u_email" placeholder="Email" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="floatingPassword"
                                           type="password" name="u_pass" placeholder="Password" />
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="remember-me" id="remember-me"
                                           class="agree-term" /> <label for="remember-me"
                                           class="label-agree-term"><span><span></span></span>Remember
                                        me</label>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" class="btn btn-outline-dark d-block w-100">
                                </div>
                                <a href="admin_log_in.jsp" class="signup-image-link">Login as Admin</a>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>


        <!-- Bootstrap Bundle with Popper -->
        <script
            src="js/bootstrap.bundle.min.js">
        </script>
    </body>
</html>

<!--<section class="position-relative py-4 py-xl-5">
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

<%--<%@ include file="components/login_message.jsp"  %> --%>

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

</section>-->
