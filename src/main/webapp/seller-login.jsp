<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Seller Login</title>
    <style>
        .login-section {
            width: 350px;
            margin: 50px auto;
            padding: 25px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0px 0px 10px #ccc;
            text-align: center;
            background-color: #fff;
        }
        .login-form input {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            font-size: 16px;
        }
        .login-form button {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            font-size: 18px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 6px;
        }
        .login-form button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

<section class="login-section">
    <h1>Seller Login</h1>

    <% 
        String msg = request.getParameter("msg");
        if ("invalid".equals(msg)) {
    %>
        <p style="color:red; font-size:16px;">Invalid seller credentials!</p>
    <% 
        }
    %>

    <form class="login-form" action="seller-login" method="post">
        <input type="email" name="email" placeholder="Seller Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
</section>

</body>
</html>

<%@ include file="footer.jsp" %>
