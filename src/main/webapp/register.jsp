<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Account</title>

    <style>
        body {
            background: #f4f6f9;
            font-family: Arial, sans-serif;
            margin: 0;
        }
        .register-container {
            width: 450px;
            margin: 40px auto;
            background: #fff;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.2);
            text-align: center;
        }
        .register-container h2 {
            font-size: 26px;
            margin-bottom: 20px;
            color: #007bff;
        }
        .register-input {
            width: 100%;
            padding: 14px;
            margin-top: 12px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 15px;
        }
        .register-btn {
            width: 100%;
            padding: 14px;
            margin-top: 20px;
            background: #007bff;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 18px;
            cursor: pointer;
        }
        .register-btn:hover {
            background: #005fcc;
        }
        .link {
            margin-top: 15px;
            font-size: 15px;
        }
        .link a {
            color: #007bff;
            text-decoration: none;
        }
        .error-msg {
            color: red;
            font-size: 16px;
            margin-bottom: 10px;
        }
        .success-msg {
            color: green;
            font-size: 16px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<div class="register-container">

    <h2>Create Account</h2>

    <%-- Show messages based on ?msg= --%>
    <%
        String msg = request.getParameter("msg");
        if ("error".equals(msg)) {
    %>
        <p class="error-msg">Something went wrong! Please try again.</p>
    <%
        } else if ("pwd".equals(msg)) {
    %>
        <p class="error-msg">Passwords do not match!</p>
    <%
        } else if ("success".equals(msg)) {
    %>
        <p class="success-msg">Registration successful! Please login.</p>
    <%
        }
    %>

    <form action="register" method="post">
        <input type="text" name="name" class="register-input" placeholder="Full Name" required>

        <input type="email" name="email" class="register-input" placeholder="Email Address" required>

        <input type="password" name="password" class="register-input" placeholder="Password" required>

        <input type="password" name="confirmPassword" class="register-input" placeholder="Confirm Password" required>

        <input type="text" name="address" class="register-input" placeholder="Complete Shipping Address" required>

        <input type="text" name="phone" class="register-input" placeholder="Phone Number" required>

        <button type="submit" class="register-btn">Register</button>
    </form>

    <p class="link">
        Already have an account?
        <a href="user-login.jsp">Login</a>
    </p>

</div>

</body>
</html>
