<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.digitalshop.dao.OrderDAO, com.digitalshop.entity.Order" %>

<!DOCTYPE html>
<html>
<head>
<title>Orders Received</title>
<style>
    body { font-family: Arial; background:#f2f2f2; }
    table { width:80%; margin:40px auto; border-collapse: collapse; background:white; }
    th, td { border:1px solid #ddd; padding:12px; text-align:center; }
    th { background:#007bff; color:white; }
</style>
</head>
<body>

<h2 style="text-align:center; margin-top:30px;">Orders Received</h2>

<table>
<tr>
    <th>Order ID</th>
    <th>Product</th>
    <th>Buyer Name</th>
    <th>Price</th>
</tr>

<%
    OrderDAO dao = new OrderDAO();
    List<Order> orders = dao.getAllOrders();

    if (orders.isEmpty()) {
%>
<tr>
    <td colspan="4">No orders found</td>
</tr>
<%
    } else {
        for (Order o : orders) {
%>
<tr>
    <td><%= o.getId() %></td>
    <td><%= o.getProductName() %></td>
    <td><%= o.getBuyerName() %></td>
    <td>₹ <%= o.getPrice() %></td>
</tr>
<%
        }
    }
%>

</table>

</body>
</html>
