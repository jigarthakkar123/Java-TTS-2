<%@page import="com.dao.CartDao"%>
<%@page import="com.bean.Cart"%>
<%@page import="com.dao.WishlistDao"%>
<%@page import="com.bean.Wishlist"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
   <head>
   <style type="text/css">
	.bttnStyle
	{
		background-color: lightblue;
		border-radius: 0.50rem;
		border:1px solid transperent;
	}
</style>
   </head>
   <body class="sub_page">
      
      <!-- inner page section -->
      <section class="inner_page_head">
         <div class="container_fuild">
            <div class="row">
               <div class="col-md-12">
                  <div class="full">
                     <h3>Product Grid</h3>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end inner page section -->
      <!-- product section -->
      <section class="product_section layout_padding">
         <div class="container">
            <div class="heading_container heading_center">
               <h2>
               	<%
               		List<Cart> list=CartDao.getCartByUser(u.getId());
               		if(list.size()>0)
               		{
               	%>
                  My <span>Cart</span>
                 <%
               		}
               		else
               		{
                 %>
                 No Products In<span>Cart</span>
                 <%
               		}
                 %>
               </h2>
            </div>
            <div class="row">
            	<%
            		int net_price=0;
            		for(Cart c:list)
            		{
            			net_price=net_price+c.getTotal_price();
            			Product p=ProductDao.getProductByPid(c.getPid());
            	%>
               <div class="col-sm-6 col-md-6 col-lg-6">
                  <div class="box">
                     
                        
                           <a href="product-detail.jsp?pid=<%=p.getPid() %>" class="option2">
                           Details
                           </a>
                        
                     
                     <div class="img-box">
                        <img src="product_images/<%=p.getProduct_image() %>" alt="">
                     </div>
                     <div class="detail-box">
                     	<h6>
                     		Name: <%=p.getProduct_name() %>
                     	</h6>
                     	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <h6>
                          	Price : <%=p.getProduct_price() %>
                        </h6>
                     </div>
                     <div class="detail-box">
                     	<form name="change_qty" method="post" action="change_qty.jsp">
                     		<input type="hidden" name="cid" value="<%=c.getCid()%>">
                     		<input type="number" name="product_qty" value="<%=c.getProduct_qty()%>" min="1" max="10" onchange="this.form.submit();">
                     	</form>
                     	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <h6>
                          	Total Price : <%=c.getTotal_price() %>
                        </h6>
                     </div>
                  </div>
               </div>
             	<%} %>
               
            </div>
           <h1>Net Price : <%=net_price %></h1>
           <form>
				<input type="text" id="amount" name="amount" value="<%=net_price%>">
			</form>
			<button id="payButton" onclick="CreateOrderID()" class="bttnStyle">Pay Now</button>
         </div>
      </section>
      <!-- end product section -->
      <!-- footer section -->
      <footer class="footer_section">
         <div class="container">
            <div class="row">
               <div class="col-md-4 footer-col">
                  <div class="footer_contact">
                     <h4>
                        Reach at..
                     </h4>
                     <div class="contact_link_box">
                        <a href="">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <span>
                        Location
                        </span>
                        </a>
                        <a href="">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <span>
                        Call +01 1234567890
                        </span>
                        </a>
                        <a href="">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <span>
                        demo@gmail.com
                        </span>
                        </a>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 footer-col">
                  <div class="footer_detail">
                     <a href="index.jsp" class="footer-logo">
                     Famms
                     </a>
                     <p>
                        Necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with
                     </p>
                     <div class="footer_social">
                        <a href="">
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                        </a>
                        <a href="">
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                        </a>
                        <a href="">
                        <i class="fa fa-linkedin" aria-hidden="true"></i>
                        </a>
                        <a href="">
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="">
                        <i class="fa fa-pinterest" aria-hidden="true"></i>
                        </a>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 footer-col">
                  <div class="map_container">
                     <div class="map">
                        <div id="googleMap"></div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="footer-info">
               <div class="col-lg-7 mx-auto px-0">
                  <p>
                     &copy; <span id="displayYear"></span> All Rights Reserved By
                     <a href="https://html.design/">Free Html Templates</a><br>
         
                     Distributed By <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>
                  </p>
               </div>
            </div>
         </div>
      </footer>
      <!-- footer section -->
      <!-- jQery -->
      <script src="js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="js/custom.js"></script>
      
      <script type="text/javascript">
	var xhttp=new XMLHttpRequest();
	var RazorpayOrderId;
	function CreateOrderID()
	{
		xhttp.open("GET","http://localhost:8081/MyProject/OrderCreation?amount=<%=net_price%>",false);
		xhttp.send();
		RazorpayOrderId=xhttp.responseText;
		OpenCheckOut();
	}
</script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script type="text/javascript">
	
	
	function OpenCheckOut()
	{
		var amount=document.getElementById("amount").value;
		var new_amount=parseInt(amount)*100;
		var options={
				"key":"rzp_test_KyHMYxnQkLNob0",
				"amount":new_amount,
				"currency":"INR",
				"name":"Tops",
				"description":"Test",
				"callback_url":"http://localhost:8081/MyProject/index.jsp?id=<%=u.getId()%>",
				"prefill":{
					"name":"Jigar Thakkar",
					"email":"jigar.thakkar.tops@gmail.com",
					"contact":"9377614772"
				},
				"notes":{
					"address":"Gandhinagar"
				},
				"theme":{
					"color":"#3399cc"
				}
				
				
		};
		var rzp1=new Razorpay(options);
		rzp1.on('payment.failed',function (response){
			alert(response.error.code);
	        alert(response.error.description);
	        alert(response.error.source);
	        alert(response.error.step);
	        alert(response.error.reason);
	        alert(response.error.metadata.order_id);
	        alert(response.error.metadata.payment_id);
		});
		rzp1.open();
	    e.preventDefault();
	}
</script>
      
   </body>
</html>