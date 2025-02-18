<%
if (session.getAttribute("uName") == null || session.getAttribute("uName").equals(""))
{
	response.sendRedirect("../login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="semi-dark">
<head>
<meta charset="UTF-8">
<%@ include file="include/link.jsp" %>  
<title>Careplus</title>
</head>
<body>
	<!--start wrapper-->
  <div class="wrapper">
  		<%@ include file="include/header.jsp" %>  
		<%@ include file="include/sidebar.jsp" %> 
  		<!--start content-->
          <main class="page-content">
             <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">Company</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">view Company</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<button type="button" class="btn btn-primary">Settings</button>
							<button type="button" class="btn btn-primary split-bg-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">	<span class="visually-hidden">Toggle Dropdown</span>
							</button>
							<div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-end" style="">	<a class="dropdown-item" href="javascript:;">Action</a>
								<a class="dropdown-item" href="javascript:;">Another action</a>
								<a class="dropdown-item" href="javascript:;">Something else here</a>
								<div class="dropdown-divider"></div>	<a class="dropdown-item" href="javascript:;">Separated link</a>
							</div>
						</div>
					</div>
				</div>
				
			<div class="card">
                 <div class="card-body">
                   <div class="d-flex align-items-center">
                      <h5 class="mb-0">Company Details</h5>
                       <form class="ms-auto position-relative">
                         <div class="position-absolute top-50 translate-middle-y search-icon px-3"><i class="bi bi-search"></i></div>
                         <input class="form-control ps-5" type="text" placeholder="search">
                       </form>
                   </div>
                   <div class="table-responsive mt-3">
                     <table class="table align-middle">
                       <thead class="table-secondary">
                         <tr>
                          <th>#</th>
                          <th>Cust Name</th>
                          <th>Product Name</th>
                          <th>Qty</th>
                          <th>Price</th>
                          <th>Order Amount</th>
                          <th>Delivery Address</th>
                          <th>Order Date</th>
                          <th>Card Details</th>
                          <th>Status</th>
                         </tr>
                       </thead>
                       <tbody  id="bindData">
                         
                        </tbody>
                     </table>
                   </div>
                 </div>
               </div>	
         </main>
       <!--end page main-->
  		<%@ include file="include/design.jsp" %>
  </div>
  <!--end wrapper-->
  
  
  
  <%@ include file="include/script.jsp" %>
  <script type="text/javascript">
  	$(document).ready(function(){
  		getData();
  	});
  	function getData(){
  		$.ajax({
  			url:"../OrderServlet",
  			method:"Post",
  			data:{"secret":"viewOrders"},
  			dataType:"json",
  			success : function (response){
  				let s="";
  				for(var key in response){
  					if(response.hasOwnProperty(key)){
  						s+="<tr>";
  						s+="<td>"+response[key].oid+"</td>";
  						s+="<td>"+response[key].uName+"</td>";
  						s+="<td><div class='d-flex align-items-center gap-3 cursor-pointer'>";
   					    s+="<img src='../images/productImg/"+response[key].imgName+"'class='rounded-circle' width='50' height='50' alt=''>";
   					    s+="<div class=''><p class='mb-0'>"+response[key].pname+"</p></div></div> </td>";
  						s+="<td>"+response[key].qty+"</td>"; 
  						s+="<td>"+response[key].basePrice+"</td>";
  						s+="<td>"+response[key].totalAmount+"</td>";
  						s+="<td>"+response[key].state+",<br>"+response[key].pincode+",<br>"+response[key].phone+"</td>";
  						s+="<td>"+response[key].oDate+"</td>";
  						s+="<td>"+response[key].cardNum+",<br>"+response[key].expDate+",<br>"+response[key].cvv+"</td>";
  						if(response[key].status=="active"){
  							s+="<td><span class='badge btn-sm btn-success w-100'>Success</span></td>";
  						}else{
  							s+="<td><span class='badge btn-sm btn-warning w-100'>Pending</span></td>";
  						}
  						
  						s+="</tr>";
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
</body>
</html>