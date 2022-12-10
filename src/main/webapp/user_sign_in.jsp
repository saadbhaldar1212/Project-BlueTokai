<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Common Css and Js -->
    <%@include file="components/common_css_js.jsp" %>


  </head>
  <body>

    <!--Sign In Form-->
    <div class="container" style="margin-top: 30px;">
      <div class="row mb-5">
        <div class="col-md-8 col-xl-6 text-center mx-auto">
          <h2>Sign In</h2>
          <p class="w-lg-50">BlueTokai welcomes you! </p>
        </div>
      </div>
      
      <%@ include file="components/message.jsp" %>
      
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
    

    <!-- Bootstrap Bundle with Popper -->
    <script
      src="js/bootstrap.bundle.min.js"></script>
  </body>
</html>
