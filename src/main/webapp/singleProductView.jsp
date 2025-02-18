<%
if (session.getAttribute("uName") == null || session.getAttribute("uName").equals(""))
{
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% int pid=Integer.parseInt(request.getParameter("pid")); %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CarePlus | Single Product</title>
	<%@ include file="include/link.jsp" %>
</head>

<body>
		<%@ include file="include/header.jsp" %>
    

    <!-- Breadcrumb Section Start -->
    <div class="section">

        <!-- Breadcrumb Area Start -->
        <div class="breadcrumb-area bg-primary">
            <div class="container">
                <div class="breadcrumb-content">
                    <ul>
                        <li>
                            <a href="index.html"><i class="fa fa-home"></i> </a>
                        </li>
                        <li class="active"> Single Product Sale</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End -->

    </div>
    <!-- Breadcrumb Section End -->

    <!-- Single Product Section Start -->
    <div class="section section-margin-top">
        <div class="container">

            <div class="row">
                <div class="col-lg-5 offset-lg-0 col-md-8 offset-md-2 col-custom">

                    <!-- Product Details Image Start -->
                    <div class="product-details-img">

                        <!-- Single Product Image Start -->
                        <div class="single-product-img swiper-container product-gallery-top">
                            <div class="swiper-wrapper popup-gallery" id="mainImg">
                                
                                
                            </div>
                        </div>
                        <!-- Single Product Image End -->

                        <!-- Single Product Thumb Start -->
                        <div class="single-product-thumb swiper-container product-gallery-thumbs">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide" id="subImg1">
                                
                                </div>
                                <div class="swiper-slide" id="subImg2">
                                
                                </div>
                                <div class="swiper-slide" id="subImg3">
                               
                                </div>
                                <div class="swiper-slide" id="subImg4">
                                    
                                </div>
                               
                            </div>

                            <!-- Next Previous Button Start -->
                            <div class="swiper-button-next swiper-button-white"><i class="pe-7s-angle-right"></i></div>
                            <div class="swiper-button-prev swiper-button-white"><i class="pe-7s-angle-left"></i></div>
                            <!-- Next Previous Button End -->

                        </div>
                        <!-- Single Product Thumb End -->

                    </div>
                    <!-- Product Details Image End -->

                </div>
                <div class="col-lg-7 col-custom">

                    <!-- Product Summery Start -->
                    <div class="product-summery position-relative">

                        <!-- Product Head Start -->
                        <div class="product-head mb-3">
                            <h2 class="product-title" id="pName"></h2>
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
                        <div class="price-box mb-2" style="font-size:20px;color:#1dd4f5;!Important">
                            $<span class="regular-price" id="pPrice"></span>
                            <span class="old-price"><del>$500.00</del></span>
                        </div>
                        <!-- Price Box End -->

                        <!-- SKU Start -->
                        <div class="sku mb-3">
                            <span>SKU: 12345</span>
                        </div>
                        <!-- SKU End -->

                        <!-- Product Inventory Start -->
                        <div class="product-inventroy mb-3">
                            <span class="inventroy-title" id="avail"> </span>
                            <span class="inventory-varient"> Left in Stock</span>
                        </div>
                        <!-- Product Inventory End -->

                        <!-- Description Start -->
                        <p class="desc-content mb-5" id="pDesc">
                        
                        </p>
                        <!-- Description End -->

         			<form id="myForm" action="CartServlet" method="post">
                        <!-- Quantity Start -->
                         <div class="quantity d-flex align-items-center mb-5">
                            <span class="me-2"><strong>Qty: </strong></span>
                            <div >
                                <input value="1" name="qty" id="originalQty" min="1" max="5" type="number" class="form-control">
                                
                            </div>
                        </div> 
                        <!-- Quantity End -->

                        <!-- Cart Button Start -->
                        <div class="cart-btn mb-4">
                            <div class="add-to_cart">
                              
                              		<input type="hidden" name="hpid" id="hpid" >
                              		<input type="hidden" name="hprice" id="hprice">
                              		<input type="hidden" name="secret" value="AddToCart">
                              		<input class="btn btn-dark btn-hover-primary" type="submit" value="Add To Cart">
                              
                            </div>
                        </div>
                        <!-- Cart Button End -->
					</form>
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
                        <ul class="product-delivery-policy border-top pt-4 mt-4 border-bottom">
                            <li> <i class="fa fa-check-square"></i> <span>Security Policy (Edit With Customer Reassurance Module)</span></li>
                            <li><i class="fa fa-truck"></i><span>Delivery Policy (Edit With Customer Reassurance Module)</span></li>
                            <li><i class="fa fa-refresh"></i><span>Return Policy (Edit With Customer Reassurance Module)</span></li>
                        </ul>
                        <!-- Product Delivery Policy End -->

                    </div>
                    <!-- Product Summery End -->

                </div>
            </div>

            <div class="row section-margin">
                <!-- Single Product Tab Start -->
                <div class="col-lg-12 col-custom single-product-tab">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#connect-1" role="tab" aria-selected="true">Description</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#connect-2" role="tab" aria-selected="false">Reviews</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-bs-toggle="tab" href="#connect-3" role="tab" aria-selected="false">Shipping Policy</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="review-tab" data-bs-toggle="tab" href="#connect-4" role="tab" aria-selected="false">Size Chart</a>
                        </li>
                    </ul>
                    <div class="tab-content mb-text" id="myTabContent">
                        <div class="tab-pane fade show active" id="connect-1" role="tabpanel" aria-labelledby="home-tab">
                            <div class="desc-content p-3">
                                <p class="mb-3">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>
                                <p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="connect-2" role="tabpanel" aria-labelledby="profile-tab">
                            <!-- Start Single Content -->
                            <div class="product_tab_content border p-3">
                                <!-- Start Single Review -->
                                <div class="single-review d-flex mb-4">

                                    <!-- Review Thumb Start -->
                                    <div class="review_thumb">
                                        <img alt="review images" src="assets/images/review/1.jpg">
                                    </div>
                                    <!-- Review Thumb End -->

                                    <!-- Review Details Start -->
                                    <div class="review_details">
                                        <div class="review_info mb-2">

                                            <!-- Rating Start -->
                                            <span class="ratings justify-content-start mb-3">
                                                    <span class="rating-wrap">
                                                        <span class="star" style="width: 100%"></span>
                                            </span>
                                            <span class="rating-num">(1)</span>
                                            </span>
                                            <!-- Rating End -->

                                            <!-- Review Title & Date Start -->
                                            <div class="review-title-date d-flex">
                                                <h5 class="title">Admin - </h5><span> January 19, 2022</span>
                                            </div>
                                            <!-- Review Title & Date End -->

                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in viverra ex, vitae vestibulum arcu. Duis sollicitudin metus sed lorem commodo, eu dapibus libero interdum. Morbi convallis viverra erat, et aliquet orci congue vel. Integer in odio enim. Pellentesque in dignissim leo. Vivamus varius ex sit amet quam tincidunt iaculis.</p>
                                    </div>
                                    <!-- Review Details End -->

                                </div>
                                <!-- End Single Review -->

                                <!-- Rating Wrap Start -->
                                <div class="rating_wrap">
                                    <h5 class="rating-title mb-2">Add a review </h5>
                                    <p class="mb-2">Your email address will not be published. Required fields are marked *</p>
                                    <h6 class="rating-sub-title mb-2">Your Rating</h6>

                                    <!-- Rating Start -->
                                    <span class="ratings justify-content-start mb-3">
                                            <span class="rating-wrap">
                                                <span class="star" style="width: 100%"></span>
                                    </span>
                                    <span class="rating-num">(2)</span>
                                    </span>
                                    <!-- Rating End -->

                                </div>
                                <!-- Rating Wrap End -->

                                <!-- Comments ans Replay Start -->
                                <div class="comments-area comments-reply-area">
                                    <div class="row">
                                        <div class="col-lg-12 col-custom">

                                            <!-- Comment form Start -->
                                            <form action="#" class="comment-form-area">
                                                <div class="row comment-input">

                                                    <!-- Input Name Start -->
                                                    <div class="col-md-6 col-custom comment-form-author mb-3">
                                                        <label>Name <span class="required">*</span></label>
                                                        <input type="text" required="required" name="Name">
                                                    </div>
                                                    <!-- Input Name End -->

                                                    <!-- Input Email Start -->
                                                    <div class="col-md-6 col-custom comment-form-emai mb-3">
                                                        <label>Email <span class="required">*</span></label>
                                                        <input type="text" required="required" name="email">
                                                    </div>
                                                    <!-- Input Email End -->

                                                </div>
                                                <!-- Comment Texarea Start -->
                                                <div class="comment-form-comment mb-3">
                                                    <label>Comment</label>
                                                    <textarea class="comment-notes" required="required"></textarea>
                                                </div>
                                                <!-- Comment Texarea End -->

                                                <!-- Comment Submit Button Start -->
                                                <div class="comment-form-submit">
                                                    <button class="btn btn-dark btn-hover-primary">Submit</button>
                                                </div>
                                                <!-- Comment Submit Button End -->

                                            </form>
                                            <!-- Comment form End -->

                                        </div>
                                    </div>
                                </div>
                                <!-- Comments ans Replay End -->

                            </div>
                            <!-- End Single Content -->
                        </div>
                        <div class="tab-pane fade" id="connect-3" role="tabpanel" aria-labelledby="contact-tab">
                            <!-- Shipping Policy Start -->
                            <div class="shipping-policy mb-n2 p-3">
                                <h4 class="title-3 mb-4">Shipping policy for our store</h4>
                                <p class="desc-content mb-2">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate</p>
                                <ul class="policy-list mb-2">
                                    <li>1-2 business days (Typically by end of day)</li>
                                    <li><a href="#">30 days money back guaranty</a></li>
                                    <li>24/7 live support</li>
                                    <li>odio dignissim qui blandit praesent</li>
                                    <li>luptatum zzril delenit augue duis dolore</li>
                                    <li>te feugait nulla facilisi.</li>
                                </ul>
                                <p class="desc-content mb-2">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum</p>
                                <p class="desc-content mb-2">claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per</p>
                                <p class="desc-content mb-2">seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
                            </div>
                            <!-- Shipping Policy End -->
                        </div>
                        <div class="tab-pane fade" id="connect-4" role="tabpanel" aria-labelledby="review-tab">
                            <div class="size-tab table-responsive-lg p-3">
                                <h4 class="title-3 mb-4">Size Chart</h4>
                                <table class="table border mb-0">
                                    <tbody>
                                        <tr>
                                            <td class="cun-name"><span>UK</span></td>
                                            <td>18</td>
                                            <td>20</td>
                                            <td>22</td>
                                            <td>24</td>
                                            <td>26</td>
                                        </tr>
                                        <tr>
                                            <td class="cun-name"><span>European</span></td>
                                            <td>46</td>
                                            <td>48</td>
                                            <td>50</td>
                                            <td>52</td>
                                            <td>54</td>
                                        </tr>
                                        <tr>
                                            <td class="cun-name"><span>usa</span></td>
                                            <td>14</td>
                                            <td>16</td>
                                            <td>18</td>
                                            <td>20</td>
                                            <td>22</td>
                                        </tr>
                                        <tr>
                                            <td class="cun-name"><span>Australia</span></td>
                                            <td>28</td>
                                            <td>10</td>
                                            <td>12</td>
                                            <td>14</td>
                                            <td>16</td>
                                        </tr>
                                        <tr>
                                            <td class="cun-name"><span>Canada</span></td>
                                            <td>24</td>
                                            <td>18</td>
                                            <td>14</td>
                                            <td>42</td>
                                            <td>36</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Product Tab End -->
            </div>

        </div>
    </div>
    <!-- Single Product Section End -->

    <!-- Product Section Start -->
    <div class="section section-margin mt-0 position-relative">
        <div class="container">
            <!-- Section Title & Tab Start -->
            <div class="row mb-lg-8 mb-md-6 mb-4">

                <!-- Section Title Start -->
                <div class="col-lg col-12">
                    <div class="section-title mb-0 text-center">
                        <h2 class="title mb-2">Featured Collection</h2>
                        <p>Add featured products to weekly lineup</p>
                    </div>
                </div>
                <!-- Section Title End -->

            </div>
            <!-- Section Title & Tab End -->

            <!-- Products Start -->
            <div class="row">
                <div class="col">
                    <div class="product-carousel arrow-outside-container">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">

                                <!-- Product Start -->
                                <div class="swiper-slide">
                                    <div class="product-wrapper">
                                        <div class="product">
                                            <div class="thumb">
                                                <a href="single-product.html" class="image">
                                                    <img class="fit-image" src="assets/images/products/medium-product/1.jpg" alt="Product" />
                                                    <img class="second-image fit-image" src="assets/images/products/medium-product/3.jpg" alt="Product" />
                                                </a>
                                                <span class="badges">
														<span class="sale">-18%</span>
                                                </span>
                                                <div class="actions">
                                                    <a href="wishlist.html" class="action wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="compare.html" class="action compare"><i class="pe-7s-refresh-2"></i></a>
                                                    <a href="#" class="action quickview" data-bs-toggle="modal" data-bs-target="#quick-view"><i class="pe-7s-search"></i></a>
                                                </div>
                                                <div class="add-cart-btn">
                                                    <button class="btn btn-whited btn-hover-primary text-capitalize add-to-cart">Add To Cart</button>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <h5 class="title"><a href="single-product.html">Dinosaur Toys for Baby</a></h5>
                                                <span class="price">
														<span class="new">
															$12.50
														</span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Product End -->

                                <!-- Product Start -->
                                <div class="swiper-slide">
                                    <div class="product-wrapper">
                                        <div class="product">
                                            <div class="thumb">
                                                <a href="single-product.html" class="image">
                                                    <img class="fit-image" src="assets/images/products/medium-product/2.jpg" alt="Product" />
                                                </a>
                                                <span class="badges">
														<span class="sale">-20%</span>
                                                </span>
                                                <div class="actions">
                                                    <a href="wishlist.html" class="action wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="compare.html" class="action compare"><i class="pe-7s-refresh-2"></i></a>
                                                    <a href="#" class="action quickview" data-bs-toggle="modal" data-bs-target="#quick-view"><i class="pe-7s-search"></i></a>
                                                </div>
                                                <div class="add-cart-btn">
                                                    <button class="btn btn-sm btn-whited btn-hover-primary text-capitalize add-to-cart">Add To Cart</button>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <h5 class="title"><a href="single-product.html">Mini Car Toy for Kids</a></h5>
                                                <span class="price">
														<span class="new">$38.50</span>
                                                <span class="old">$42.85</span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Product End -->

                                <!-- Product Start -->
                                <div class="swiper-slide">
                                    <div class="product-wrapper">
                                        <div class="product">
                                            <div class="thumb">
                                                <a href="single-product.html" class="image">
                                                    <img class="fit-image" src="assets/images/products/medium-product/3.jpg" alt="Product" />
                                                </a>
                                                <span class="badges">
														<span class="new">New</span>
                                                </span>
                                                <div class="actions">
                                                    <a href="wishlist.html" class="action wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="compare.html" class="action compare"><i class="pe-7s-refresh-2"></i></a>
                                                    <a href="#" class="action quickview" data-bs-toggle="modal" data-bs-target="#quick-view"><i class="pe-7s-search"></i></a>
                                                </div>
                                                <div class="add-cart-btn">
                                                    <button class="btn btn-sm btn-whited btn-hover-primary text-capitalize add-to-cart">Add To Cart</button>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <h5 class="title"><a href="single-product.html">Robotics for Kids</a></h5>
                                                <span class="price">
														<span class="new">
															$28.50
														</span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Product End -->

                                <!-- Product Start -->
                                <div class="swiper-slide">
                                    <div class="product-wrapper">
                                        <div class="product">
                                            <div class="thumb">
                                                <a href="single-product.html" class="image">
                                                    <img class="fit-image" src="assets/images/products/medium-product/4.jpg" alt="Product" />
                                                </a>
                                                <div class="actions">
                                                    <a href="wishlist.html" class="action wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="compare.html" class="action compare"><i class="pe-7s-refresh-2"></i></a>
                                                    <a href="#" class="action quickview" data-bs-toggle="modal" data-bs-target="#quick-view"><i class="pe-7s-search"></i></a>
                                                </div>
                                                <div class="add-cart-btn">
                                                    <button class="btn btn-sm btn-whited btn-hover-primary text-capitalize add-to-cart">Add To Cart</button>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <h5 class="title"><a href="single-product.html">Baby Cat Doll</a></h5>
                                                <span class="price">
														<span class="new">
															$25.50
														</span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Product End -->

                            </div>

                            <div class="swiper-pagination d-block d-md-none"></div>
                            <div class="swiper-button-prev swiper-nav-button d-none d-md-flex"><i class="pe-7s-angle-left"></i></div>
                            <div class="swiper-button-next swiper-nav-button d-none d-md-flex"><i class="pe-7s-angle-right"></i></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Products End -->
        </div>
    </div>
    <!-- Product Section End -->

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
                                $<span class="regular-price" ></span>
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
                                    <li><a href="shop.html">Shop Grid</a></li>
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

    <!-- Scripts -->
  <%@ include file="include/script.jsp" %>
  
  
  <script type="text/javascript">
	$(document).ready(function(){  		  		
		$("#originalQty").change(function () {
			const qty=$('#originalQty').val();
			const price=$('#hprice').val();  	
			
			$('#pPrice').html(qty*price); 
		});
	});
</script>
  
  
  
  
  <script type="text/javascript">
  	$(document).ready(function(){
  		var pid=<%= pid%>
  		
  		$.ajax({
			url: "ProductServlet",
 			method:"Post",
			data:{"secret":"getProductById","pid":pid},
			dataType:"json",
			success : function(response){
				
				$("#mainImg").html("<a class='swiper-slide w-100' href='images/productImg/"+response.imgName+"'> <img class='w-100' src='images/productImg/"+response.imgName+"' alt='Product'>  </a");
				$("#subImg1").html("<img src='images/productImg/"+response.imgName+"' alt='Product'>");
				$("#subImg2").html("<img src='images/productImg/"+response.imgName+"' alt='Product'>");
				$("#subImg3").html("<img src='images/productImg/"+response.imgName+"' alt='Product'>");
				$("#subImg4").html("<img src='images/productImg/"+response.imgName+"' alt='Product'>");
				$("#pName").text(response.pname);
				$("#pPrice").text(response.price);
				$("#avail").html("<strong>Availability:</strong>"+response.availability+"");
				$("#pDesc").text(response.pdesc);
				$("#hprice").val(response.price);
				$("#hpid").val(response.pid);
				
			},
			error : function(){
				$.toast({
				text: "Something Went Wrong On Server!!!", 
				heading: 'Product', 
				icon: 'error', 
				hideAfter: 6000,
				position: 'top-center', 
				textAlign: 'left', 
				loader: true
		   });
			}
			
		})
  	})
  </script>
   
</body>

</html>