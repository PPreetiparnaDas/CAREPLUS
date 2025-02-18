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
					<div class="breadcrumb-title pe-3">Role</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">view Role</li>
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
                      <h5 class="mb-0">Role Details</h5>
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
                          <th>Role Name</th>
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
       
       		<form id="myForm">
				<input class="form-control form-control-lg mb-3" name="roleName" id="roleName" type="text" placeholder="Enter Role Name" aria-label=".form-control-lg example">
				<input type="hidden" name="roleId" id="roleId">
				<input type="hidden" name="secret" value="updateRole">
				<input class="form-control btn btn-primary" type="submit" value="Update"  >
			</form>
       
      </div>
    </div>
  </div>
</div>
<!-- Modal end-->
<%@ include file="include/script.jsp" %>

 <script>
 	$(document).ready(function(){
 		getData();
 	});
 	
 	function getData(){
 		$.ajax({
 			url: "../RoleServlet",
 			method:"Post",
 			data:{"secret":"viewServlet"},
 			dataType:"json",
 			success : function(response){
 				let s="";
 				for(var key in response){
 					if(response.hasOwnProperty(key)){
 						s+="<tr>";
 						s+="<td>"+response[key].roleId+"</td>";
 						s+="<td> <div class='d-flex align-items-center gap-3 cursor-pointer'>";
 						s+="<p class='mb-0'>"+response[key].roleName+"</p></div></td>";
 						s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
 						s+="<a class='text-primary roleEdit' id='"+response[key].roleId+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Edit'><i class='bi bi-pencil-fill'></i></a>";
 						s+="<a class='text-danger roleDelete' id='"+response[key].roleId+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Delete'><i class='bi bi-trash-fill'></i></a>";
 						s+="</div></td>";
 						s+="</tr>"
 					}
 				}
 			 $("#bindData").html(s);
 			},
 			error : function(){
 				console.log("Something went wrong on Server!!!");
 			}
 		})
 	}
 	
 	$(document).on('click','.roleDelete',function(){
 		var roleId=$(this).attr('id');
 		if(confirm("Are You Sure You Want To Delete This One ?")){
 			$.ajax({
 				url: "../RoleServlet",
 	 			method:"Post",
 				data:{"secret":"deleteRole","roleId":roleId},
 				success : function(response){
 					if(response.trim()=="done"){
 						$.toast({
 							text: "Role Deleted Successfully!!!", 
 							heading: 'Role', 
 							icon: 'success', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 					});
 					}else{
 						$.toast({
 							text: "Role Not Deleted!!!", 
 							heading: 'Role', 
 							icon: 'error', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 					    });
 					}
 					getData();
 				},
 				error : function(){
 					$.toast({
						text: "Something Went Wrong On Server!!!", 
						heading: 'Role', 
						icon: 'error', 
						hideAfter: 6000,
						position: 'top-center', 
						textAlign: 'left', 
						loader: true
				   });
 				}
 				
 			})
 		}
 	})
 	
 	$(document).on('click','.roleEdit',function(){
 		var roleId=$(this).attr('id');
 		$("#exampleModal").modal('show');
 		$.ajax({
				url: "../RoleServlet",
	 			method:"Post",
				data:{"secret":"getRoleById","roleId":roleId},
				dataType:"json",
				success : function(response){
					$("#roleName").val(response.roleName);
					$("#roleId").val(response.roleId);
				},
				error : function(){
					$.toast({
					text: "Something Went Wrong On Server!!!", 
					heading: 'Role', 
					icon: 'error', 
					hideAfter: 6000,
					position: 'top-center', 
					textAlign: 'left', 
					loader: true
			   });
				}
				
			})
 	});
 	
 	
 	$(document).ready(function(){
 		console.log("Page Ready..");
 		$("#myForm").on('submit',function(event){
 			event.preventDefault();
			var formdata=$(this).serialize();
 			$.ajax({
 				url     :"../RoleServlet",
 				method  :"Post",
 				data    :formdata,
 				success : function(response){
 					if (response.trim()=="done") {
 						$.toast({
 							text: "Role Updated Successfully!!!", 
 							heading: 'Role', 
 							icon: 'success', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 						}); 
 						/* window.location.href="viewRole.jsp"; */
					} else {
						$.toast({
 							text: "Role Updated Failed!!!", 
 							heading: 'Role', 
 							icon: 'error', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 						});
					}
 					getData();
 					$('#exampleModal').modal('hide');
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
 
 
</body>

</html>