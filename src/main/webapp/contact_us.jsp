<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
    />
    <title>Contact us | BlueTokai</title>

    <!-- Common Css and Js -->
    <%@include file="components/common_css_js.jsp" %>

  </head>

  <body>

    <!-- Navigation Bar -->
    <%@include file="components/navbar.jsp" %>

    <!--Form-->
    <section class="position-relative py-4 py-xl-5">
      <div class="container position-relative">
        <div class="row mb-5">
          <div class="col-md-8 col-xl-6 text-center mx-auto">
            <h2>Contact us</h2>
            <p class="w-lg-50">
              We are always available for you. Feel free to contact us
            </p>
          </div>
        </div>
        <div class="row d-flex justify-content-center">
          <div class="col-md-6 col-lg-4 col-xl-4">
            <div
              class="d-flex flex-column justify-content-center align-items-start h-100"
            >
              <div class="d-flex align-items-center p-3">
                <div
                  class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex flex-shrink-0 justify-content-center align-items-center d-inline-block bs-icon"
                >
                  <svg
                    class="bi bi-telephone"
                    xmlns="http://www.w3.org/2000/svg"
                    width="1em"
                    height="1em"
                    fill="currentColor"
                    viewBox="0 0 16 16"
                  >
                    <path
                      d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"
                    ></path>
                  </svg>
                </div>
                <div class="px-2">
                  <h6 class="mb-0">Phone</h6>
                  <p class="mb-0">+123456789</p>
                </div>
              </div>
              <div class="d-flex align-items-center p-3">
                <div
                  class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex flex-shrink-0 justify-content-center align-items-center d-inline-block bs-icon"
                >
                  <svg
                    class="bi bi-envelope"
                    xmlns="http://www.w3.org/2000/svg"
                    width="1em"
                    height="1em"
                    fill="currentColor"
                    viewBox="0 0 16 16"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"
                    ></path>
                  </svg>
                </div>
                <div class="px-2">
                  <h6 class="mb-0">Email</h6>
                  <p class="mb-0">support@bluetokai.com</p>
                </div>
              </div>
              <div class="d-flex align-items-center p-3">
                <div class="px-2"></div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-5 col-xl-4">
            <div>
            <%@ include file="components/category_successful.jsp"%>
              <form class="p-3 p-xl-4" method="post" action="SaveToDBServlet">
              <input type="hidden" name="operation1" value="contactus">
                <div class="mb-3">
                  <input
                    id="name-1"
                    class="form-control"
                    type="text"
                    name="name"
                    placeholder="Name"
                  />
                </div>
                <div class="mb-3">
                  <input
                    id="email-1"
                    class="form-control"
                    type="email"
                    name="email"
                    placeholder="Email"
                  />
                </div>
                <div class="mb-3">
                  <input
                    id="name-2"
                    class="form-control"
                    type="text"
                    name="product_name"
                    placeholder="Product Name"
                  />
                </div>
                <div class="mb-3">
                  <textarea
                    id="message-1"
                    class="form-control"
                    name="message"
                    rows="6"
                    placeholder="Message"
                  ></textarea>
                </div>
                <div id="liveAlertPlaceholder"></div>
                <div>
                  <button class="btn btn-dark d-block w-100" id="liveAlertBtn" type="submit">
                    Send
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
		<!-- Modal -->
		<%@include file="components/cart_modal.jsp" %>

    <!--Footer-->
    <%@include file="components/footer.jsp" %>

    <!-- Bootstrap Bundle with Popper -->
    <script
      src="js/bootstrap.bundle.min.js"></script>
  </body>
</html>
