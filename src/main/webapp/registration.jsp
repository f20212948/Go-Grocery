<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>
        Login Page
    </title>
    <link rel="stylesheet" href="login.css">

</head>

<body>
    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center">

            <h1 class="logo me-auto"><a href="Arsha/index.html">goGrocery</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            <nav id="navbar" class="navbar">
                <div class="navright">
                    <ul>
                        <li><a class="nav-link scrollto active" href="Arsha/index.html">Home</a></li>
                        <li class="dropdown"><a class="nav-link scrollto" href="#about">User<i
                                        class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="login.html">Login</a></li>
                                <li><a href="#">Register</a></li>
                                <li><a href="#">Order</a></li>
                                <li><a href="#">Manage Wallet</a></li>
                                <li><a href="#">Dashboard</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="nav-link scrollto" href="#services">Cart<i
                                        class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="#">Grocery</a></li>
                                <li><a href="#">Vegetables</a></li>
                                <li><a href="#">Snacks</a></li>
                                <li><a href="#">Milk</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="nav-link   scrollto" href="#portfolio">Products<i
                                        class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="#">Add Product</a></li>
                                <li><a href="#">Checkout</a></li>
                                <li><a href="#">Order</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="nav-link scrollto" href="#team">Admin<i
                                        class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="#"> Admin Login</a></li>
                                <li><a href="#">Manage Items</a></li>
                                <li><a href="#">Admin Dashboard</a></li>

                            </ul>
                        </li>

                        <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                        <li><a class="getstarted scrollto" href="#about">Get Started</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </div>
            </nav><!-- .navbar -->
        </div>
    </header>

    <!-- End Header -->


<form class="box" method="POST" action = registration id = RegistrationBox>
        <h2>Registration</h2>
        <input type="text" placeholder="Name" name='name'>
        <input type="text" placeholder="Username" name='username'>
        <input type="password" placeholder="Password" name='password'>
        <input type="text" placeholder="Phone" name='phone'>
        <input type="text" placeholder="Address" name='address'>
        
        <input type="submit" value="Login">
        <a href="login.jsp">old user?</a>
    </form>

	    

</body>

</html>