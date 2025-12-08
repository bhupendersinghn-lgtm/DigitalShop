<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Categories</title>
    <style>
        .category-container {
            display: flex;
            justify-content: center;
            gap: 40px;
            padding: 40px;
        }
        .category-box {
            width: 250px;
            padding: 25px;
            text-align: center;
            background: white;
            border-radius: 12px;
            box-shadow: 0px 2px 10px rgba(0,0,0,0.2);
            font-size: 20px;
            cursor: pointer;
            transition: 0.3s;
            text-decoration: none;
            color: black;
        }
        .category-box:hover {
            transform: translateY(-5px);
            background: #eaf3ff;
        }
    </style>
</head>
<body>

<h2 style="text-align:center; margin-top:30px;">Select a Category</h2>

<div class="category-container">
    <a href="products?category=Category 1" class="category-box">Category 1</a>
    <a href="products?category=Category 2" class="category-box">Category 2</a>
    <a href="products?category=Category 3" class="category-box">Category 3</a>
    <a href="products?category=Category 4" class="category-box">Category 4</a>
</div>

</body>
</html>

<%@ include file="footer.jsp" %>
