<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CarePlus | Shop</title>
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
                        <li class="active"> Shop Sidebar</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End -->

    </div>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Start -->
    <div class="section section-margin">
        <div class="container">
            <div class="row flex-row-reverse">
                <div class="col-lg-9 col-12">

                    <!--shop toolbar start-->
                    <div class="shop_toolbar_wrapper flex-column flex-md-row pb-10 mb-n4">

                        <!-- Shop Top Bar Left start -->
                        <div class="shop-top-bar-left mb-4">

                            <div class="shop_toolbar_btn">
                                <button data-role="grid_3" type="button" class="active btn-grid-3" title="Grid"><i class="fa fa-th"></i></button>
                                <button data-role="grid_list" type="button" class="btn-list" title="List"><i class="fa fa-list"></i></button>
                            </div>
                            <div class="shop-top-show">
                                <span>Showing 1–12 of 39 results</span>
                            </div>

                        </div>
                        <!-- Shop Top Bar Left end -->

                        <!-- Shopt Top Bar Right Start -->
                        <div class="shop-top-bar-right mb-4">

                            <h4 class="title me-2">Short By: </h4>

                            <div class="shop-short-by">
                                <select class="nice-select" aria-label=".form-select-sm example">
                                    <option selected>Short by Default</option>
                                    <option value="1">Short by Popularity</option>
                                    <option value="2">Short by Rated</option>
                                    <option value="3">Short by Latest</option>
                                    <option value="3">Short by Price</option>
                                    <option value="3">Short by Price</option>
                                </select>
                            </div>
                        </div>
                        <!-- Shopt Top Bar Right End -->

                    </div>
                    <!--shop toolbar end-->

                    <!-- Shop Wrapper Start -->
                    <div class="row shop_wrapper grid_3"  id="bindData" >

                        

                        
                    </div>
                    <!-- Shop Wrapper End -->

                    <!--shop toolbar start-->
                    <div class="shop_toolbar_wrapper mt-10 mb-n4">

                        <!-- Shop Top Bar Left start -->
                        <div class="shop-bottom-bar-left mb-4">
                            <div class="shop-short-by">
                                <select class="nice-select rounded-0" aria-label=".form-select-sm example">
                                    <option selected>Show 12 Per Page</option>
                                    <option value="1">Show 12 Per Page</option>
                                    <option value="2">Show 24 Per Page</option>
                                    <option value="3">Show 15 Per Page</option>
                                    <option value="3">Show 30 Per Page</option>
                                </select>
                            </div>
                        </div>
                        <!-- Shop Top Bar Left end -->

                        <!-- Shopt Top Bar Right Start -->
                        <div class="shop-top-bar-right mb-4">
                            <nav>
                                <ul class="pagination">
                                    <li class="page-item disabled">
                                        <a class="page-link rounded-0" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link active" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link rounded-0" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <!-- Shopt Top Bar Right End -->

                    </div>
                    <!--shop toolbar end-->

                </div>
                <div class="col-lg-3 col-12">
                    <!-- Sidebar Widget Start -->
                    <aside class="sidebar_widget mt-10 mt-lg-0">
                        <div class="widget_inner">
                            <div class="widget-list mb-10">
                                <h3 class="widget-title mb-6">Search</h3>
                                <div class="search-box">
                                    <input type="text" id="searchId" onkeyUp="handleSearch()" class="form-control" placeholder="Search Our Store" aria-label="Search Our Store">
                                    <button onClick="handleSearch()" class="btn btn-primary btn-hover-secondary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="widget-list mb-10">
                                <h3 class="widget-title mb-6">Categories</h3>
                                <div class="sidebar-body">
                                    <ul class="sidebar-list" id="bindCategory">
                                        
                                       
                                    </ul>
                                </div>
                            </div>
                            <div class="widget-list mb-10">
                                <h3 class="widget-title mb-6">Companies</h3>
                                <div class="sidebar-body">
                                    <ul class="sidebar-list" id="bindCompany">
                                        
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="widget-list">
                                <h3 class="widget-title mb-6">Recent Products</h3>
                                <div class="sidebar-body product-list-wrapper mb-n6" id="recentProductBind">

                                    

                                    

                                </div>
                            </div>
                        </div>
                    </aside>
                    <!-- Sidebar Widget End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Section End -->

   <%@ include file="include/footer.jsp" %>


