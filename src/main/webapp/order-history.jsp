<%@ page import="java.util.*, com.digitalshop.dao.OrderDAO, com.digitalshop.entity.Order, com.digitalshop.db.DBConnect, com.digitalshop.entity.User" %>
<%@ include file="header.jsp" %>

<%
    User user = (User) session.getAttribute("userObj");
	OrderDAO dao = new OrderDAO();
    List<Order> list = dao.getOrdersByUser(user.getId());
%>

<h2 style="text-align:center; margin-top:30px;">My Orders</h2>

<table border="1" style="width:80%; margin:auto; text-align:center;">
<tr>
<th>Product</th>
<th>Price</th>
<th>Date</th>
</tr>

<% if(list.isEmpty()) { %>
<tr><td colspan="3">No Orders Yet</td></tr>
<% } else {
   for(Order o : list) { %>
<tr>
<td><%= o.getProductName() %></td>
<td>₹ <%= o.getPrice() %></td>
<td><%= o.getOrderDate() %></td>
</tr>
<% }} %>
</table>
