<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="seller-header.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      
   </head>
   <body class="sub_page">
      
      <!-- inner page section -->
      <section class="inner_page_head">
         <div class="container_fuild">
            <div class="row">
               <div class="col-md-12">
                  <div class="full">
                     <h3>Edit Product</h3>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end inner page section -->
      <!-- why section -->
      <section class="why_section layout_padding">
         <div class="container">
         
            <div class="row">
               <div class="col-lg-8 offset-lg-2">
                  <div class="full">
                  <b style="color: blue">
                  		<%
                  			Product p=ProductDao.getProductByPid(Integer.parseInt(request.getParameter("pid")));
                  			if(request.getAttribute("msg")!=null)
                  			{
                  				out.println(request.getAttribute("msg"));
                  			}
                  		%>
                  		</b>
                     <form action="ProductController" method="post" enctype="multipart/form-data">
                        <fieldset>
                        	<input type="hidden" name="pid" value="<%=p.getPid()%>">
                        	<select name="product_category">
                        		<%
                        			if(p.getProduct_category().equals("Men"))
                        			{
                        		%>
                        				<option>---Select Category---</option>
                        				<option value="Men" selected="selected">Men</option>
                        				<option value="Women">Women</option>
                        				<option value="Kids">Kids</option>
                        		<%		
                        			}
                        			else if(p.getProduct_category().equals("Women"))
                        			{
                        		%>
                        				<option>---Select Category---</option>
                        				<option value="Men">Men</option>
                        				<option value="Women" selected="selected">Women</option>
                        				<option value="Kids">Kids</option>
                        		<%		
                        			}
                        			else if(p.getProduct_category().equals("Kids"))
                        			{
                        		%>
                        				<option>---Select Category---</option>
                        				<option value="Men">Men</option>
                        				<option value="Women">Women</option>
                        				<option value="Kids" selected="selected">Kids</option>
                        		<%		
                        			}
                        		%>
                        		
                        	</select>
                        	
                           <input type="text" value="<%=p.getProduct_name()%>" name="product_name" />
                           <input type="text" value="<%=p.getProduct_price()%>" name="product_price" />
                           <textarea placeholder="Enter Product Description" name="product_desc"><%=p.getProduct_desc() %></textarea>
                           <img src="product_images/<%=p.getProduct_image()%>" width="100px" height="100px">
                           <select name="product_size">
                           		<%
                           			if(p.getProduct_size().equals("S"))
                           			{
                           		%>
                           				<option>---Select Size---</option>
                        				<option value="S" selected="selected">S</option>
                        				<option value="M">M</option>
                        				<option value="L">L</option>
                        				<option value="XL">XL</option>
                        				<option value="XXL">XXL</option>
                           		<%		
                           			}
                           			else if(p.getProduct_size().equals("M"))
                           			{
                           		%>
                           				<option>---Select Size---</option>
                        				<option value="S">S</option>
                        				<option value="M" selected="selected">M</option>
                        				<option value="L">L</option>
                        				<option value="XL">XL</option>
                        				<option value="XXL">XXL</option>
                           		<%		
                           			}
                           			else if(p.getProduct_size().equals("L"))
                           			{
                           		%>
                           				<option>---Select Size---</option>
                        				<option value="S">S</option>
                        				<option value="M">M</option>
                        				<option value="L" selected="selected">L</option>
                        				<option value="XL">XL</option>
                        				<option value="XXL">XXL</option>
                           		<%		
                           			}
                           			else if(p.getProduct_size().equals("XL"))
                           			{
                           		%>
                           				<option>---Select Size---</option>
                        				<option value="S">S</option>
                        				<option value="M">M</option>
                        				<option value="L">L</option>
                        				<option value="XL" selected="selected">XL</option>
                        				<option value="XXL">XXL</option>
                           		<%		
                           			}
                           			else if(p.getProduct_size().equals("XXL"))
                           			{
                           		%>
                           				<option>---Select Size---</option>
                        				<option value="S">S</option>
                        				<option value="M">M</option>
                        				<option value="L">L</option>
                        				<option value="XL">XL</option>
                        				<option value="XXL" selected="selected">XXL</option>
                           		<%		
                           			}
                           		%>
                        		
                        	</select>
                           <input type="submit" name="action" value="Update Product" />
                        </fieldset>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end why section -->
      <!-- arrival section -->
      <section class="arrival_section">
         <div class="container">
            <div class="box">
               <div class="arrival_bg_box">
                  <img src="images/arrival-bg.png" alt="">
               </div>
               <div class="row">
                  <div class="col-md-6 ml-auto">
                     <div class="heading_container remove_line_bt">
                        <h2>
                           #NewArrivals
                        </h2>
                     </div>
                     <p style="margin-top: 20px;margin-bottom: 30px;">
                        Vitae fugiat laboriosam officia perferendis provident aliquid voluptatibus dolorem, fugit ullam sit earum id eaque nisi hic? Tenetur commodi, nisi rem vel, ea eaque ab ipsa, autem similique ex unde!
                     </p>
                     <a href="">
                     Shop Now
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end arrival section -->
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
   </body>
</html>