<!--   modal -->

    <a href="#" class="scroll-top show" id="scroll-top">
        <i class="arrow-top pe-7s-angle-up-circle"></i>
        <i class="arrow-bottom pe-7s-angle-up-circle"></i>
    </a>

    
	<%@ include file="include/script.jsp" %>
    <script>
    function handleSearch(){
        let searchText=document.getElementById("searchId").value;
        
        $.ajax({
            url:"ProductServlet",
            method:"Post",
            data:{"secret":"SearchData" ,"searchText":searchText},
            dataType:"json",
            success : function (response){
              let s="";
              for(var key in response){
                if(response.hasOwnProperty(key)){
                  if(response[key].status=="active"){
                    s+=" <div class='col-lg-4 col-md-4 col-sm-6 product'> <div class='product-inner'><div class='thumb'>";
                    s+="<a href='#' class='image'>";
                    s+="<img class='first-image' src='images/productImg/"+response[key].imgName+"' alt='Product' />";
                    s+="<img class='second-image fit-image' src='images/productImg/"+response[key].imgName+"' alt='Product' /> </a>";
                    s+="<div class='add-cart-btn'>";
                    s+="<a href='singleProduct.jsp?pid="+response[key].pid+"'><button class='btn btn-whited btn-hover-danger text-capitalize add-to-cart'>View Product</button></div></div></a>";
                    s+="<div class='content'>  <h5 class='title'>";
                    s+="<a href='single-product.html'>"+response[key].pname+"</a></h5>";
                    s+="<span class='price'><span class='new'>$ "+response[key].price+"</span> </span>";
                    s+="<p>"+response[key].pdesc+"</p> </div> </div> </div>";
                  }
                }
              }
              $("#bindData").html(s);
            },
          error : function (){
              console.log("Something went to wrong on server!!!");
            }
          })
       }
 	$(document).ready(function(){
 		getCompany();
 		getCategory();
 		getProduct();
 		getRecentProduct();
 	});
 	function getRecentProduct(){
  		$.ajax({
  			url:"ProductServlet",
  			method:"Post",
  			data:{"secret":"viewRecentProducts"},
  			dataType:"json",
  			success : function (response){
  				let s="";
  				for(var key in response){
  					if(response.hasOwnProperty(key)){
  						if(response[key].status=="active"){
  							s+="<div class='single-product-list mb-6'> <div class='product'> <div class='thumb'> <a href='#' class='image'> ";
  							s+="<img class='fit-image first-image' src='images/productImg/"+response[key].imgName+"' alt='Product Image'>";
  							s+="<img class='fit-image second-image' src='images/productImg/"+response[key].imgName+"' alt='Product Image'> </a> </div> </div>";
  							s+="<div class='product-list-content'> <h6 class='product-name'>";
  							s+="<p>"+response[key].pname+"</p> </h6>";
  							s+="<span class='price'> <span class='new'>$"+response[key].price+"</span>";
  							s+=" </span> </div> </div>";
  						}
  					}
  				}
  				$("#recentProductBind").html(s);
  			},
			error : function (){
  				console.log("Something went to wrong on server!!!");
  			}
  		})
  	}
  	
 	function getProduct(){
  		$.ajax({
  			url:"ProductServlet",
  			method:"Post",
  			data:{"secret":"viewAllProducts"},
  			dataType:"json",
  			success : function (response){
  				let s="";
  				for(var key in response){
  					if(response.hasOwnProperty(key)){
  						if(response[key].status=="active"){
  							s+=" <div class='col-lg-4 col-md-4 col-sm-6 product'> <div class='product-inner'><div class='thumb'>";
  							s+="<a href='#' class='image'>";
  							s+="<img class='first-image' src='images/productImg/"+response[key].imgName+"' alt='Product' />";
  							s+="<img class='second-image fit-image' src='images/productImg/"+response[key].imgName+"' alt='Product' /> </a>";
  							s+="<div class='add-cart-btn'>";
  							s+="<a href='singleProductView.jsp?pid="+response[key].pid+"'><button class='btn btn-whited btn-hover-danger text-capitalize add-to-cart'>View Product</button></a></div></div>";
  							s+="<div class='content'>  <h5 class='title'>";
  							s+="<a href='single-product.html'>"+response[key].pname+"</a></h5>";
  							s+="<span class='price'><span class='new'>$ "+response[key].price+"</span> </span>";
  							s+="<p>"+response[key].pdesc+"</p> </div> </div> </div>";
  						}
  					}
  				}
  				$("#bindData").html(s);
  			},
			error : function (){
  				console.log("Something went to wrong on server!!!");
  			}
  		})
  	}
  	
 	function getCompany(){
  		$.ajax({
  			url:"CompanyServlet",
  			method:"Post",
  			data:{"secret":"viewCompany"},
  			dataType:"json",
  			success : function (response){
  				let s="";
  				for(var key in response){
  					if(response.hasOwnProperty(key)){
  						if(response[key].status==='active'){
  							s+="<li><a class='getProByComId' id='"+response[key].comId+"'>"+response[key].comName+"</a></li>";
  						}
  					}
  				}
  				$("#bindCompany").html(s);
  			},
			error : function (){
  				console.log("Something went to wrong on server!!!");
  			}
  		})
  	}
 	function getCategory(){
 		$.ajax({
 			url: "CategoryServlet",
 			method:"Post",
 			data:{"secret":"viewServlet"},
 			dataType:"json",
 			success : function(response){
 				let s="";
 				for(var key in response){
 					if(response.hasOwnProperty(key)){
 						s+="<li><a  class='getProByCatId' id='"+response[key].catId+"'>"+response[key].catName+"</a></li>";
 					}
 				}
 			 $("#bindCategory").html(s);
 			},
 			error : function(){
 				console.log("Something went wrong on Server!!!");
 			}
 		})
 	}
 	
 	$(document).on('click','.getProByCatId',function(){
 		var catId=$(this).attr('id');
 		
 			$.ajax({
 				url: "ProductServlet",
 	 			method:"Post",
 				data:{"secret":"getproductByCatId","catId":catId},
 				dataType:"json",
 				success : function (response){
 	  				let s="";
 	  				for(var key in response){
 	  					if(response.hasOwnProperty(key)){
 	  						if(response[key].status=="active"){
 	  							s+=" <div class='col-lg-4 col-md-4 col-sm-6 product'> <div class='product-inner'><div class='thumb'>";
 	  							s+="<a href='#' class='image'>";
 	  							s+="<img class='first-image' src='images/productImg/"+response[key].imgName+"' alt='Product' />";
 	  							s+="<img class='second-image fit-image' src='images/productImg/"+response[key].imgName+"' alt='Product' /> </a>";
 	  							s+="<div class='add-cart-btn'>";
 	  							s+="<a href='singleProductView.jsp?pid="+response[key].pid+"'><button class='btn btn-whited btn-hover-danger text-capitalize add-to-cart'>View Product</button></a></div></div>";
 	  							s+="<div class='content'>  <h5 class='title'>";
 	  							s+="<a href='single-product.html'>"+response[key].pname+"</a></h5>";
 	  							s+="<span class='price'><span class='new'>$ "+response[key].price+"</span> </span>";
 	  							s+="<p>"+response[key].pdesc+"</p> </div> </div> </div>";
 	  						}
 	  					}
 	  				}
 	  				$("#bindData").html(s);
 	  			},
 				error : function(){
 					$.toast({
						text: "Something Went Wrong On Server!!!", 
						heading: 'Category', 
						icon: 'error', 
						hideAfter: 6000,
						position: 'top-center', 
						textAlign: 'left', 
						loader: true
				   });
 				}
 				
 			})
 	})
 	
 	
 	$(document).on('click','.getProByComId',function(){
 		var comId=$(this).attr('id');
 		
 			$.ajax({
 				url: "ProductServlet",
 	 			method:"Post",
 				data:{"secret":"getproductByComId","comId":comId},
 				dataType:"json",
 				success : function (response){
 	  				let s="";
 	  				for(var key in response){
 	  					if(response.hasOwnProperty(key)){
 	  						if(response[key].status=="active"){
 	  							s+=" <div class='col-lg-4 col-md-4 col-sm-6 product'> <div class='product-inner'><div class='thumb'>";
 	  							s+="<a href='#' class='image'>";
 	  							s+="<img class='first-image' src='images/productImg/"+response[key].imgName+"' alt='Product' />";
 	  							s+="<img class='second-image fit-image' src='images/productImg/"+response[key].imgName+"' alt='Product' /> </a>";
 	  							s+="<div class='add-cart-btn'>";
 	  							s+="<a href='singleProductView.jsp?pid="+response[key].pid+"'><button class='btn btn-whited btn-hover-danger text-capitalize add-to-cart'>View Product</button></a></div></div>";
 	  							s+="<div class='content'>  <h5 class='title'>";
 	  							s+="<a href='single-product.html'>"+response[key].pname+"</a></h5>";
 	  							s+="<span class='price'><span class='new'>$ "+response[key].price+"</span> </span>";
 	  							s+="<p>"+response[key].pdesc+"</p> </div> </div> </div>";
 	  						}
 	  					}
 	  				}
 	  				$("#bindData").html(s);
 	  			},
 				error : function(){
 					$.toast({
						text: "Something Went Wrong On Server!!!", 
						heading: 'Category', 
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