<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.servlet.http.*" %>

<%
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("sellerObj") == null) {
        response.sendRedirect("seller-login.jsp?msg=login");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<title>Seller Dashboard</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f5f6fa;
    }
    .header {
        background-color: #007bff;
        padding: 20px;
        color: white;
        font-size: 28px;
        text-align: center;
        position: relative;
    }
    .cards-container {
        display: flex;
        justify-content: center;
        gap: 30px;
        padding: 40px;
    }
    .card {
        width: 280px;
        background: white;
        padding: 30px;
        text-align: center;
        border-radius: 12px;
        box-shadow: 0px 2px 10px rgba(0,0,0,0.2);
        transition: 0.3s;
    }
    .card:hover {
        transform: translateY(-5px);
    }
    .card h2 {
        margin-bottom: 15px;
        color: #333;
    }
    .btn {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border-radius: 6px;
        text-decoration: none;
        display: inline-block;
        margin-top: 15px;
    }
    .logout {
        position: absolute;
        right: 20px;
        top: 20px;
        background: #dc3545;
        padding: 8px 14px;
        color: white;
        border-radius: 6px;
        text-decoration: none;
    }
</style>
</head>
<body>

<div class="header">
    Seller Dashboard
    <a href="logout" class="logout">Logout</a>
</div>

<div class="cards-container">

    <div class="card">
        <h2>Add New Product</h2>
        <p>Create & upload new item to sell</p>
        <a href="add-product.jsp" class="btn">Add Product</a>
    </div>

    <div class="card">
        <h2>Manage Products</h2>
        <p>View & edit your uploaded items</p>
        <a href="seller-products.jsp" class="btn">Manage</a>
    </div>

    <div class="card">
        <h2>Orders Received</h2>
        <p>View customer orders</p>
        <a href="seller-orders.jsp" class="btn">Orders</a>
    </div>

</div>

</body>
</html>
