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
       	<form id="myForm">
			<input name="comName"  id="comName" type="text" class="form-control form-control-lg mb-3"   aria-label=".form-control-lg example" required>
			<input name="comEmail" id="comEmail" type="email" class="form-control form-control-lg mb-3"   aria-label=".form-control-lg example" required>
			<input name="comPass"  id="comPass" type="password" class="form-control form-control-lg mb-3"  aria-label=".form-control-lg example" required>
			<input name="comPhone" id="comPhone" type="text" class="form-control form-control-lg mb-3"   aria-label=".form-control-lg example" required>
			<input name="comAdd"   id="comAdd" type="text" class="form-control form-control-lg mb-3"   aria-label=".form-control-lg example" required>
			<input name="status" type="radio" value="active">&nbsp;<b>Active</b> &nbsp;&nbsp;
			<input name="status" type="radio" class="mb-3" value="inactive">&nbsp;<b>Inactive</b>
			<input type="hidden" name="secret" value="updateCompany"> 
			<input type="hidden" name="comId" id="comId"> 
			<input class="form-control btn btn-primary" type="submit" value="Update"  >
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
  			url:"../CompanyServlet",
  			method:"Post",
  			data:{"secret":"viewCompany"},
  			dataType:"json",
  			success : function (response){
  				let s="";
  				for(var key in response){
  					if(response.hasOwnProperty(key)){
  						s+="<tr>";
  						s+="<td>"+response[key].comId+"</td>";
  						s+="<td>"+response[key].comName+"</td>";
  						s+="<td>"+response[key].comEmail+"</td>";
  						s+="<td>"+response[key].comPass+"</td>";
  						s+="<td>"+response[key].comPhone+"</td>";
  						s+="<td>"+response[key].comAdd+"</td>";
  						s+="<td>"+response[key].createdDate+"</td>";
  						
  						if(!response[key].updatedDate){
  							s+="<td>Not Updated</td>";
  						}else{
  							s+="<td>"+response[key].updatedDate+"</td>";
  						}
  						if(response[key].status=="active"){
  							s+="<td><span class='badge btn-sm btn-success w-100'>Active</span></td>";
  	  						s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
  	 						s+="<a class='text-primary comEdit' id='"+response[key].comId+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Edit'><i class='bi bi-pencil-fill'></i></a>";
  	 						s+="<a class='text-danger comDelete' id='"+response[key].comId+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Delete'><i class='bi bi-trash-fill'></i></a>";
  	 						s+="</div></td>";
  						}else{
  							s+="<td><span class='badge btn-sm btn-warning w-100'>Inactive</span></td>";
  	  						s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
  	 						s+="<a class='text-primary comEdit' id='"+response[key].comId+"' data-bs-toggle='tooltip' data-bs-placement='bottom' aria-label='Edit'><i class='bi bi-pencil-fill'></i></a>";
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
  	$(document).on('click','.comDelete' ,function(){
  		var comId=$(this).attr('id');
  		if(confirm("Are You Sure You Want to Deactive This ?")){
  			$.ajax({
  	  			url:"../CompanyServlet",
  	  			method:"Post",
  	  			data:{"secret":"inactiveCompany","comId":comId},
  	  			success : function (response){
  	  				if(response.trim()=="done"){
						$.toast({
							text: "Company Deactivated Successfully!!!", 
							heading: 'Company', 
							icon: 'success', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
					});
					}else{
						$.toast({
							text: "Company Not Deactivated!!!", 
							heading: 'Company', 
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
  	$(document).on('click','.comEdit',function(){
  		var comId=$(this).attr('id');
  		$("#exampleModal").modal('show');
  		$.ajax({
			url: "../CompanyServlet",
 			method:"Post",
			data:{"secret":"getCompanyById","comId":comId},
			dataType:"json",
			success : function(response){
				$("#comName").val(response.comName);
				$("#comEmail").val(response.comEmail); 
				$("#comPass").val(response.comPass);
				$("#comPhone").val(response.comPhone);
				$("#comAdd").val(response.comAdd);
				$("#comId").val(response.comId);
			},
			error : function(){
				$.toast({
				text: "Something Went Wrong On Server!!!", 
				heading: 'Company', 
				icon: 'error', 
				hideAfter: 6000,
				position: 'top-center', 
				textAlign: 'left', 
				loader: true
		   });
			}
			
		})
  	})
  	//update through by id
  	$(document).ready(function(){
 		console.log("Page Ready..");
 		$("#myForm").on('submit',function(event){
  		event.preventDefault();
		var formdata=$(this).serialize();
			$.ajax({
				url     :"../CompanyServlet",
				method  :"Post",
				data    :formdata,
				success : function(response){
					if (response.trim()=="done") {
						$.toast({
							text: "Company updated Successfully!!!", 
							heading: 'Note', 
							icon: 'success', 
							hideAfter: 6000,
							position: 'top-center', 
							textAlign: 'left', 
							loader: true
						});
				    } else {
					    $.toast({
							text: "Company updated Failed!!!", 
							heading: 'Note', 
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
			error : function(response){
			 	$.toast({
						text: "Somthing went to wrong on server!", 
						heading: 'Note', 
						icon: 'error', 
						hideAfter: 6000,
						position: 'top-center', 
						textAlign: 'left', 
						loader: true
					});
			}
			});
		});
  	})
  	
  </script>
</body>
</html>