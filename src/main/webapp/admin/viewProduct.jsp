<%
if (session.getAttribute("uName") == null || session.getAttribute("uName").equals(""))
{
	response.sendRedirect("../login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="utility.DbConnection"%>
<%@page import="java.sql.*"%>
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
					<div class="breadcrumb-title pe-3">Product</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">view Product</li>
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
                      <h5 class="mb-0">Product Details</h5>
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
                          <th>Name</th>
                          <th>Description</th>
                          <th>Price</th>
                          <th>Stock</th>
                          <th>Category</th>
                          <th>Company</th>
                          <th>Manuf Date</th>
                          <th>Exp Date</th>
                          <th>Created Date</th>
                          <th>Updated Date</th>
                          <th>Status</th>
                          <th>Actions</th>
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
  <!-- Modal start-->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit & Save </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	<form id="myForm" enctype="multipart/form-data">
				<label  class="form-label">Product Name</label>
				<input type="text" name="pName" id="pName"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Description</label>
				<input type="text" name="pDesc" id="pDesc" class="form-control form-control-lg mb-3"  aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Quantity</label>
				<input type="number" name="qty" id="qty" class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Price</label>
				<input type="number" name="price" id="price" class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Category</label>
				<select class="form-select" name="catId" id="catId" required>
				  <option>--SELECT CATEGORY--</option>
				<%
				  Connection con=DbConnection.getConnection();
				  String query="select catId,catName from category";
				  PreparedStatement ps=con.prepareStatement(query);
				  ResultSet rs= ps.executeQuery();
				  while(rs.next()){
				%> 
					<option value="<%=rs.getInt(1)%>" ><%=rs.getString(2)%></option>
				<%
				 }
				%>	
										   
										
										
				</select>
									
				<label  class="form-label">Manufactured Date</label>
				<input type="date" name="manfDate" id="manfDate" class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Company</label>
				<select class="form-select" id="bindCompany" name="comId" required>
				<%
				  Connection con2=DbConnection.getConnection();
				  String query2="select comId,comName from companies where status='active'";
				  PreparedStatement ps2=con2.prepareStatement(query2);
				  ResultSet rs2= ps2.executeQuery();
				  while(rs2.next()){
				%> 					
					<option value="<%=rs2.getInt(1)%>" ><%=rs2.getString(2)%></option>
				<%
				 }
				%>							
				</select>
				<label  class="form-label">Expiry date</label>
				<input type="date" name="expDate" id="expDate" class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Image</label>
				<div class="d-flex">
					<div class="col-3" id="preViewImg">
						
					</div>
					<div class="col-9" >
						<input type="file" name="pImg"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
					</div>
				</div>
				<input name="status" type="radio" value="active">&nbsp;<b>Active</b> &nbsp;&nbsp;
			    <input name="status" type="radio" class="mb-3" value="inactive">&nbsp;<b>Inactive</b>				
				<input type="hidden" name="secret" value="updateServlet">
				<input type="hidden" name="pid" id="pid" value="">					
				<input class="form-control btn btn-primary" type="submit"  >
			</form>
      </div>
    </div>
  </div>
</div>
<!-- Modal end-->
  
  
  <%@ include file="include/script.jsp" %>
  <script type="text/javascript">
  	$(document).ready(function(){
  		getData();
  		
  	});
  	function getData(){
  		$.ajax({
  			url:"../ProductServlet",
  			method:"Post",
  			data:{"secret":"viewAllProducts"},
  			dataType:"json",
  			success : function (response){
  				let s="";
  				for(var key in response){
  					if(response.hasOwnProperty(key)){
  						s+="<tr>";
  						s+="<td>"+response[key].pid+"</td>";
  						s+="<td>";
  						s+="<div class='d-flex align-items-center gap-1'><div class='product-box border'> <img src='../images/productImg/"+response[key].imgName+"' alt='''>  </div>";
  						s+="<div class='product-info'>"+response[key].pname+"</div>";
  						s+="</div></td>"
  						s+="<td>"+response[key].pdesc+"</td>";
  						s+="<td>"+response[key].price+"</td>";
  						s+="<td>"+response[key].availability+"</td>";
  						s+="<td>"+response[key].catName+"</td>";
  						s+="<td>"+response[key].comName+"</td>";
  						s+="<td>"+response[key].manufDate+"</td>";
  						s+="<td>"+response[key].expDate+"</td>";
  						s+="<td>"+response[key].createdDate+"</td>";
  						
  						if(!response[key].updatedDate){
  							s+="<td>Not Updated</td>";
  						}else{
  							s+="<td>"+response[key].updatedDate+"</td>";
  						}
  						if(response[key].status=="active"){
  							s+="<td><span class='badge btn-sm btn-success w-100'>Active</span></td>";
  	  						s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
  	 						s+="<a class='text-primary proEdit' id='"+response[key].pid+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Edit'><i class='bi bi-pencil-fill'></i></a>";
  	 						s+="<a class='text-danger proDelete' id='"+response[key].pid+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Delete'><i class='bi bi-trash-fill'></i></a>";
  	 						s+="</div></td>";
  						}else{
  							s+="<td><span class='badge btn-sm btn-warning w-100'>Inactive</span></td>";
  	  						s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
  	 						s+="<a class='text-primary proEdit' id='"+response[key].pid+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Edit'><i class='bi bi-pencil-fill'></i></a>";
  	 						s+="<a class='text-secondary' disable data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Delete'><i class='bi bi-trash-fill'></i></a>";
  	 						s+="</div></td>";
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
  	
  	//soft delete
  	$(document).on('click','.proDelete' ,function(){
  		var pid=$(this).attr('id');
  		if(confirm("Are You Sure You Want to Deactive This ?")){
  			$.ajax({
  	  			url:"../ProductServlet",
  	  			method:"Post",
  	  			data:{"secret":"inactiveProduct","pid":pid},
  	  			success : function (response){
  	  				if(response.trim()=="done"){
						$.toast({
							text: "Product Deactivated Successfully!!!", 
							heading: 'Product', 
							icon: 'success', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
					});
					}else{
						$.toast({
							text: "Product Not Deactivated!!!", 
							heading: 'Product', 
							icon: 'error', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
					    });
					}
  					getData();
  				},
  				error : function (){
  	  				console.log("Something went to wrong on server!!!");
  	  			}
  	  			
  			});
  		}
  	})
  	
  	//edit by Id and class  attr
  	$(document).on('click','.proEdit',function(){
  		var pid=$(this).attr('id');
  		$("#exampleModal").modal('show');
  		$.ajax({
			url: "../ProductServlet",
 			method:"Post",
			data:{"secret":"getProductById","pid":pid},
			dataType:"json",
			success : function(response){
				$("#pName").val(response.pname);
				$("#pDesc").val(response.pdesc);
				$("#qty").val(response.availability);
				$("#price").val(response.price);
				$("#catId").val(response.catId);
				$("#manfDate").val(response.manufDate);
				$("#expDate").val(response.expDate);
				$("#pid").val(response.pid);
				$("#bindCompany").val(response.comId);
				$("#preViewImg").html("<img src='../images/productImg/"+response.imgName+"' height='50' width='100' alt='Image Not Found!'>");
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
  	
  	
  	
  	$(document).ready(function () {
        $("#myForm").submit(function (event) {
            event.preventDefault(); 
            var formData = new FormData(this); 
            $.ajax({
                url: "../ProductServlet", 
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success : function(response){
 					if (response.trim()=="done") {
 						$.toast({
 							text: "Product updated Successfully!!!", 
 							heading: 'Product', 
 							icon: 'success', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 						});
					} else {
						$.toast({
 							text: "Product updated Failed!!!", 
 							heading: 'Product', 
 							icon: 'error', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 						});
					}
 					$("#exampleModal").modal('hide');
 					getData();
 				},
				error : function(){
				 	$.toast({
							text: "Somthing went to wrong on server!", 
							heading: 'Product', 
							icon: 'error', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
						});
				}
            });
        });
    });
  </script>
</body>
</html>