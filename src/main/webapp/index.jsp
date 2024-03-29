<%@page import="com.bluetokai.Final_BlueTokai.helper.FactoryProvider"%>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Shop Online | Blue Tokai</title>


        <!-- Common Css and Js -->
        <%@include file="components/common_css_js.jsp"%>

    </head>

    <body>

        <!--Announcement-->
        <div class="container-fluid"
             style="background-color: black; padding: 4px;">
            <!--<marquee behavior="" direction=""></marquee>-->
            <center>
                <p style="color: white; margin: auto;">* GET 10% OFF ON ORDERS RS
                    799+ USE CODE: CB10 *</p>
            </center>
        </div>

        <!-- Navigation Bar -->
        <%@ include file="components/navbar.jsp" %>



        <!--Body-->
        <div class="container-fluid">
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-md-5" style="margin-left: 40px;">
                        <img src="img/Index Page/First.webp"
                             class="img-fluid rounded-start">
                    </div>
                    <div class="col-5" style="margin: auto;">
                        <div class="card-body" style="text-align: center;">
                            <h1 class="card-title">
                                <strong>Make cafe-like coffee at home</strong>
                            </h1>
                            <br>
                            <p class="card-text">We are the way coffee was always meant to
                                be: smooth, bold, aromatic and easy.</p>
                            <br> <a class="btn btn-dark w-50" href="list_all.jsp"
                                    role="button">Shop all</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Brand-->
        <div class="container-fluid">
            <img src="img/Index Page/Second.png" style="margin-left: 20px;">
            <center>
                <a class="btn btn-dark btn-lg" href="list_all.jsp" role="button">Try
                    now</a>
            </center>
        </div>

        <!--Menu-->
        <div class="container-fluid"
             style="padding-top: 80px; padding-left: 40px; padding-right: 40px;">
            <h1>Shop Collection</h1>
            <div class="row row-cols-1 row-cols-md-3 g-4"
                 style="margin-top: 30px;">
                <div class="col" id="coffspy">
                    <div class="card">
                        <img src="img/Menu/rgcoff.png" class="card-img-top">
                        <div class="card-body">
                            <a class="btn btn-transparent w-100"
                               href="list_all.jsp?category=1" role="button"><h5>Roasted
                                    & Ground Coffee -></h5></a>
                        </div>
                    </div>
                </div>
                <div class="col" id="grspy">
                    <div class="card">
                        <img src="img/Menu/grind.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="btn btn-transparent w-100"
                               href="list_all.jsp?category=4" role="button"><h5>Grinders
                                    -></h5></a>

                        </div>
                    </div>
                </div>
                <div class="col" id="eqspy">
                    <div class="card">
                        <img src="img/Menu/brewequip.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="btn btn-transparent w-100" id="eqspy"
                               href="list_all.jsp?category=3" role="button"><h5>Brewing
                                    Equipements -></h5></a>

                        </div>
                    </div>
                </div>
                <div class="col" id="epspy">
                    <div class="card">
                        <img src="img/Menu/EPou.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="btn btn-transparent w-100"
                               href="list_all.jsp?category=2" role="button"><h5>Easy
                                    Pour -></h5></a>
                        </div>
                    </div>
                </div>
                <div class="col" id="gfspy">
                    <div class="card">
                        <img src="img/Menu/Gifting.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="btn btn-transparent w-100"
                               href="list_all.jsp?category=5" role="button"><h5>Giftings
                                    -></h5></a>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--About us-->
        <div class="container-fluid" id="aus" style="padding-top: 100px;">
            <div class="card mb-5" style="margin-left: 30px;">
                <div class="row g-0">
                    <div class="col-md-5" style="margin-left: 40px;">
                        <img src="img/About us Profile.png" class="img rounded-start"
                             style="border-radius: 80%; padding-left: 40px; padding-right: 100px;">
                    </div>
                    <div class="col-5" style="margin-left: 60px; margin-top: 30px;">
                        <div class="card-body" style="text-align: center;">
                            <h1 class="card-title">Our Story</h1>
                            <br>
                            <p class="card-text" style="font-size: large;">As a creative
                                professional, I used to live on coffee. But the coffee at home
                                left me dull and uninspired. And cafes were overpriced for daily
                                use. I just wanted something that was delicious, easy and didn't
                                cost a fortune. So during start stayed simple: introduced our
                                customers to the estates we directly buy our great tasting coffee
                                from, roast the beans with care, and make high quality coffee
                                more accessible through our cafes and our website and called it
                                BlueTokai. It has brought joy to my daily coffee ritual and I
                                can't wait to share it with you..</p>
                            <br> <a class="btn btn-dark w-50" href="about_us.jsp"
                                    role="button">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Enterprise-->
        <div class="container-fluid" id="enterprisespy"
             style="padding-right: 40px; padding-top: 50px;">
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-5" style="margin: auto;">
                        <div class="card-body" style="text-align: center;">
                            <h1 class="card-title">
                                <strong>LOOKING FOR AN ENTERPRISE SOLUTION?</strong>
                            </h1>
                            <br>
                            <p class="card-text">Send us an email with your requirements
                                and we will work out an attractive pricing for you.</p>
                            <br> <a class="btn btn-dark w-25" href="bulkorders.jsp"
                                    role="button">Bulk Orders</a> <a
                                    class="btn btn-dark w-25" href="kiosk.jsp" role="button">Kiosk</a>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <img src="img/Enterprise.png" class="img-fluid rounded-start"
                             alt="...">
                    </div>
                </div>
            </div>

            <!--Review-->
            <div class="container-fluid">
                <img src="img/Review.png" style="margin-left: 20px; width: auto;">
            </div>

            <!-- Modal -->
            <%@include file="components/cart_modal.jsp" %>

            <!--Footer-->
            <%@include file="components/footer.jsp"%>
    </body>
</html>
