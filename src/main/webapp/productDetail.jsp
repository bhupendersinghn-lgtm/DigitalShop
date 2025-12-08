<%@ page import="com.digitalshop.dao.ProductDAO, com.digitalshop.entity.Product" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
    <style>
        .details-container {
            width: 70%;
            margin: 40px auto;
            display: flex;
            gap: 40px;
        }
        .details-container img {
            width: 350px;
            height: 350px;
            object-fit: cover;
            border-radius: 10px;
        }
        .info-box h2 { font-size: 28px; margin-bottom:10px; }
        .info-box h3 { color: #007bff; margin-top: 0; }
        .add-btn {
            padding: 12px 25px;
            background:#007bff;
            color:white;
            border:none;
            font-size:18px;
            border-radius:8px;
            cursor:pointer;
            margin-top:20px;
        }
    </style>
</head>
<body>

<%
int id = Integer.parseInt(request.getParameter("id"));
ProductDAO dao = new ProductDAO();
Product p = dao.getAllProducts().stream().filter(pr -> pr.getId() == id).findFirst().orElse(null);
%>

<div class="details-container">

    <img src="assets/upload/<%= p.getImage() %>" alt="<%= p.getName() %>">

    <div class="info-box">
        <h2><%= p.getName() %></h2>
        <h3>₹ <%= p.getPrice() %></h3>
        <p><b>Category:</b> <%= p.getCategory() %></p>
        <p><b>Description:</b> <%= p.getDescription() %></p>

        <form action="add-to-cart" method="post">
            <input type="hidden" name="id" value="<%= p.getId() %>">
            <button type="submit" class="add-btn">Add To Cart</button>
        </form>
    </div>

</div>

</body>
</html>
