<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Marketplace</title>
</head>
<body>

<!-- Banner Section -->
<div class="banner">
    <div class="banner-content">
        <h1>Welcome to Marketplace</h1>
        <p>Shop from thousands of products across multiple categories</p>
        <a href="products.jsp" class="banner-btn">Browse Products</a>
    </div>
</div>

<!-- Popular Categories Section -->
<h2 style="text-align:center; margin-top:40px; font-weight:bold;">Popular Categories</h2>

<div class="category-buttons">
    <a href="products.jsp?category=Category 1">Category 1</a>
    <a href="products.jsp?category=Category 2">Category 2</a>
    <a href="products.jsp?category=Category 3">Category 3</a>
    <a href="products.jsp?category=Category 4">Category 4</a>
</div>


<br><br>
<footer>
    <p>© 2025 Marketplace. All Rights Reserved.</p>
</footer>

</body>
</html>
