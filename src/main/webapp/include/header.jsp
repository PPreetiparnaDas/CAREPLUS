<!-- Header Section Start -->
    <div class="header section">

        <!-- Header Top Start -->
        <div class="header-top bg-primary">
            <div class="container">
                <div class="row align-items-center">

                    <!-- Header Top Message Start -->
                    <div class="col-12">
                        <div class="header-top-msg-wrapper text-center">
                            <p class="header-top-message text-center">Up to 50% off <a href="shop.jsp" class="btn btn-hover-dark btn-secondary">Shop Now</a></p>
                            <div class="header-top-close-btn">
                                <button class="top-close-btn"><i class="pe-7s-close"></i></button>
                            </div>
                        </div>
                    </div>
                    <!-- Header Top Message End -->
                </div>
            </div>
        </div>
        <!-- Header Top End -->

        <!-- Header Bottom Start -->
        <div class="header-bottom">
            <div class="header-sticky">
                <div class="container">
                    <div class="row align-items-center position-relative">

                        <!-- Header Logo Start -->
                        <div class="col-md-6 col-lg-3 col-xl-2 col-6">
                            <div class="header-logo">
                                <a href="index.jsp"><img src="assets/images/logo/logo2.png" alt="Site Logo" style="height:70px;"/></a>
                            </div>
                        </div>
                        <!-- Header Logo End -->

                        <!-- Header Menu Start -->
                        <div class="col-lg-6 d-none d-lg-block">

                            <div class="main-menu">
                                <ul>
                                <%
                                    String name2=(String)session.getAttribute("uName");
                                    if(name2=="" || name2==null){
                                 %>
                                    <li class="has-children">
                                        <a href="index.jsp">Home </i></a>
                                    </li>
                                    <li class="has-children position-static">
                                        <a href="shop.jsp">Shop </a>
                                     </li>
                                    <li><a href="about.jsp">About</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    
                                  <%    	
                                    }else{
                                  %>
                                  <li class="has-children">
                                        <a href="index.jsp">Home </i></a>
                                    </li>
                                    <li class="has-children position-static">
                                        <a href="shop.jsp">Shop </a>
                                     </li>
                                    <li><a href="about.jsp">About</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    <li class="has-children">
                                        <a href="myAccount.jsp">My Account </a>
                                    </li>
                                    <li class="has-children">
                                        <a href="cart.jsp">Cart </a>
                                    </li>
                                  <%
                                    }
                                  %>
                                </ul>
                            </div>

                        </div>
                        <!-- Header Menu End -->

                        <!-- Header Action Start -->
                        <div class="col-md-6 col-lg-3 col-xl-4 col-6 justify-content-end">
                            <div class="header-actions">
                                <%
                                	String img=(String)session.getAttribute("uImg");
                                    String name=(String)session.getAttribute("uName");
                                    if(name=="" || name==null){
                                 %>
                                 
                                 <div class="dropdown-user d-none d-lg-block">
                                  <a href="#" class="header-action-btn"><i class="pe-7s-user"></i></a>
                                </div>
                                
                                <a href="" class="header-action-btn header-action-btn-cart">
                                    <i class="pe-7s-cart"></i>
                                    <span class="header-action-num">0</span>
                                </a>
                                <a href="login.jsp">Login </a><p>|</p>
                                <a href="register.jsp">Reg </a>
                                 <%    	
                                    }else{
                                  %>
                                  <div class="dropdown-user d-none d-lg-block">
                                    <a href="#" class="header-action-btn">
										<img alt="" class="cirImg" src="images/custImg/<%=img%>" style="width:30px;height:30px;border-radius:50%;object-fit:cover;!important">
									</a>
                                </div>
                                
                                <a href="cart.jsp" class="header-action-btn header-action-btn-cart">
                                    <i class="pe-7s-cart"></i>
                                    <% String cartCount=session.getAttribute("cartCount")+""; %>
                                    <span class="header-action-num"><%out.print(cartCount==null?0:cartCount); %></span>
                                </a>
                                
                                <p><span><%=name %></span>|</p> 
                                <a href="logout.jsp">Logout </a>
                                  <%   	
                                    	
                                    }
                                  %>
                                
                                <!-- Mobile Menu Hambarger Action Button Start -->
                                <a href="javascript:void(0)" class="header-action-btn header-action-btn-menu d-lg-none d-md-block">
                                    <i class="fa fa-bars"></i>
                                </a>
                                <!-- Mobile Menu Hambarger Action Button End -->

                            </div>
                        </div>
                        <!-- Header Action End -->

                    </div>
                </div>
            </div>
        </div>
        <!-- Header Bottom End -->

        

       

    </div>
    <!-- Header Section End -->