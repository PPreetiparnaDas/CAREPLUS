
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int userId=(int)session.getAttribute("uId");
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Careplus | MyAccount</title>

    <%@include file="include/link.jsp" %>
</head>

<body>
	 <%@include file="include/header.jsp" %>
    


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
                        <li class="active"> My Account Page</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End -->

    </div>
    <!-- Breadcrumb Section End -->

    <!-- My Account Section Start -->
    <div class="section section-margin">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">

                    <!-- My Account Page Start -->
                    <div class="myaccount-page-wrapper">
                        <div class="row">

                            <!-- My Account Tab Menu Start -->
                            <div class="col-lg-3 col-md-4">
                                <div class="myaccount-tab-menu nav" role="tablist">
                                	<a href="#account-info" data-bs-toggle="tab"><i class="fa fa-user"></i> Account Details</a>
                                    <a href="#changePassword" data-bs-toggle="tab"><i class="fa fa-map-marker"></i> Change Password</a>
                                    <a href="#download" data-bs-toggle="tab"><i class="fa fa-cart-arrow-down"></i> Orders</a>
                                    <a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a>
                                </div>
                            </div>
                            <!-- My Account Tab Menu End -->

                            <!-- My Account Tab Content Start -->
                            <div class="col-lg-9 col-md-8">
                                <div class="tab-content" id="myaccountContent">

                                    

                                    

                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="download" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3 class="title">Downloads</h3>
                                            <div class="myaccount-table table-responsive text-center">
                                                <table class="table table-bordered">
                                                    <thead class="thead-light">
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Product Name</th>
                                                            <th>Qty</th>
                                                            <th>Total Amount</th>
                                                            <th>Date</th>
                                                            <th>Status</th>
                                                            <th>Invoice</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="bindData">
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->

                                    
							  <div class="tab-pane fade" id="changePassword" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3 class="title">Change Password</h3>
                                            <div class="account-details-form">
											    <form id="changePassForm">
											        <div class="single-input-item mb-3">
											            <label for="oldPass" class="required mb-1">Old Password</label>
											            <input type="password" id="oldPass" name="oldPass" required />
											            <span id="oldPassError" class="text-danger"></span>
											            <input type="hidden" name="secret" value="ChangePassword">
											        </div>
											        <div class="single-input-item mb-3">
											            <label for="newPass" class="required mb-1">New Password</label>
											            <input type="password" id="newPass" name="newPass" required />
											            <span id="newPassError" class="text-danger"></span>
											        </div>
											        <div class="single-input-item mb-3">
											            <label for="confPass" class="required mb-1">Confirm Password</label>
											            <input type="password" id="confPass" name="confPass" required />
											            <span id="confPassError" class="text-danger"></span>
											        </div>
											
											        <div class="single-input-item single-item-button">
											            <input type="submit" value="Save Changes" class="btn btn-dark btn-hover-primary rounded-0">
											        </div>
											    </form>
											</div>
                                        </div>
                                    </div>
                                    

                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade  " id="account-info" role="tabpanel">
                                        <div class="myaccount-content">
                                        <%
                                			String img2=(String)session.getAttribute("uImg");
                                    
                                 		%>
                                         <div class="d-flex justify-content-center align-items-center">
    											<img src="images/custImg/<%=img2 %>" height="60px" width="60px" class="rounded-circle" alt="Circular Image">
										 </div>

                                             
                                            <div class="account-details-form">
                                            <h3 class="title">Account Details</h3>
                                                <form id="myAccForm">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item mb-3">
                                                                <label for="uName" class="required mb-1">Name</label>
                                                                <input type="text" id="uName"  name="uName" required />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item mb-3">
                                                                <label for="uEmail" class="required mb-1">Email</label>
                                                                <input type="email" id="uEmail" name="uEmail" required/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="single-input-item mb-3">
                                                        <label for="uPhone" class="required mb-1">Phone</label>
                                                        <input type="text" id="uPhone" name="uPhone" required />
                                                    </div>
                                                    <div class="single-input-item mb-3">
                                                        <label for="uadd" class="required mb-1"> Addres</label>
                                                        <input type="text" id="uadd" name="uAdd" required/>
                                                        <input type="hidden" id="uId" name="uId" />
                                                        <input type="hidden" name="secret" value="MyAccountUpdate"  />
                                                    </div>
                                                    
                                                    <div class="single-input-item single-item-button">
                                                        <button class="btn btn btn-dark btn-hover-primary rounded-0">Save Changes</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                     <!-- Single Tab Content End -->

                                </div>
                            </div>
                            <!-- My Account Tab Content End -->

                        </div>
                    </div>
                    <!-- My Account Page End -->

                </div>
            </div>

        </div>
    </div>
    <!-- My Account Section End -->

    <%@include file="include/footer.jsp" %>
		

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

    <%@include file="include/script.jsp" %>
    
    
    <script type="text/javascript">
 	$(document).ready(function(){
 		console.log("Page Ready..");
 		$("#changePassForm").on('submit',function(event){
 			event.preventDefault();
			var formdata=$(this).serialize();
 			$.ajax({
 				url     :"CustomerServlet",
 				method  :"Post",
 				data    :formdata,
 				success : function(response){
 					if (response.trim()=="done") {
						$.toast({
							text: "Password Updated Successfully!!!", 
							heading: 'Password', 
							icon: 'success', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
						});
				} else if(response.trim()=="oldPassShouldNotMatch") {
					$.toast({
							text: "Password Should Not Match !!", 
							heading: 'Password', 
							icon: 'error', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
						});
				}else{
					$.toast({
						text: "Invalid Old Password!!", 
						heading: 'Password', 
						icon: 'error', 
						hideAfter: 6000,
						position: 'top-center', 
						textAlign: 'left', 
						loader: true
					});
				}
					
 					$("#changePassForm")[0].reset();
 				},
				error : function(response){
				 	$.toast({
							text: "Somthing went to wrong on server!", 
							heading: 'Password', 
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
 	<script>
    const oldPass = document.getElementById("oldPass");
    const newPass = document.getElementById("newPass");
    const confPass = document.getElementById("confPass");

    const oldPassError = document.getElementById("oldPassError");
    const newPassError = document.getElementById("newPassError");
    const confPassError = document.getElementById("confPassError");

    function validatePasswords() {
        oldPassError.textContent = "";
        newPassError.textContent = "";
        confPassError.textContent = "";

        // Check if old password and new password are the same
        if (oldPass.value && newPass.value && oldPass.value === newPass.value) {
            oldPassError.textContent = "New password cannot be the same as old password.";
        }

        // Check if new password and confirm password match
        if (newPass.value && confPass.value && newPass.value !== confPass.value) {
            confPassError.textContent = "Confirm password does not match new password.";
        }
    }

    oldPass.addEventListener("input", validatePasswords);
    newPass.addEventListener("input", validatePasswords);
    confPass.addEventListener("input", validatePasswords);

    document.getElementById("changePassForm").addEventListener("submit", function(event) {
        validatePasswords();

        if (oldPassError.textContent || newPassError.textContent || confPassError.textContent) {
            event.preventDefault(); // Stop form submission if validation fails
        }
    });
</script>
 		<script type="text/javascript">
  	$(document).ready(function(){
  		getData();
  	});
  	function getData(){
  		$.ajax({
  			url:"OrderServlet",
  			method:"Post",
  			data:{"secret":"viewOrdersByUserId"},
  			dataType:"json",
  			success : function (response){
  				let s="";
  				let i=1;
  				for(var key in response){
  					if(response.hasOwnProperty(key)){
  						s+="<tr>";
  						s+="<td>"+i+"</td>";
  						s+="<td><div '>";
   					    s+="<img src='images/productImg/"+response[key].imgName+"'class='rounded-circle' width='50' height='50' alt=''>";
   					    s+="<div class=''><p class='mb-0'>"+response[key].pname+"</p></div></div> </td>";
  						s+="<td>"+response[key].qty+"</td>"; 
  						s+="<td>"+response[key].totalAmount+"</td>";
  						s+="<td>"+response[key].oDate+"</td>";
  						if(response[key].status=="active"){
  							s+="<td><span class='badge btn-sm btn-success w-100'>Success</span></td>";
  						}else{
  							s+="<td><span class='badge btn-sm btn-warning w-100'>Pending</span></td>";
  						}
  						s+="<td><a href='invoice.jsp?oId="+response[key].oid+"' class='btn btn btn-dark btn-hover-primary rounded-0'><i class='fa fa-cloud-download me-1'></i>Download File</a></td>";
  						s+="</tr>";
  						i++;
  					}
  				}
  				$("#bindData").html(s);
  			},
			error : function (){
  				console.log("Something went to wrong on server!!!");
  			}
  		})
  	}
  	
</script>
 	
 
    <script type="text/javascript">
  	$(document).ready(function(){
  		getUserData();
  		
  	});
  	function getUserData(){
  		
  		var uId=<%=userId%>;
  		$.ajax({
			url: "CustomerServlet",
 			method:"Post",
			data:{"secret":"getCustomerById","uId":uId},
			dataType:"json",
			success : function(response){
				$("#uName").val(response.uName);
				$("#uEmail").val(response.uEmail);
				$("#uadd").val(response.uAdd);
				$("#uPhone").val(response.uPhone);
				$("#uId").val(response.uId);
			},
			error : function(){
				$.toast({
				text: "Something Went Wrong On Server!!!", 
				heading: 'Customer', 
				icon: 'error', 
				hideAfter: 6000,
				position: 'top-center', 
				textAlign: 'left', 
				loader: true
		   });
			}
			
		})
  	}
  	
  	
  	
  	$("#myAccForm").on('submit',function(event){
			event.preventDefault();
		var formdata=$(this).serialize();
			$.ajax({
				url     :"CustomerServlet",
				method  :"Post",
				data    :formdata,
				success : function(response){
					if (response.trim()=="done") {
						$.toast({
							text: "Updated Successfully!!!", 
							heading: 'My Account', 
							icon: 'success', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
						});
				} else {
					
					$.toast({
							text: "Updated Failed!!!", 
							heading: 'My Account', 
							icon: 'error', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
						});
				}
					getUserData();
				},
			error : function(response){
			 	$.toast({
						text: "Somthing went to wrong on server!", 
						heading: 'My Account', 
						icon: 'error', 
						hideAfter: 6000,
						position: 'top-center', 
						textAlign: 'left', 
						loader: true
					});
			},
			});
		});
  	</script>
</body>

</html>