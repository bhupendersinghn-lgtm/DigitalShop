<%@ page import="java.util.*, com.digitalshop.entity.Product" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>Checkout</title>
<style>
    .checkout-box {
        width: 450px;
        margin: 40px auto;
        padding: 25px;
        border:1px solid #ddd;
        border-radius:10px;
        background:white;
        box-shadow:0px 2px 10px rgba(0,0,0,0.2);
    }
    input, textarea {
        width:100%;
        padding:10px;
        margin-top:10px;
        border:1px solid #ccc;
        border-radius:6px;
    }
    button {
        width:100%;
        margin-top:15px;
        padding:12px;
        background:#007bff;
        color:white;
        border:none;
        border-radius:6px;
        font-size:18px;
        cursor:pointer;
    }
</style>
</head>

<body>

<div class="checkout-box">
    <h2 style="text-align:center;">Checkout</h2>

    <form action="placeorder" method="post">

        <input type="text" name="name" placeholder="Full Name" required>
        <input type="text" name="email" placeholder="Email" required>
        <input type="text" name="phone" placeholder="Phone Number" required>
        <textarea name="address" rows="3" placeholder="Shipping Address" required></textarea>

        <button type="submit">Place Order</button>

    </form>
</div>

</body>
</html>
