<%
if (session.getAttribute("uName") == null || session.getAttribute("uName").equals(""))
{
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    		int oid=Integer.parseInt(request.getParameter("oId"));
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script  src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <title>Carepluse | Invoice</title>
   
    <style>
        @page {
  bleed: 1cm;
  size: A4 portrait;
  size:  auto;   /* auto is the initial value */
  margin-bottom: 50pt;
  margin-top: 0cm;
  font-size: 12pt;

  #content, #page {
  width: 100%;
  margin: 0;
  float: none;
  }
}


@media print {
  .page {
    border: initial;
    border-radius: initial;
    width: initial;
    min-height: initial;
    box-shadow: initial;
    background: initial;
    page-break-after: always;
  }

  table{
    page-break-inside: auto;
  }

  tr.last-row {
      background-color: #555!important;
  }

  tr.last-row > th, tr.last-row > td {
    background-color: unset!important;
  }

  div.page-break{
    page-break-before: auto;
  }
}

.gray{
  color: #333;
}

.gray-ish{
  color: #666;
}

.almost-gray{
  color: #999;
}

body{
  background-color: #eee;
  padding-top: 25px;
  -webkit-print-color-adjust: exact !important;
  height: 100%;
  margin-top: 40px;
}

div.container{
  background-color: white;
  border-radius: 10px;
  height: 100%;
  position: relative;
  margin-top: 50px;
}

div.invoice-header{
  background-color: #26bacc;
  color: white;
  border-bottom: 3px solid rgb(25, 25, 25,1);
}

div.invoice-header > div > p{
  font-size: 1rem;
  font-weight: 250;
}

div.invoice-header > div > h1{
  font-size: 3rem;
}

div.invoice-table{
  border-top: 3px solid #26bacc;
}

div.invoice-table > table.table > thead, div.invoice-table > table.table > thead.thead > tr, div.invoice-table > table.table > thead.thead > tr > th {
  border-top: none;
}

div.total-field{
  position: absolute;
  right: 50px;
  text-align: right;
  width: auto;
}

h5.due-date{
  position: absolute;
  bottom: 10px;
  right: 15px;
}

div.sub-table{
  border-left: 3px solid #26bacc;
  padding-left: 0;
}

div.sub-table > table{
  padding-bottom: 0;
  margin-bottom: 0;
}

tr.last-row{
  margin-top: 25px;
  background-color: #555;
  color: white;
  border-top: 3px solid #26bacc;
}

p.footer{
    bottom: 0;
    width: 100%;
    background-color: #333;
    color: white;
    padding-top: 15px;
    border-top: 3px solid red;
}
    </style>
