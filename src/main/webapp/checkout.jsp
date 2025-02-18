<%
if (session.getAttribute("uName") == null || session.getAttribute("uName").equals(""))
{
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Careplus | Checkout</title>

    <%@ include file="include/link.jsp" %>
     <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.all.min.js"></script>
     <script src="assets/js/vendor/modernizr-3.11.7.min.js"></script>
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
                        <li class="active"> Checkout Page</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End -->

    </div>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Start -->
    <div class="section section-margin">
        <div class="container">
            
            <div class="row mb-n4">
                <div class="col-lg-6 col-12 mb-4">

                    <!-- Checkbox Form Start -->
                    <form id="myForm" >
                        <div class="checkbox-form">
                            <h3 class="title">Card Details</h3>
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="checkout-form-list">
                                        <label>Card Number</label>
                                        <input class="form-control" type="text" name="cardNum" required>
                                   		<input type="hidden" name="secret" value="PlaceOrder">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Expire Date <span class="required">*</span></label>
                                        <input class="form-control" type="date" name="expDate" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>CVV<span class="required">*</span></label>
                                        <input class="form-control" type="text" name="cvv" required>
                                    </div>
                                </div>

								 <h3 class="title">Address</h3>

                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>State / County <span class="required">*</span></label>
                                        <input placeholder="" type="text" name="state" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Postcode / Zip <span class="required">*</span></label>
                                        <input placeholder="" type="text" name="pincode" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Email Address <span class="required">*</span></label>
                                        <input placeholder="" type="email" name="email" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Phone <span class="required">*</span></label>
                                        <input type="text" name="phone" required>
                                    </div>
                                </div>
                            </div>

                            
                        </div>
                    
                </div>

                <div class="col-lg-6 col-12 mb-4">

                    <!-- Your Order Area Start -->
                    <div class="your-order-area border">

                        <!-- Title Start -->
                        <h3 class="title">Your order</h3>
                        <!-- Title End -->

                        <!-- Your Order Table Start -->
                        <div class=" table-responsive">
                            <table class="table">
                                <thead>
                                    <td>#</td>
                                     <td>Name</td>
                                     <td>Qantity</td>
                                     <td>Price</td>
                                     <td>Total</td>
                                </thead>
                              
                                <tbody id="bindData">
                                    
                                </tbody>
                                 <!-- Table Footer Start -->
                                <tfoot>
                                    
                                    <tr class="order-total" style="font-size:20px;!important">
                                        <th class="text-start ps-0">Order Total</th>
                                        <td class="text-end pe-0"><strong style="font-size:20px;!important">$<span class="amount" id="total" ></span></strong></td>
                                    </tr>
                                </tfoot>
                                <!-- Table Footer End -->

                            </table>
                           
                        </div>
                        <!-- Your Order Table End -->

                         <div class="payment-accordion-order-button">
                            <div class="order-button-payment">
                                <input type="submit" value="Place Order" class="btn btn-primary btn-hover-secondary rounded-0 w-100">
                            </div>
                            </form>
                        </div>
                        <!-- Payment Accordion Order Button End -->
                    </div>
                    <!-- Your Order Area End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Checkout Section End -->

    <%@ include file="include/footer.jsp" %>


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
 		console.log("Page Ready..");
 		$("#myForm").on('submit',function(event){
 			event.preventDefault();
			var formdata=$(this).serialize();
 			$.ajax({
 				url     :"OrderServlet",
 				method  :"Post",
 				data    :formdata,
 				success : function(response){
 					console.log(response);
 					if(response.trim()=="OrderPlaced"){
 						Swal.fire({
		  					  position: 'center',
		  					  icon: 'success',
		  					  title: 'Congratulations Your Order Has Been Successfully Placed!',
		  					  showConfirmButton: false,
		  					  timer: 3000
		  					})
 						
 					}else if(response.trim()=="paymentFailed"){
 						Swal.fire({
			  		  		  position: 'center',
			  		  		  icon: 'error',
			  		  		  title: 'Payment Failed!',
			  		  		  showConfirmButton: false,
			  		  		  timer: 3000
			  		  		})
 						
 					}else{
 						Swal.fire({
			  		  		  position: 'center',
			  		  		  icon: 'error',
			  		  		  title: 'Order Not Placed!',
			  		  		  showConfirmButton: false,
			  		  		  timer: 3000
			  		  		})
 					}
 					
 					$("#myForm")[0].reset();
 				},
				error : function(response){
				 	$.toast({
							text: "Somthing went to wrong on server!", 
							heading: 'Role', 
							icon: 'error', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
						});
				},
 			});
 		});
 	});
 </script>
   <script type="text/javascript">
  $(document).ready(function(){
		getCartProduct();
	});
  function getCartProduct(){
		$.ajax({
			url:"CartServlet",
			method:"Post",
			data:{"secret":"getAllCartByUid"},
			dataType:"json",
			success : function (response){
				console.log(response);
				let result=0;
				let s="";
				let i=1;
				for(var key in response){
					if(response.hasOwnProperty(key)){
						s+="<tr><td>"+i+"</td>";
						s+="<td>"+response[key].pname+"</td>";
						s+="<td>"+response[key].qty+"</td>";
						s+="<td>"+response[key].basePrice+"</td>";
						s+="<td>"+response[key].totalPrice+"</td>";
						s+="</tr>";
						result+=response[key].totalPrice;
						i++;
					}
				}
				$("#bindData").html(s);
				$("#total").text(result);
			},
			error : function (){
				console.log("Something went to wrong on server!!!");
			}
		})
	}
  </script>
</body>

</html>