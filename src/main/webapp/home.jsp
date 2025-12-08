<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Marketplace - Home</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #f5f6fa;
        }

        /* Header */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #007bff;
            padding: 15px 30px;
            color: white;
        }

        .navbar-links a {
            margin: 0 15px;
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .navbar-links a:hover {
            text-decoration: underline;
        }

        .login-btn {
            padding: 8px 20px;
            background: white;
            color: #007bff;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
        }

        /* Home Title */
        .title {
            text-align: center;
            margin-top: 40px;
            font-size: 32px;
            font-weight: bold;
        }

        /* Categories Block */
        .categories {
            display: flex;
            justify-content: center;
            gap: 25px;
            padding: 40px 20px;
        }

        .category-card {
            background: white;
            padding: 18px 45px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0,0,0,0.15);
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            color: #333;
            transition: 0.3s;
        }

        .category-card:hover {
            background: #007bff;
            color: white;
            transform: translateY(-5px);
        }

        /* Footer */
        footer {
            text-align: center;
            background: #007bff;
            color: white;
            padding: 25px;
            margin-top: 40px;
            font-size: 18px;
        }
    </style>
</head>
<body>

<!-- HEADER -->
<div class="navbar">
    <div class="logo">
        <h2 style="color:white; margin:0;">Marketplace</h2>
    </div>

    <div class="navbar-links">
        <a href="home.jsp">Home</a>
        <a href="categories.jsp">Categories</a>
        <a href="about.jsp">About us</a>
        <a href="contact.jsp">Contact us</a>
        <a class="login-btn" href="seller-login.jsp">Login</a>
    </div>
</div>

<!-- TITLE -->
<h2 class="title">Popular Categories</h2>

<!-- CATEGORY BLOCK -->
<div class="categories">
    <a href="products?category=Category 1" class="category-card">Category 1</a>
    <a href="products?category=Category 2" class="category-card">Category 2</a>
    <a href="products?category=Category 3" class="category-card">Category 3</a>
    <a href="products?category=Category 4" class="category-card">Category 4</a>
</div>

<!-- FOOTER -->
<footer>
    © 2025 Marketplace. All Rights Reserved.
</footer>

</body>
</html>