</head>
<body>
  
    <div class="container">
        <div class="row invoice-header px-3 py-2">
          <div class="col-4">
            <p>CAREPLUS</p>
            <h1>INVOICE</h1>
          </div>
          <div class="col-4 text-right">
            <p>+919000900080</p>
            <p>careplus@gmail.com</p>
            <p>www.carepluse.com</p>
          </div>
          <div class="col-4 text-right">
            <p>Krishna garden,Phase-II</p>
            <p>BBSR,Khandagiri</p>
            <p>Pincode-751030</p>
          </div>
        </div>
      
        <div class="invoice-content row px-5 pt-5">
          <div class="col-3">
            <h5 class="almost-gray mb-3">Invoiced to:</h5>
            <p class="gray-ish" id="clientName"> </p>
            <p class="gray-ish" id="clientAddress"></p>
            
          </div>
          <div class="col-3">
            <h5 class="almost-gray">Invoice number:</h5>
            <p class="gray-ish" id="invoiceNum"></p>
      
            <h5 class="almost-gray">Date of Issue:</h5>
            <p class="gray-ish" id="orderDate"> </p>
      
          </div>
          <div class="col-6 text-right  total-field">
            <h4 class="almost-gray">Invoice Total</h4>
            <h1 class="gray-ish" id="totalAmount"> </h1>
            
          </div>
        </div>
      
        <div class="row mt-5">
          <div class="col-10 offset-1 invoice-table pt-1">
            <table class="table table-hover">
                  <thead class="thead splitForPrint">
                    <tr>
                      <th scope="col gray-ish">NO.</th>
                      <th scope="col gray-ish">Product Name</th>
                      <th scope="col gray-ish">Qty.</th>
                      <th scope="col gray-ish">U. Price</th>
                      <th scope="col gray-ish">Discount</th>
                      <th class="text-right" scope="col gray-ish">Total Amount</th>
                    </tr>
                  </thead>
                  <tbody id="pdetails">
                   
                     
                   
                    
                    
                  </tbody>
                </table>
          </div>
        </div>
      <div class="row invoice_details">
         <!-- invoiced to details -->
         <div class="col-4 offset-1 pt-3">
           <h4 class="gray-ish">Invoice Summary & Notes</h4>
           <p class="pt-3 almost-gray">Thank you for choosing CarePlus for your online medicine order. We ensure high-quality, prescription-compliant medicines with safe and timely delivery. For any issues, contact our support team. Orders once dispatched cannot be canceled. Returns and refunds follow company policy. We appreciate your trust in CarePlus. Stay healthy!</p>
         </div>
         <!-- Invoice assets and total -->
              <div class="offset-1 col-5 mb-3 pr-4 sub-table">
                <table class="table table-borderless">
                  <tbody>
                    <tr>
                      <th scope="row gray-ish">Subtotal</th>
                      <td class="text-right" id="Subtotal"></td>
                    </tr>
                    
                    <tr>
                      <th scope="row gray-ish">Discounts</th>
                      <td class="text-right">0.0 </td>
                    </tr>
                    <tr class="last-row">
                        <th scope="row"><h4>Total</h4></th>
                        <td class="text-right"><h4 id="Total"> </h4></td>
                    </tr>
                  </tbody>
                </table>
              </div>
         </div>
        <p class="text-center pb-3"><em> Taxes will be calculated in &#8377; regarding transport and other taxable services.</em></p>
      </div>
      
      <div class=" m-5 total-field">
      		<button class="btn btn-danger" id="downloadInvoice">Download Invoice</button>
      </div>
      <div style="margin-bottom:300px;!important">
      		
      </div>
      
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
   
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.js" integrity="sha512-zlWWyZq71UMApAjih4WkaRpikgY9Bz1oXIW5G0fED4vk14JjGlQ1UmkGM392jEULP8jbNMiwLWdM8Z87Hu88Fw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>

<script>
    $(document).ready(function () {
        $("#downloadInvoice").click(function () {
            const { jsPDF } = window.jspdf;
            let pdf = new jsPDF('p', 'mm', 'a4');

            html2canvas(document.querySelector(".container"), {
                scale: 2
            }).then(canvas => {
                let imgData = canvas.toDataURL("image/png");
                let imgWidth = 210; // A4 width in mm
                let imgHeight = (canvas.height * imgWidth) / canvas.width;

                pdf.addImage(imgData, 'PNG', 0, 10, imgWidth, imgHeight);
                pdf.save("CarePlus_Invoice.pdf");
            });
        });
    });
</script>
  
   <script type="text/javascript">
  	$(document).ready(function(){
  		getSpecificOrderData();
  		
  	});
  	function getSpecificOrderData(){
  		
  		var oid=<%=oid%>;
  		$.ajax({
			url: "OrderServlet",
 			method:"Post",
			data:{"secret":"getSpecificOrderDetailsByOid","oid":oid},
			dataType:"json",
			success : function(response){
				console.log(response);
				$("#clientName").text(response.uName);
				$("#clientAddress").html(response.email+"<br>"+response.phone+"<br>Address :"+response.state+","+response.pincode);
				$("#invoiceNum").html("# C000P-"+response.oid);
				$("#orderDate").text(response.oDate);
				$("#totalAmount").html("&#8377; "+response.totalAmount);
				let s="";
				    s+="<tr> <th scope='row'>"+response.oid+"</th>";
				    s+="<td class='item'>"+response.pname+"</td>";
				    s+="<td>"+response.qty+"</td>";
				    s+="<td>&#8377;"+response.basePrice+" </td>";
				    s+="<td>0 %</td>";
				    s+="<td class='text-right'>&#8377; "+response.totalAmount+"  </td></tr>";
				  $("#pdetails").html(s); 
				  $("#Subtotal").html("&#8377;"+response.totalAmount); 
				  $("#Total").html("&#8377;"+response.totalAmount);
			},
			error : function(){
				$.toast({
				text: "Something Went Wrong On Server!!!", 
				heading: 'Customer', 
				icon: 'error', 
				hideAfter: 6000,
				position: 'top-center', 
				textAlign: 'left', 
				loader: true
		   });
			}
			
		})
  	}
  	
  	</script>
</body>
</html>