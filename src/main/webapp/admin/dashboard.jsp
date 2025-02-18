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
              
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 row-cols-xl-4">
              <div class="col">
                <div class="card radius-10">
                  <div class="card-body">
                      <div class="d-flex align-items-center">
                          <div>
                              <p class="mb-0 text-secondary">Total Orders</p>
                              <h4 class="my-1">4805</h4>
                              <p class="mb-0 font-13 text-success"><i class="bi bi-caret-up-fill"></i> 5% from last week</p>
                          </div>
                          <div class="widget-icon-large bg-gradient-purple text-white ms-auto"><i class="bi bi-basket2-fill"></i>
                          </div>
                      </div>
                  </div>
                </div>
               </div>
               <div class="col">
                  <div class="card radius-10">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <p class="mb-0 text-secondary">Total Revenue</p>
                                <h4 class="my-1">$24K</h4>
                                <p class="mb-0 font-13 text-success"><i class="bi bi-caret-up-fill"></i> 4.6 from last week</p>
                            </div>
                            <div class="widget-icon-large bg-gradient-success text-white ms-auto"><i class="bi bi-currency-exchange"></i>
                            </div>
                        </div>
                    </div>
                </div>
               </div>
               <div class="col">
                <div class="card radius-10">
                  <div class="card-body">
                      <div class="d-flex align-items-center">
                          <div>
                              <p class="mb-0 text-secondary">Total Customers</p>
                              <h4 class="my-1">5.8K</h4>
                              <p class="mb-0 font-13 text-danger"><i class="bi bi-caret-down-fill"></i> 2.7 from last week</p>
                          </div>
                          <div class="widget-icon-large bg-gradient-danger text-white ms-auto"><i class="bi bi-people-fill"></i>
                          </div>
                      </div>
                  </div>
               </div>
               </div>
               <div class="col">
                <div class="card radius-10">
                  <div class="card-body">
                      <div class="d-flex align-items-center">
                          <div>
                              <p class="mb-0 text-secondary">Bounce Rate</p>
                              <h4 class="my-1">38.15%</h4>
                              <p class="mb-0 font-13 text-success"><i class="bi bi-caret-up-fill"></i> 12.2% from last week</p>
                          </div>
                          <div class="widget-icon-large bg-gradient-info text-white ms-auto"><i class="bi bi-bar-chart-line-fill"></i>
                          </div>
                      </div>
                  </div>
                </div>
               </div>
            </div><!--end row-->


            <div class="row">
              <div class="col-12 col-lg-8 col-xl-8 d-flex">
                <div class="card radius-10 w-100">
                  <div class="card-body">
                     <div class="row row-cols-1 row-cols-lg-2 g-3 align-items-center pb-3">
                        <div class="col">
                          <h5 class="mb-0">Sales Figures</h5>
                        </div>
                        <div class="col">
                          <div class="d-flex align-items-center justify-content-sm-end gap-3 cursor-pointer">
                             <div class="font-13"><i class="bi bi-circle-fill text-primary"></i><span class="ms-2">Sales</span></div>
                             <div class="font-13"><i class="bi bi-circle-fill text-success"></i><span class="ms-2">Orders</span></div>
                          </div>
                        </div>
                     </div>
                     <div id="chart1"></div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-lg-4 col-xl-4 d-flex">
                <div class="card radius-10 w-100">
                  <div class="card-header bg-transparent">
                    <div class="row g-3 align-items-center">
                      <div class="col">
                        <h5 class="mb-0">Statistics</h5>
                      </div>
                      <div class="col">
                        <div class="d-flex align-items-center justify-content-end gap-3 cursor-pointer">
                          <div class="dropdown">
                            <a class="dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-horizontal-rounded font-22 text-option"></i>
                            </a>
                            <ul class="dropdown-menu">
                              <li><a class="dropdown-item" href="javascript:;">Action</a>
                              </li>
                              <li><a class="dropdown-item" href="javascript:;">Another action</a>
                              </li>
                              <li>
                                <hr class="dropdown-divider">
                              </li>
                              <li><a class="dropdown-item" href="javascript:;">Something else here</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                     </div>
                  </div>
                  <div class="card-body">
                    <div id="chart2"></div>
                  </div>
                  <ul class="list-group list-group-flush mb-0">
                <li class="list-group-item d-flex justify-content-between align-items-center bg-transparent border-top">New Orders<span class="badge bg-primary badge-pill">25%</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Completed<span class="badge bg-orange badge-pill">65%</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Pending<span class="badge bg-success badge-pill">10%</span>
                </li>
              </ul>
                </div>
              </div>
            </div><!--end row-->

            
          </main>
       <!--end page main-->
		<%@ include file="include/design.jsp" %>
     

  </div>
  <!--end wrapper-->

<%@ include file="include/script.jsp" %>
 
</body>

</html>