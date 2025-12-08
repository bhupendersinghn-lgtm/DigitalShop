<%@ page import="java.util.*, com.digitalshop.entity.Product" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Your Cart</title>
    <style>
        table {
            width: 80%;
            margin: 40px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: center;
        }
        th {
            background: #007bff;
            color: white;
        }
        img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 6px;
        }
        .remove-btn {
            background:red;
            padding:6px 12px;
            color:white;
            text-decoration:none;
            border-radius:5px;
        }
        .checkout-btn {
            background:green;
            padding:12px 20px;
            color:white;
            font-size:18px;
            text-decoration:none;
            border-radius:8px;
        }
    </style>
</head>

<body>

<h2 style="text-align:center; margin-top:30px;">Your Cart</h2>

<table>
    <tr>
        <th>Image</th>
        <th>Name</th>
        <th>Category</th>
        <th>Price</th>
        <th>Action</th>
    </tr>

<%
    List<Product> cart = (List<Product>) session.getAttribute("cart");
    double total = 0;

    if (cart == null || cart.isEmpty()) {
%>
    <tr>
        <td colspan="5">Your cart is empty.</td>
    </tr>
<%
    } else {
        for (Product p : cart) {
            total += p.getPrice();
%>
    <tr>
        <td><img src="assets/upload/<%= p.getImage() %>"></td>
        <td><%= p.getName() %></td>
        <td><%= p.getCategory() %></td>
        <td>₹ <%= p.getPrice() %></td>
        <td>
            <a class="remove-btn" href="removeFromCart?id=<%= p.getId() %>">Remove</a>
        </td>
    </tr>
<%
        }
    }
%>

<% if (cart != null && !cart.isEmpty()) { %>
    <tr>
        <th colspan="3">Total</th>
        <th colspan="2">₹ <%= total %></th>
    </tr>
<% } %>

</table>

<% if (cart != null && !cart.isEmpty()) { %>
<div style="text-align:center; margin-top:20px;">
    <a href="CheckoutServlet?redirect=checkout" class="checkout-btn">Proceed to Checkout</a>
</div>
<% } %>

</body>
</html>
