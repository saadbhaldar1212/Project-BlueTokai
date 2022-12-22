<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Common Css and Js -->
        <link rel="stylesheet" href="css/style1.css">
        <%@include file="components/common_css_js.jsp" %>


    </head>
    <body>

        <!--Sign In Form-->
        <section class="signup" style="padding-top:5rem">
            <div class="container1" >
                <div class="signup-content" id="signupid">
                    <div class="signup-form">

                        <h2 class="form-title">New to GratPad? We Welcome you</h2>

                        <form method="POST" action="UserSignUpServlet" class="register-form" id="register-form">
                            <div class="form-group">
                                <i class="zmdi zmdi-account material-icons-name"></i>
                                <input
                                    name="new_username" type="text" class="form-control"
                                    id="inputEmail4" placeholder="Full Name">
                            </div>
                            <div class="form-group">
                                <i class="zmdi zmdi-email"></i>
                                <input
                                    name="new_email" type="email" class="form-control"
                                    id="inputEmail4" placeholder="id@gmail.com">
                            </div>
                            <div class="form-group">
                                <i class="zmdi zmdi-lock"></i>
                                <input
                                    name="new_password1" type="password" class="form-control"
                                    id="inputPassword4" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <input name="new_password2" type="password"
                                       class="form-control" id="inputPassword4" placeholder="Re-enter Password">
                            </div>
                            <div class="form-group">
                                <input
                                    name="new_address1" type="text" class="form-control"
                                    id="inputAddress" placeholder="Address">
                            </div>
                            <div class="form-group">
                                <input
                                    name="new_address2" type="text" class="form-control"
                                    id="inputAddress2" placeholder="Apartment, Landmark, or floor">
                            </div>
                            <div class="form-group">
                                <input
                                    name="new_city" type="text" class="form-control" id="inputCity" placeholder="City">
                            </div>
                            <div class="form-group">
                                <input
                                    name="new_zip" type="text" class="form-control" id="inputZip"
                                    placeholder="e.g - 411044">
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" class="btn btn-dark">
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="img/signup-image.jpg" alt="sing up image"></figure>
                        <a href="user_log_in.jsp" class="signup-image-link">I am already member</a>
                        <br><br>

                        <%@ include file="components/message.jsp"%>
                    </div>
                </div>
            </div>
        </section>


        <!-- Bootstrap Bundle with Popper -->
        <script
        src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>

<!--
<div class="container" style="margin-top: 30px;">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2>Sign In</h2>
                    <p class="w-lg-50">BlueTokai welcomes you! </p>
                </div>
            </div>

<%--<%@ include file="components/message.jsp" %>--%>

<div class="container-fluid">
    <form class="row g-3" action="UserSignUpServlet" method="post">
        <div class="col-7">
            <label for="inputText4" class="form-label" >Full name</label>
            <input name="new_username" type="text" class="form-control" id="inputEmail4" >
        </div>
        <div class="col-5">
        </div>
        <div class="col-8">
            <label for="inputEmail4" class="form-label" >Email id</label>
            <input name="new_email" type="email" class="form-control" id="inputEmail4" placeholder="id@gmail.com">
        </div>
        <div class="col-md-6">
            <label for="inputPassword4" class="form-label">Password</label>
            <input name="new_password1" type="password" class="form-control" id="inputPassword4">
        </div>
        <div class="col-md-6">
            <label for="inputPassword4" class="form-label">Re-enter Password</label>
            <input name="new_password2" type="password" class="form-control" id="inputPassword4">
        </div>
        <div class="col-12">
            <label for="inputAddress" class="form-label">Address</label>
            <input name="new_address1" type="text" class="form-control" id="inputAddress">
        </div>
        <div class="col-12">
            <label for="inputAddress2" class="form-label">Address 2</label>
            <input name="new_address2" type="text" class="form-control" id="inputAddress2" placeholder="Apartment, Landmark, or floor">
        </div>
        <div class="col-md-6">
            <label for="inputCity" class="form-label">City</label>
            <input name="new_city" type="text" class="form-control" id="inputCity">
        </div>
        <div class="col-md-5">
            <label for="inputZip" class="form-label">Zip</label>
            <input name="new_zip" type="text" class="form-control" id="inputZip" placeholder="e.g - 411044">
        </div>
        <div class="col-12">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck">
                <label class="form-check-label" for="gridCheck">
                    I hereby accept all the Terms and Condition
                </label>
            </div>
        </div>
        <div class="col-12">
            <input type="submit" class="btn btn-dark">
            <button type="reset" class="btn btn-dark">Clear</button>
        </div>
    </form>

</div>

<br>
</div>
-->
