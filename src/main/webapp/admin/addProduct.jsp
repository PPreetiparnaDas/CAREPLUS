<%
if (session.getAttribute("uName") == null || session.getAttribute("uName").equals(""))
{
	response.sendRedirect("../login.jsp");
}
%>
<%@page import="utility.DbConnection"%>
<%@page import="java.sql.*"%>

<!doctype html>

<html lang="en" class="semi-dark">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
								<li class="breadcrumb-item active" aria-current="page">Add Product</li>
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
				
				<div class="row">
					<div class="col-xl-9 mx-auto">
						<h6 class="mb-0 text-uppercase">Add Product</h6>
						<hr>
						<div class="card">
							<div class="card-body">
								<form id="myForm" >
									<label  class="form-label">Product Name</label>
									<input type="text" name="pName"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
									<label  class="form-label">Description</label>
									<input type="text" name="pDesc"  class="form-control form-control-lg mb-3"  aria-label=".form-control-lg example" required>
									
									<label  class="form-label">Quantity</label>
									<input type="number" name="qty"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
									<label  class="form-label">Price</label>
									<input type="number" name="price"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
									<label  class="form-label">Category</label>
									<select class="form-select" name="catId" required>
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
									<input type="date" name="manfDate"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
									<label  class="form-label">Company</label>
									<select class="form-select" id="bindCompany" name="comId" required>
										
										
									</select>
									<label  class="form-label">Expiry date</label>
									<input type="date" name="expDate"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
									<label  class="form-label">Image</label>
									<input type="file" name="pImg"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
									<input type="hidden" name="secret" value="SaveServlet">
									
									<input class="form-control btn btn-primary" type="submit"  >
								</form>
							</div>
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
 		getCompany();
 	});
 	
 	function getCompany(){
 		$.ajax({
 			url:"../CompanyServlet",
  			method:"Post",
  			data:{"secret":"getCompanyByStatus"},
  			dataType:"json",
 			success : function(response){
 				let s="<option>--SELECT COMPANY--</option>";
 				for(var key in response){
 					if(response.hasOwnProperty(key)){
 						s+="<option value="+response[key].comId+">"+response[key].comName+"</option>";
 					}
 				}
 			 $("#bindCompany").html(s);
 			},
 			error : function(){
 				console.log("Something went wrong on Server!!!");
 			}
 		})
 	}
 	
 	
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
 							text: "Product Added Successfully!!!", 
 							heading: 'Product', 
 							icon: 'success', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 						});
					} else {
						$.toast({
 							text: "Product Added Failed!!!", 
 							heading: 'Product', 
 							icon: 'error', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 						});
					}
 					$("#myForm")[0].reset();
 				},
				error : function(response){
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