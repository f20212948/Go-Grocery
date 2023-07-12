<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="login.login" %>
<%@page import="user.*" %>
<%customer cust = (customer)session.getAttribute("loggedInCustomer"); %>
<%//request.setAttribute("cust",cust); %>
<!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta content="width=device-width, initial-scale=1.0" name="viewport">

            <title>Go Grocery</title>
            <meta content="" name="description">
            <meta content="" name="keywords">

            <!-- Favicons -->
            <link href="assets/img/favicon.png" rel="icon">
            <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

            <!-- Google Fonts -->
            <link
                href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
                rel="stylesheet">

            <!-- Vendor CSS Files -->
            <link href="assets/vendor/aos/aos.css" rel="stylesheet">
            <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
            <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
            <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
            <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
            <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

            <!-- Template Main CSS File -->
            <link href="assets/css/style.css" rel="stylesheet">

            <!-- =======================================================
  * Template Name: Arsha - v4.9.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
        </head>

        <body>

            <!-- ======= Header ======= -->
            <header id="header" class="fixed-top ">
                <div class="container d-flex align-items-center">

                    <h1 class="logo me-auto"><a href="index.jsp">goGrocery</a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

                    <nav id="navbar" class="navbar">
                        <ul>
                            <li><a class="nav-link scrollto active" href="index.jsp">Home</a></li>
                            <li class="dropdown"><a class="nav-link scrollto" href="#about"><span>
                                        <%= cust.getName() %>
                                            <i class="bi bi-chevron-down"></i></a></span>
                                <ul>
                                    <li><a href="login.jsp">Log Out</a></li>
                                    <!--<li><a href="#">Register</a></li>-->
                                    <li><a href="#portfolio">Order</a></li>
                                    <li><a href="wallet.jsp">Manage Wallet  </a><%= cust.getMoney() %></li>
                                    <!--  <li><a href="#">Dashboard</a></li>-->
                                </ul>
                            </li>
                            <li class="dropdown"><a class="nav-link scrollto" href="#services"><span>Cart<i
                                            class="bi bi-chevron-down"></i></a></span>
                                <ul>
                                    <li><a href="#">Grocery</a></li>
                                    <li><a href="#">Vegetables</a></li>
                                    <li><a href="#">Snacks</a></li>
                                    <li><a href="#">Milk</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="nav-link   scrollto" href="#portfolio"><span>Products<i
                                            class="bi bi-chevron-down"></i></a></span>
                                <ul>
                                    <li><a href="#">Add Product</a></li>
                                    <li><a href="#">Checkout</a></li>
                                    <li><a href="#">Order</a></li>
                                </ul>
                            </li>
                            <!--<li class="dropdown"><a class="nav-link scrollto" href="#team"><span>Admin<i
                                            class="bi bi-chevron-down"></i></a></span>
                                <ul>
                                    <li><a href="#"> Admin Login</a></li>
                                    <li><a href="#">Manage Items</a></li>
                                    <li><a href="#">Admin Dashboard</a></li>

                                </ul>
                            </li>-->

                            <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                            <li><a class="getstarted scrollto" href="#about">Get Started</a></li>
                        </ul>
                        <i class="bi bi-list mobile-nav-toggle"></i>
                    </nav><!-- .navbar -->

                </div>
            </header>
        </body>

        </html><!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">

            <div class="container">
                <div class="row">
                    <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1"
                        data-aos="fade-up" data-aos-delay="200">
                        <h1>One PLace For Your Every Grocery Need</h1>
                        <h2>Providing Best grocery In Town</h2>
                        <div class="d-flex justify-content-center justify-content-lg-start">
                            <a href="#about" class="btn-get-started scrollto">Get Started</a>
                            <a href="https://www.youtube.com/watch?v=JiENRbBH2D4&ab_channel=Biteable"
                                class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch
                                    Video</span></a>
                        </div>
                    </div>
                    <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
                        <img src="assets/img/a.jpg" class=" " alt="">
                    </div>
                </div>
            </div>

        </section><!-- End Hero -->

        <main id="main">

            <!-- ======= Clients Section ======= -->
            <section id="clients" class="clients section-bg">
                <div class="container">

                    <div class="row" data-aos="zoom-in">

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                            <img src="assets/img/clients/client-1.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                            <img src="assets/img/clients/client-2.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                            <img src="assets/img/clients/client-3.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                            <img src="assets/img/clients/client-4.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                            <img src="assets/img/clients/client-5.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                            <img src="assets/img/clients/client-6.png" class="img-fluid" alt="">
                        </div>

                    </div>

                </div>
            </section><!-- End Cliens Section -->

            <!-- ======= About Us Section ======= -->

            <!-- ======= Why Us Section ======= -->

            <!-- ======= Skills Section ======= -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services section-bg">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h1>Cart</h1>
                        <p>Find Best Grocery In The Town here.</p>
                    </div>

                    <div class="row">
                        <div class="col-xl-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in"
                            data-aos-delay="100">
                            <div class="icon-box">
                                <div class="icon"><i class="bx bxl-dribbble"></i></div>
                                <h4><a href="">Grocery</a></h4>
                                <p>All items of grocery </p>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in"
                            data-aos-delay="200">
                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-file"></i></div>
                                <h4><a href="">Vegetable</a></h4>
                                <p>All vegetables here</p>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in"
                            data-aos-delay="300">
                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-tachometer"></i></div>
                                <h4><a href="">Milk</a></h4>
                                <p>BUY fresh milk from here</p>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in"
                            data-aos-delay="400">
                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-layer"></i></div>
                                <h4><a href="">snacks</a></h4>
                                <p>Get favourite snacks from this section</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Services Section -->

            <!-- ======= Cta Section ======= -->

            <!-- ======= Portfolio Section ======= -->
            <section id="portfolio" class="portfolio">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Products</h2>
                        <p>get all your favourite prducts from here</p>
                    </div>

                    <ul id="portfolio-flters" class="d-flex justify-content-center" data-aos="fade-up"
                        data-aos-delay="100">
                        <li data-filter="*" class="filter-active">All</li>
                        <li data-filter=".filter-app">grocery</li>
                        <li data-filter=".filter-card">veggies</li>
                        <li data-filter=".filter-web">Snacks</li>
                    </ul>

                    <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-img"><img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid"
                                    alt="">
                            </div>
                            <div class="portfolio-info">
                                <h4>App 1</h4>
                                <p>App</p>
                                <a href="assets/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery"
                                    class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
                                <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                        class="bx bx-link"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-img"><img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid"
                                    alt="">
                            </div>
                            <div class="portfolio-info">
                                <h4>Web 3</h4>
                                <p>Web</p>
                                <a href="assets/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery"
                                    class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
                                <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                        class="bx bx-link"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-img"><img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid"
                                    alt="">
                            </div>
                            <div class="portfolio-info">
                                <h4>App 2</h4>
                                <p>App</p>
                                <a href="assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery"
                                    class="portfolio-lightbox preview-link" title="App 2"><i class="bx bx-plus"></i></a>
                                <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                        class="bx bx-link"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-img"><img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid"
                                    alt="">
                            </div>
                            <div class="portfolio-info">
                                <h4>Card 2</h4>
                                <p>Card</p>
                                <a href="assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery"
                                    class="portfolio-lightbox preview-link" title="Card 2"><i
                                        class="bx bx-plus"></i></a>
                                <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                        class="bx bx-link"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-img"><img src="assets/img/portfolio/portfolio-5.jpg" class="img-fluid"
                                    alt="">
                            </div>
                            <div class="portfolio-info">
                                <h4>Web 2</h4>
                                <p>Web</p>
                                <a href="assets/img/portfolio/portfolio-5.jpg" data-gallery="portfolioGallery"
                                    class="portfolio-lightbox preview-link" title="Web 2"><i class="bx bx-plus"></i></a>
                                <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                        class="bx bx-link"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-img"><img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid"
                                    alt="">
                            </div>
                            <div class="portfolio-info">
                                <h4>App 3</h4>
                                <p>App</p>
                                <a href="assets/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery"
                                    class="portfolio-lightbox preview-link" title="App 3"><i class="bx bx-plus"></i></a>
                                <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                        class="bx bx-link"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-img"><img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid"
                                    alt="">
                            </div>
                            <div class="portfolio-info">
                                <h4>Card 1</h4>
                                <p>Card</p>
                                <a href="assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery"
                                    class="portfolio-lightbox preview-link" title="Card 1"><i
                                        class="bx bx-plus"></i></a>
                                <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                        class="bx bx-link"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-img"><img src="assets/img/portfolio/portfolio-8.jpg" class="img-fluid"
                                    alt="">
                            </div>
                            <div class="portfolio-info">
                                <h4>Card 3</h4>
                                <p>Card</p>
                                <a href="assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery"
                                    class="portfolio-lightbox preview-link" title="Card 3"><i
                                        class="bx bx-plus"></i></a>
                                <a href="portfolio-details.html" class="details-link" title="More Details"><i
                                        class="bx bx-link"></i></a>
                            </div>
                        </div>



                    </div>

                </div>
            </section><!-- End Portfolio Section -->


            <!-- ======= Pricing Section ======= -->
            <section id="pricing" class="pricing">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Pricing</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem.
                            Sit sint
                            consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.
                            Quia
                            fugiat sit
                            in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="row">

                        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                            <div class="box">
                                <h3>Free Plan</h3>
                                <h4><sup>$</sup>0<span>per month</span></h4>
                                <ul>
                                    <li><i class="bx bx-check"></i> Quam adipiscing vitae proin</li>
                                    <li><i class="bx bx-check"></i> Nec feugiat nisl pretium</li>
                                    <li><i class="bx bx-check"></i> Nulla at volutpat diam uteera</li>
                                    <li class="na"><i class="bx bx-x"></i> <span>Pharetra massa massa ultricies</span>
                                    </li>
                                    <li class="na"><i class="bx bx-x"></i> <span>Massa ultricies mi quis
                                            hendrerit</span></li>
                                </ul>
                                <a href="#" class="buy-btn">Get Started</a>
                            </div>
                        </div>

                        <div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="200">
                            <div class="box featured">
                                <h3>Business Plan</h3>
                                <h4><sup>$</sup>29<span>per month</span></h4>
                                <ul>
                                    <li><i class="bx bx-check"></i> Quam adipiscing vitae proin</li>
                                    <li><i class="bx bx-check"></i> Nec feugiat nisl pretium</li>
                                    <li><i class="bx bx-check"></i> Nulla at volutpat diam uteera</li>
                                    <li><i class="bx bx-check"></i> Pharetra massa massa ultricies</li>
                                    <li><i class="bx bx-check"></i> Massa ultricies mi quis hendrerit</li>
                                </ul>
                                <a href="#" class="buy-btn">Get Started</a>
                            </div>
                        </div>

                        <div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="300">
                            <div class="box">
                                <h3>Developer Plan</h3>
                                <h4><sup>$</sup>49<span>per month</span></h4>
                                <ul>
                                    <li><i class="bx bx-check"></i> Quam adipiscing vitae proin</li>
                                    <li><i class="bx bx-check"></i> Nec feugiat nisl pretium</li>
                                    <li><i class="bx bx-check"></i> Nulla at volutpat diam uteera</li>
                                    <li><i class="bx bx-check"></i> Pharetra massa massa ultricies</li>
                                    <li><i class="bx bx-check"></i> Massa ultricies mi quis hendrerit</li>
                                </ul>
                                <a href="#" class="buy-btn">Get Started</a>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Pricing Section -->

            <!-- ======= Frequently Asked Questions Section ======= -->

            <!-- ======= Contact Section ======= -->

            <!-- ======= Team Section ======= -->

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">

            <div class="footer-newsletter">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <h4>Join Our Newsletter</h4>
                            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h3>Arsha</h3>
                            <p>
                                A108 Adam Street <br>
                                New York, NY 535022<br>
                                United States <br><br>
                                <strong>Phone:</strong> +1 5589 55488 55<br>
                                <strong>Email:</strong> info@example.com<br>
                            </p>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Social Networks</h4>
                            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
                            <div class="social-links mt-3">
                                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container footer-bottom clearfix">
                <div class="copyright">
                    &copy; Copyright <strong><span>Arsha</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </footer><!-- End Footer -->

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

        </body>

        </html>