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
					<div class="breadcrumb-title pe-3">Admin</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">view Admin</li>
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
                      <h5 class="mb-0">Admin Details</h5>
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
                          <th>Email</th>
                          <th>Password</th>
                          <th>Phone</th>
                          <th>Address</th>
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
      		<form id="myForm" >
       			<label  class="form-label"> Admin Name</label>
				<input type="text" name="uName" id="uName"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Email</label>
				<input type="email" name="uEmail"  id="uEmail" class="form-control form-control-lg mb-3"  aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Password</label>
				<input type="password" name="uPass" id="uPass" class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Phone</label>
				<input type="text" name="uPhone" id="uPhone"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
									
				<label  class="form-label">Address</label>
				<input type="text" name="uAdd"  id="uAdd" class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
						
				<label  class="form-label">Image</label>
				<div class="d-flex">
					<div class="col-3" id="preViewImg">
						
					</div>
					<div class="col-9" >
						<input type="file" name="uImg"  class="form-control form-control-lg mb-3" aria-label=".form-control-lg example" required>
					</div>
				</div>
				<input name="status" type="radio" value="active">&nbsp;<b>Active</b> &nbsp;&nbsp;
			    <input name="status" type="radio" class="mb-3" value="inactive">&nbsp;<b>Inactive</b>				
				<input type="hidden" name="secret" value="updateServlet">
				<input type="hidden" name="uId" id="uId" value="">					
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
  			url:"../AdminServlet",
  			method:"Post",
  			data:{"secret":"viewAllAdmins"},
  			dataType:"json",
  			success : function (response){
  				let s="";
  				for(var key in response){
  					if(response.hasOwnProperty(key)){
  						s+="<tr>";
  						s+="<td>"+response[key].uId+"</td>";
  						s+="<td><div class='d-flex align-items-center gap-3 cursor-pointer'>";
   					    s+="<img src='../images/adminImg/"+response[key].uImg+"'class='rounded-circle' width='50' height='50' alt=''>";
   					    s+="<div class=''><p class='mb-0'>"+response[key].uName+"</p></div></div> </td>";
  						s+="<td>"+response[key].uEmail+"</td>";
  						s+="<td>"+response[key].uPass+"</td>";
  						s+="<td>"+response[key].uPhone+"</td>";
  						s+="<td>"+response[key].uAdd+"</td>";
  						s+="<td>"+response[key].createdDate+"</td>";
  						
  						if(!response[key].updatedDate){
  							s+="<td>Not Updated</td>";
  						}else{
  							s+="<td>"+response[key].updatedDate+"</td>";
  						}
  						if(response[key].status=="active"){
  							s+="<td><span class='badge btn-sm btn-success w-100'>Active</span></td>";
  	  						s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
  	 						s+="<a class='text-primary custEdit' id='"+response[key].uId+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Edit'><i class='bi bi-pencil-fill'></i></a>";
  	 						s+="<a class='text-danger custDelete' id='"+response[key].uId+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Delete'><i class='bi bi-trash-fill'></i></a>";
  	 						s+="</div></td>";
  						}else{
  							s+="<td><span class='badge btn-sm btn-warning w-100'>Inactive</span></td>";
  	  						s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
  	 						s+="<a class='text-primary custEdit' id='"+response[key].uId+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Edit'><i class='bi bi-pencil-fill'></i></a>";
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
  	$(document).on('click','.custDelete' ,function(){
  		var uId=$(this).attr('id');
  		if(confirm("Are You Sure You Want to Deactive This ?")){
  			$.ajax({
  	  			url:"../AdminServlet",
  	  			method:"Post",
  	  			data:{"secret":"inactiveAdmin","uId":uId},
  	  			success : function (response){
  	  				if(response.trim()=="done"){
						$.toast({
							text: "Admin Deactivated Successfully!!!", 
							heading: 'Admin', 
							icon: 'success', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
					});
					}else{
						$.toast({
							text: "Admin Not Deactivated!!!", 
							heading: 'Admin', 
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
  	$(document).on('click','.custEdit',function(){
  		var uId=$(this).attr('id');
  		$("#exampleModal").modal('show');
  		$.ajax({
			url: "../AdminServlet",
 			method:"Post",
			data:{"secret":"getAdminById","uId":uId},
			dataType:"json",
			success : function(response){
				$("#uName").val(response.uName);
				$("#uEmail").val(response.uEmail);
				$("#uPass").val(response.uPass);
				$("#uAdd").val(response.uAdd);
				$("#uPhone").val(response.uPhone);
				$("#uId").val(response.uId);
				$("#preViewImg").html("<img src='../images/adminImg/"+response.uImg+"' height='50' width='100' alt='Image Not Found!'>");
			},
			error : function(){
				$.toast({
				text: "Something Went Wrong On Server!!!", 
				heading: 'Admin', 
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
                url: "../AdminServlet", 
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success : function(response){
 					if (response.trim()=="done") {
 						$.toast({
 							text: "Admin updated Successfully!!!", 
 							heading: 'Admin', 
 							icon: 'success', 
 							hideAfter: 6000,
 							position: 'top-center', 
 							textAlign: 'left', 
 							loader: true
 						});
					} else {
						$.toast({
 							text: "Admin updated Failed!!!", 
 							heading: 'Admin', 
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
							heading: 'Admin', 
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