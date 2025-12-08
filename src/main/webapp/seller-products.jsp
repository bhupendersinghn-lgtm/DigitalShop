<%@ page import="java.util.*, com.digitalshop.dao.ProductDAO, com.digitalshop.entity.Product" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Seller Products</title>
    <style>
        table {
            width: 80%;
            margin: 40px auto;
            border-collapse: collapse;
            text-align: center;
        }
        table th, td {
            padding: 12px;
            border: 1px solid #ddd;
        }
        table th {
            background: #007bff;
            color: white;
        }
        img {
            border-radius: 8px;
            object-fit: cover;
        }
        .delete-btn {
            background: red;
            color: white;
            padding: 8px 15px;
            border-radius: 8px;
            text-decoration: none;
        }
    </style>
</head>
<body>

<h2 style="text-align:center; margin-top:30px;">Manage Uploaded Products</h2>

<table>
<tr>
    <th>ID</th>
    <th>Product</th>
    <th>Image</th>
    <th>Category</th>
    <th>Price</th>
    <th>Remove</th>
</tr>

<%
ProductDAO dao = new ProductDAO();
List<Product> list = dao.getAllProducts();

for (Product p : list) {
%>
<tr>
    <td><%= p.getId() %></td>
    <td><%= p.getName() %></td>
    <td><img src="assets/upload/<%= p.getImage() %>" width="80" height="80"></td>
    <td><%= p.getCategory() %></td>
    <td>₹ <%= p.getPrice() %></td>
    <td><a href="delete-product?id=<%= p.getId() %>" class="delete-btn">Delete</a></td>
</tr>
<%
}
%>
</table>

</body>
</html>
