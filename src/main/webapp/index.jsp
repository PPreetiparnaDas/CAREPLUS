<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Careplus</title>
	<%@ include file="include/link.jsp" %>
    
</head>

<body>
	<%@ include file="include/header.jsp" %>
    

    <!-- Hero/Intro Slider Start -->
    <div class="section">
        <div class="hero-slider swiper-container">
            <div class="swiper-wrapper">

                <div class="hero-slide-item swiper-slide">
                    <div class="hero-slide-bg">
                        <img src="assets/images/slider/6.png" alt="Slider Image" />
                    </div>
                    <div class="container">
                        <div class="hero-slide-content">
                            <h2 class="title m-0">Get -30% off</h2>
                            <p>Latest baby product & toy collections.</p>
                            <a href="shop.jsp" class="btn btn-primary btn-hover-light">Shop Now</a>
                        </div>
                    </div>
                </div>

                <div class="hero-slide-item swiper-slide">
                    <div class="hero-slide-bg">
                        <img src="assets/images/slider/7.png" alt="Slider Image" />
                    </div>
                    <div class="container">
                        <div class="hero-slide-content">
                            <h2 class="title m-0"> New Arrivals <br />Get flat 50% off </h2>
                            <a href="shop.jsp" class="btn btn-primary btn-hover-light">Shop Now</a>
                        </div>
                    </div>
                </div>
                <div class="hero-slide-item swiper-slide">
                    <div class="hero-slide-bg">
                        <img src="assets/images/slider/8.png" alt="Slider Image" />
                    </div>
                    <div class="container">
                        <div class="hero-slide-content">
                            <h2 class="title m-0"> Latest Arrivals <br />Get flat Up to 50% off </h2>
                            <a href="shop.jsp" class="btn btn-primary btn-hover-light">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Swiper Pagination Start -->
            <div class="swiper-pagination d-lg-none"></div>
            <!-- Swiper Pagination End -->

            <!-- Swiper Navigation Start -->
            <div class="home-slider-prev swiper-button-prev main-slider-nav d-lg-flex d-none"><i class="pe-7s-angle-left"></i></div>
            <div class="home-slider-next swiper-button-next main-slider-nav d-lg-flex d-none"><i class="pe-7s-angle-right"></i></div>
            <!-- Swiper Navigation End -->
        </div>
    </div>
    <!-- Hero/Intro Slider End -->

    <!-- Banner Section Start -->
    <div class="section section-margin">
        <div class="container">
            <!-- Banners Start -->
            <div class="row mb-n6">

                <!-- Banner Start -->
                <div class="col-md-6 col-12 mb-6 pe-lg-2 pe-md-3">
                    <a href="shop.jsp" class="banner" data-aos="fade-up" data-aos-delay="200">
                        <img src="assets/images/banner/111.png" alt="Banner Image" />
                    </a>
                </div>
                <!-- Banner End -->

                <!-- Banner Start -->
                <div class="col-md-6 col-12 mb-6 ps-lg-2 ps-md-3">
                    <a href="shop.jsp" class="banner" data-aos="fade-up" data-aos-delay="400">
                        <img src="assets/images/banner/222.png" alt="Banner Image" />
                    </a>
                </div>
                <!-- Banner End -->

            </div>
            <!-- Banners End -->
        </div>
    </div>
    <!-- Banner Section End -->

   
    <!-- Testimonial Section Start -->
    <div class="section testimonial-bg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Title Start -->
                    <div class="section-title text-center" data-aos="fade-up" data-aos-delay="200">
                        <h2 class="title text-white">Testimonials</h2>
                        <p class="sub-title text-white">What they say</p>
                    </div>
                    <!-- Section Title End -->

                    <!-- Testimonial Carousel Start -->
                    <div class="testimonial-carousel" data-aos="fade-up" data-aos-delay="400">
                        <div class="swiper-container testimonial-gallery-thumbs">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="assets/images/testimonial/1.png" alt="Product Image">
                                </div>
                                <div class="swiper-slide">
                                    <img src="assets/images/testimonial/2.png" alt="Product Image">
                                </div>
                                <div class="swiper-slide">
                                    <img src="assets/images/testimonial/3.png" alt="Product Image">
                                </div>
                                <div class="swiper-slide">
                                    <img src="assets/images/testimonial/4.png" alt="Product Image">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-container testimonial-gallery-top">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <!-- Testimonial Content Start -->
                                    <div class="testimonial-content text-center">
                                        <p>Vivamus a lobortis ipsum, vel condimentum magna. Etiam id turpis tortor. Nunc scelerisque, nisi a blandit varius, nunc purus venenatis ligula, sed venenatis orci augue nec sapien. Cum sociis natoque</p>
                                        <span class="ratings justify-content-center mb-3">
												<span class="rating-wrap text-white">
													<span class="star text-warning" style="width: 80%"></span>
                                        </span>
                                        <span class="rating-num text-light">(3)</span>
                                        </span>
                                        <h4 class="testimonial-author mb-0">Anamika lusy</h4>
                                    </div>
                                    <!-- Testimonial Content End -->
                                </div>
                                <div class="swiper-slide">
                                    <!-- Testimonial Content Start -->
                                    <div class="testimonial-content text-center">
                                        <p>Vivamus a lobortis ipsum, vel condimentum magna. Etiam id turpis tortor. Nunc scelerisque, nisi a blandit varius, nunc purus venenatis ligula, sed venenatis orci augue nec sapien. Cum sociis natoque</p>
                                        <span class="ratings justify-content-center mb-3">
												<span class="rating-wrap text-white">
													<span class="star text-warning" style="width: 80%"></span>
                                        </span>
                                        <span class="rating-num text-light">(3)</span>
                                        </span>
                                        <h4 class="testimonial-author mb-0">Tinsy Nilom</h4>
                                    </div>
                                    <!-- Testimonial Content End -->
                                </div>
                                <div class="swiper-slide">
                                    <!-- Testimonial Content Start -->
                                    <div class="testimonial-content text-center">
                                        <p>Vivamus a lobortis ipsum, vel condimentum magna. Etiam id turpis tortor. Nunc scelerisque, nisi a blandit varius, nunc purus venenatis ligula, sed venenatis orci augue nec sapien. Cum sociis natoque</p>
                                        <span class="ratings justify-content-center mb-3">
												<span class="rating-wrap text-white">
													<span class="star text-warning" style="width: 80%"></span>
                                        </span>
                                        <span class="rating-num text-light">(3)</span>
                                        </span>
                                        <h4 class="testimonial-author mb-0">Cristal Aryan</h4>
                                    </div>
                                    <!-- Testimonial Content End -->
                                </div>
                                <div class="swiper-slide">
                                    <!-- Testimonial Content Start -->
                                    <div class="testimonial-content text-center">
                                        <p>Vivamus a lobortis ipsum, vel condimentum magna. Etiam id turpis tortor. Nunc scelerisque, nisi a blandit varius, nunc purus venenatis ligula, sed venenatis orci augue nec sapien. Cum sociis natoque</p>
                                        <span class="ratings justify-content-center mb-3">
												<span class="rating-wrap text-white">
													<span class="star text-warning" style="width: 80%"></span>
                                        </span>
                                        <span class="rating-num text-light">(3)</span>
                                        </span>
                                        <h4 class="testimonial-author mb-0">Jems Jhon</h4>
                                    </div>
                                    <!-- Testimonial Content End -->
                                </div>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-button-next swiper-button-white d-none"></div>
                            <div class="swiper-button-prev swiper-button-white d-none"></div>
                        </div>
                    </div>
                    <!-- Testimonial Carousel End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial Section End -->

    
    <!-- Latest Blog Section Start -->
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-12">

                    <!-- Section Title Start -->
                    <div class="section-title text-center" data-aos="fade-up" data-aos-delay="300">
                        <h2 class="title">Testimonials</h2>
                        <p class="sub-title">What they say</p>
                    </div>
                    <!-- Section Title End -->

                    <!-- Latest Blog Carousel Start -->
                    <div class="latest-blog-carousel arrow-outside-container" data-aos="fade-up" data-aos-delay="600">
                        <div class="swiper-container">

                            <div class="swiper-wrapper">

                                <div class="swiper-slide">
                                    <!-- Single Blog Start -->
                                    <div class="single-blog">
                                        <!-- Blog Thumb Start -->
                                        <div class="blog-thumb">
                                            <a href="blog-details.html">
                                                <img class="fit-image" src="assets/images/blog/blog-medium/1.png" alt="Blog Image">
                                            </a>
                                        </div>
                                        <!-- Blog Thumb End -->
                                        <!-- Blog Content Start -->
                                        <div class="blog-content">
                                            <div class="blog-meta">
                                                <p>03/11/2022 | <span>Admin</span></p>
                                            </div>
                                            <h5 class="blog-title">
                                                <a href="blog-details.html">It is a long established fact that a reader will be distracted</a>
                                            </h5>
                                        </div>
                                        <!-- Blog Content End -->
                                    </div>
                                    <!-- Single Blog End -->
                                </div>

                                <div class="swiper-slide">
                                    <!-- Single Blog Start -->
                                    <div class="single-blog">
                                        <!-- Blog Thumb Start -->
                                        <div class="blog-thumb">
                                            <a href="blog-details.html">
                                                <img class="fit-image" src="assets/images/blog/blog-medium/4.png" alt="Blog Image">
                                            </a>
                                        </div>
                                        <!-- Blog Thumb End -->
                                        <!-- Blog Content Start -->
                                        <div class="blog-content">
                                            <div class="blog-meta">
                                                <p>03/11/2022 | <span>Admin</span></p>
                                            </div>
                                            <h5 class="blog-title">
                                                <a href="blog-details.html">There are many variations of passages of lorem ipsum</a>
                                            </h5>
                                        </div>
                                        <!-- Blog Content End -->
                                    </div>
                                    <!-- Single Blog End -->
                                </div>

                                <div class="swiper-slide">
                                    <!-- Single Blog Start -->
                                    <div class="single-blog">
                                        <!-- Blog Thumb Start -->
                                        <div class="blog-thumb">
                                            <a href="blog-details.html">
                                                <img class="fit-image" src="assets/images/blog/blog-medium/2.png" alt="Blog Image">
                                            </a>
                                        </div>
                                        <!-- Blog Thumb End -->
                                        <!-- Blog Content Start -->
                                        <div class="blog-content">
                                            <div class="blog-meta">
                                                <p>03/11/2022 | <span>Admin</span></p>
                                            </div>
                                            <h5 class="blog-title">
                                                <a href="blog-details.html">The standard chunk of lorem ipsum used since</a>
                                            </h5>
                                        </div>
                                        <!-- Blog Content End -->
                                    </div>
                                    <!-- Single Blog End -->
                                </div>

                            </div>

                            <!-- Swiper Pagination Start -->
                            <div class="swiper-pagination d-block d-md-none"></div>
                            <!-- Swiper Pagination End -->

                            <!-- Next Previous Button Start -->
                            <div class="swiper-blog-button-next swiper-button-next swiper-nav-button d-none d-md-flex"><i class="pe-7s-angle-right"></i></div>
                            <div class="swiper-blog-button-prev swiper-button-prev swiper-nav-button d-none d-md-flex"><i class="pe-7s-angle-left"></i></div>
                            <!-- Next Previous Button End -->
                        </div>
                    </div>
                    <!-- Latest Blog Carousel End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Latest Blog Section End -->

    <!-- Brand Logo Section Start -->
    <div class="section section-margin">
        <div class="container">
            <div class="border-top border-bottom">
                <div class="row">
                    <div class="col-12" data-aos="fade-up" data-aos-delay="200">
                        <!-- Brand Logo Wrapper Start -->
                        <div class="brand-logo-carousel arrow-outside-container">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">

                                    <!-- Single Brand Logo Start -->
                                    <div class="swiper-slide single-brand-logo">
                                        <a href="#"><img src="assets/images/brand-logo/11.png" alt="Brand Logo"></a>
                                    </div>
                                    <!-- Single Brand Logo End -->

                                    <!-- Single Brand Logo Start -->
                                    <div class="swiper-slide single-brand-logo">
                                        <a href="#"><img src="assets/images/brand-logo/22.png" alt="Brand Logo"></a>
                                    </div>
                                    <!-- Single Brand Logo End -->

                                    <!-- Single Brand Logo Start -->
                                    <div class="swiper-slide single-brand-logo">
                                        <a href=""><img src="assets/images/brand-logo/33.png" alt="Brand Logo"></a>
                                    </div>
                                    <!-- Single Brand Logo End -->

                                    <!-- Single Brand Logo Start -->
                                    <div class="swiper-slide single-brand-logo">
                                        <a href="#"><img src="assets/images/brand-logo/44.png" alt="Brand Logo"></a>
                                    </div>
                                    <!-- Single Brand Logo End -->

                                    <!-- Single Brand Logo Start -->
                                    <div class="swiper-slide single-brand-logo">
                                        <a href="#"><img src="assets/images/brand-logo/55.png" alt="Brand Logo"></a>
                                    </div>
                                    <!-- Single Brand Logo End -->

                                    <!-- Single Brand Logo Start -->
                                    <div class="swiper-slide single-brand-logo">
                                        <a href="#"><img src="assets/images/brand-logo/11.png" alt="Brand Logo"></a>
                                    </div>
                                    <!-- Single Brand Logo End -->

                                </div>

                                <!-- Swiper Pagination Start -->
                                <div class="swiper-pagination d-none"></div>
                                <!-- Swiper Pagination End -->

                                <!-- Next Previous Button Start -->
                                <div class="swiper-logo-button-next swiper-button-next swiper-nav-button d-none d-md-flex"><i class="pe-7s-angle-right"></i></div>
                                <div class="swiper-logo-button-prev swiper-button-prev swiper-nav-button d-none d-md-flex"><i class="pe-7s-angle-left"></i></div>
                                <!-- Next Previous Button End -->
                            </div>
                        </div>
                        <!-- Brand Logo Wrapper End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Brand Logo Section End -->

   <%@ include file="include/footer.jsp" %>


    <!-- Modal Start  -->
    <div class="modalquickview modal fade" id="quick-view" tabindex="-1" aria-labelledby="quick-view" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <button class="btn close" data-bs-dismiss="modal">×</button>
                <div class="row">
                    <div class="col-md-6 col-12">

                        <!-- Product Details Image Start -->
                        <div class="modal-product-carousel">

                            <!-- Single Product Image Start -->
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <a class="swiper-slide" href="#">
                                        <img class="w-100" src="assets/images/products/large-product/1.jpg" alt="Product">
                                    </a>
                                    <a class="swiper-slide" href="#">
                                        <img class="w-100" src="assets/images/products/large-product/2.jpg" alt="Product">
                                    </a>
                                    <a class="swiper-slide" href="#">
                                        <img class="w-100" src="assets/images/products/large-product/3.jpg" alt="Product">
                                    </a>
                                    <a class="swiper-slide" href="#">
                                        <img class="w-100" src="assets/images/products/large-product/4.jpg" alt="Product">
                                    </a>
                                    <a class="swiper-slide" href="#">
                                        <img class="w-100" src="assets/images/products/large-product/5.jpg" alt="Product">
                                    </a>
                                </div>

                                <!-- Swiper Pagination Start -->
                                <!-- <div class="swiper-pagination d-md-none"></div> -->
                                <!-- Swiper Pagination End -->

                                <!-- Next Previous Button Start -->
                                <div class="swiper-product-button-next swiper-button-next"><i class="pe-7s-angle-right"></i></div>
                                <div class="swiper-product-button-prev swiper-button-prev"><i class="pe-7s-angle-left"></i></div>
                                <!-- Next Previous Button End -->
                            </div>
                            <!-- Single Product Image End -->

                        </div>
                        <!-- Product Details Image End -->

                    </div>
                    <div class="col-md-6 col-12 overflow-hidden position-relative">

                        <!-- Product Summery Start -->
                        <div class="product-summery position-relative">

                            <!-- Product Head Start -->
                            <div class="product-head mb-3">
                                <h2 class="product-title">Sample product title</h2>
                            </div>
                            <!-- Product Head End -->

                            <!-- Rating Start -->
                            <span class="ratings justify-content-start mb-2">
                            <span class="rating-wrap">
                                <span class="star" style="width: 100%"></span>
                            </span>
                            <span class="rating-num">(4)</span>
                            </span>
                            <!-- Rating End -->

                            <!-- Price Box Start -->
                            <div class="price-box mb-2">
                                <span class="regular-price">$80.00</span>
                                <span class="old-price"><del>$90.00</del></span>
                            </div>
                            <!-- Price Box End -->

                            <!-- Description Start -->
                            <p class="desc-content mb-5">I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
                            <!-- Description End -->

                            <!-- Quantity Start -->
                            <div class="quantity d-flex align-items-center mb-5">
                                <span class="me-2"><strong>Qty: </strong></span>
                                <div class="cart-plus-minus">
                                    <input class="cart-plus-minus-box" value="1" type="text">
                                    <div class="dec qtybutton"></div>
                                    <div class="inc qtybutton"></div>
                                </div>
                            </div>
                            <!-- Quantity End -->

                            <!-- Cart Button Start -->
                            <div class="cart-btn mb-4">
                                <div class="add-to_cart">
                                    <a class="btn btn-dark btn-hover-primary" href="cart.html">Add to cart</a>
                                </div>
                            </div>
                            <!-- Cart Button End -->

                            <!-- Action Button Start -->
                            <div class="actions border-bottom mb-4 pb-4">
                                <a href="compare.html" title="Compare" class="action compare"><i class="pe-7s-refresh-2"></i> Compare</a>
                                <a href="wishlist.html" title="Wishlist" class="action wishlist"><i class="pe-7s-like"></i> Wishlist</a>
                            </div>
                            <!-- Action Button End -->

                            <!-- Social Shear Start -->
                            <div class="social-share">
                                <span><strong>Social: </strong></span>
                                <a href="#" class="facebook-color"><i class="fa fa-facebook"></i> Like</a>
                                <a href="#" class="twitter-color"><i class="fa fa-twitter"></i> Tweet</a>
                                <a href="#" class="pinterest-color"><i class="fa fa-pinterest"></i> Save</a>
                            </div>
                            <!-- Social Shear End -->

                            <!-- Payment Option Start -->
                            <div class="payment-option mt-4 d-flex">
                                <span><strong>Payment: </strong></span>
                                <a href="#">
                                    <img class="fit-image ms-1" src="assets/images/payment/payment.png" alt="Payment Option Image">
                                </a>
                            </div>
                            <!-- Payment Option End -->

                            <!-- Product Delivery Policy Start -->
                            <ul class="product-delivery-policy border-top pt-4 mt-4 border-bottom pb-4">
                                <li> <i class="fa fa-check-square"></i> <span>Security Policy (Edit With Customer Reassurance Module)</span></li>
                                <li><i class="fa fa-truck"></i><span>Delivery Policy (Edit With Customer Reassurance Module)</span></li>
                                <li><i class="fa fa-refresh"></i><span>Return Policy (Edit With Customer Reassurance Module)</span></li>
                            </ul>
                            <!-- Product Delivery Policy End -->

                        </div>
                        <!-- Product Summery End -->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal End  -->

    <a href="#" class="scroll-top show" id="scroll-top">
        <i class="arrow-top pe-7s-angle-up-circle"></i>
        <i class="arrow-bottom pe-7s-angle-up-circle"></i>
    </a>

    <!-- Mobile Menu Start -->
    <div class="mobile-menu-wrapper">
        <div class="offcanvas-overlay"></div>

        <!-- Mobile Menu Inner Start -->
        <div class="mobile-menu-inner">

            <!-- Button Close Start -->
            <div class="offcanvas-btn-close">
                <i class="pe-7s-close"></i>
            </div>
            <!-- Button Close End -->

            <!-- Mobile Menu Inner Wrapper Start -->
            <div class="mobile-menu-inner-wrapper">
                <!-- Mobile Menu Search Box Start -->
                <div class="search-box-offcanvas">
                    <form>
                        <input class="search-input-offcanvas" type="text" placeholder="Search product...">
                        <button class="search-btn"><i class="pe-7s-search"></i></button>
                    </form>
                </div>
                <!-- Mobile Menu Search Box End -->

                <!-- Mobile Menu Start -->
                <div class="mobile-navigation">
                    <nav>
                        <ul class="mobile-menu">
                            <li class="has-children">
                                <a href="#">Home <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown">
                                    <li><a href="index.html">Home One</a></li>
                                    <li><a href="index-2.html">Home Two</a></li>
                                    <li><a href="index-3.html">Home Three</a></li>
                                </ul>
                            </li>
                            <li class="has-children">
                                <a href="#">Shop <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="dropdown">
                                    <li><a href="shop.jsp">Shop Grid</a></li>
                                    <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                    <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                    <li><a href="shop-list-fullwidth.html">Shop List Fullwidth</a></li>
                                    <li><a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a></li>
                                    <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="cart.html">Shopping Cart</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="compare.html">Compare</a></li>
                                </ul>
                            </li>
                            <li class="has-children">
                                <a href="#">Product <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="dropdown">
                                    <li><a href="single-product.html">Single Product</a></li>
                                    <li><a href="single-product-sale.html">Single Product Sale</a></li>
                                    <li><a href="single-product-group.html">Single Product Group</a></li>
                                    <li><a href="single-product-normal.html">Single Product Normal</a></li>
                                    <li><a href="single-product-affiliate.html">Single Product Affiliate</a></li>
                                    <li><a href="single-product-slider.html">Single Product Slider</a></li>
                                    <li><a href="single-product-gallery-left.html">Gallery Left</a></li>
                                    <li><a href="single-product-gallery-right.html">Gallery Right</a></li>
                                    <li><a href="single-product-tab-style-left.html">Tab Style Left</a></li>
                                    <li><a href="single-product-tab-style-right.html">Tab Style Right</a></li>
                                    <li><a href="single-product-sticky-left.html">Sticky Left</a></li>
                                    <li><a href="single-product-sticky-right.html">Sticky Right</a></li>
                                </ul>
                            </li>
                            <li class="has-children">
                                <a href="#">Pages <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="dropdown">
                                    <li><a href="about.html">About Us</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                    <li><a href="faq.html">Faq</a></li>
                                    <li><a href="error-404.html">Error 404</a></li>
                                    <li><a href="my-account.html">My Account</a></li>
                                    <li><a href="login.html">Loging | Register</a></li>
                                </ul>
                            </li>
                            <li class="has-children">
                                <a href="#">Blog <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="dropdown">
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                    <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                    <li><a href="blog-details.html">Blog Details</a></li>
                                    <li><a href="blog-details-sidebar.html">Blog Details Sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- Mobile Menu End -->

                <!-- Language, Currency & Link Start -->
                <div class="offcanvas-lag-curr mb-6">
                    <div class="header-top-lan-curr-link">
                        <div class="header-top-lan dropdown">
                            <h4 class="title">Language:</h4>
                            <button class="dropdown-toggle" data-bs-toggle="dropdown">English <i class="fa fa-angle-down"></i></button>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a class="dropdown-item" href="#">English</a></li>
                                <li><a class="dropdown-item" href="#">Japanese</a></li>
                                <li><a class="dropdown-item" href="#">Arabic</a></li>
                                <li><a class="dropdown-item" href="#">Romanian</a></li>
                            </ul>
                        </div>
                        <div class="header-top-curr dropdown">
                            <h4 class="title">Currency:</h4>
                            <button class="dropdown-toggle" data-bs-toggle="dropdown">USD <i class="fa fa-angle-down"></i></button>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a class="dropdown-item" href="#">USD</a></li>
                                <li><a class="dropdown-item" href="#">Pound</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Language, Currency & Link End -->

                <!-- Contact Links/Social Links Start -->
                <div class="mt-auto bottom-0">

                    <!-- Contact Links Start -->
                    <ul class="contact-links">
                        <li><i class="fa fa-phone"></i><a href="#"> +012 3456 789</a></li>
                        <li><i class="fa fa-envelope-o"></i><a href="#"> info@example.com</a></li>
                        <li><i class="fa fa-clock-o"></i> <span>Monday - Sunday 9.00 - 18.00</span> </li>
                    </ul>
                    <!-- Contact Links End -->

                    <!-- Social Widget Start -->
                    <div class="widget-social">
                        <a title="Facebook" href="#"><i class="fa fa-facebook-f"></i></a>
                        <a title="Twitter" href="#"><i class="fa fa-twitter"></i></a>
                        <a title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                        <a title="Youtube" href="#"><i class="fa fa-youtube"></i></a>
                        <a title="Vimeo" href="#"><i class="fa fa-vimeo"></i></a>
                    </div>
                    <!-- Social Widget Ende -->
                </div>
                <!-- Contact Links/Social Links End -->
            </div>
            <!-- Mobile Menu Inner Wrapper End -->

        </div>
        <!-- Mobile Menu Inner End -->
    </div>
    <!-- Mobile Menu End -->
    
	<%@ include file="include/script.jsp" %>
   
</body>

</html>