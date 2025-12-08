<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.digitalshop.dao.ProductDAO, com.digitalshop.entity.Product" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products</title>
    <link rel="stylesheet" href="assets/css/style.css">

    <style>
        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding: 30px;
        }

        .product-card {
            width: 260px;
            background: white;
            border-radius: 12px;
            box-shadow: 0px 3px 10px rgba(0,0,0,0.15);
            padding: 15px;
            text-align: center;
            transition: 0.3s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            cursor: pointer;
        }

        .product-img {
            width: 100%;
            height: 200px;
            border-radius: 10px;
            object-fit: cover;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<h1 style="text-align:center; margin-top:30px;">Available Products</h1>

<div class="product-container">

<%
ProductDAO dao = new ProductDAO();
String category = request.getParameter("category");
List<Product> list = null;

if (category != null && !category.trim().isEmpty()) {
    list = dao.getProductsByCategory(category);
} else {
    list = dao.getAllProducts();
}

if (list.isEmpty()) {
%>
    <h3 style="text-align:center;">No products available.</h3>
<%
} else {
    for (Product p : list) {
%>

    <div class="product-card">
        <a href="productDetail.jsp?id=<%= p.getId() %>" style="text-decoration:none; color:black;">
            <img src="assets/upload/<%= p.getImage() %>" alt="<%= p.getName() %>" class="product-img">
            <h3><%= p.getName() %></h3>
            <p><%= p.getCategory() %></p>
            <h4>₹ <%= p.getPrice() %></h4>
        </a>
    </div>

<%
    }
}
%>

</div>

</body>
</html>
