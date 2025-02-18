<%
if (session.getAttribute("uName") == null || session.getAttribute("uName").equals(""))
{
	response.sendRedirect("../login.jsp");
}
%>
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
					<div class="breadcrumb-title pe-3">Category</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Add Category</li>
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
						<h6 class="mb-0 text-uppercase">Add Category</h6>
						<hr>
						<div class="card">
							<div class="card-body">
								<form id="myForm">
									<input class="form-control form-control-lg mb-3" name="catName"  type="text" placeholder="Enter Category Name" aria-label=".form-control-lg example">
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
 		console.log("Page Ready..");
 		$("#myForm").on('submit',function(event){
 			event.preventDefault();
			var formdata=$(this).serialize();
 			$.ajax({
 				url     :"../CategoryServlet",
 				method  :"Post",
 				data    :formdata,
 				success : function(response){
 					if (response.trim()=="done") {
 						$.toast({
 							text: "Category Added Successfully!!!", 
 							heading: 'Category', 
 							icon: 'success', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 						});
					} else {
						
						$.toast({
 							text: "Category Added Failed!!!", 
 							heading: 'Category', 
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
							heading: 'Category', 
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
 
</body>
</html>