<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.Product"%>
<%@page import="com.dao.CartDao"%>
<%@page import="com.bean.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.WishlistDao"%>
<%@page import="com.bean.Wishlist"%>
<%
	int pid=Integer.parseInt(request.getParameter("pid"));
	int uid=Integer.parseInt(request.getParameter("uid"));
	Cart c=new Cart();
	c.setPid(pid);
	c.setUid(uid);
	Product p=ProductDao.getProductByPid(pid);
	int product_price=p.getProduct_price();
	int product_qty=1;
	int total_price=p.getProduct_price();
	boolean payment_status=false;
	c.setProduct_price(product_price);
	c.setProduct_qty(product_qty);
	c.setTotal_price(total_price);
	c.setPayment_status(payment_status);
	CartDao.addToCart(c);
	List<Cart> list=CartDao.getCartByUser(uid);
	session.setAttribute("cart_count", list.size());
	response.sendRedirect("cart.jsp");
%>