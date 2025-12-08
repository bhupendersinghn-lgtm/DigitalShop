<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login</title>

    <style>
        body{ background:#f4f6f9; margin:0; font-family:Arial;}
        .container{ width:420px; margin:50px auto; background:white; padding:30px; border-radius:10px;
            box-shadow:0 3px 10px rgba(0,0,0,0.2); text-align:center;}
        h2{ font-size:26px; margin-bottom:15px;}
        .input{ width:100%; padding:14px; margin-top:12px; border-radius:6px; border:1px solid #ccc;}
        .btn{ width:100%; padding:14px; margin-top:20px; background:#007bff; border:none;
            color:white; border-radius:6px; font-size:18px;}
        .btn:hover{ background:#005fcc; cursor:pointer;}
        .error{ color:red; font-size:16px;}
        .success{ color:green; font-size:16px;}
        a{color:#007bff; text-decoration:none;}
    </style>
</head>
<body>

<div class="container">

    <h2>User Login</h2>

    <% String msg = request.getParameter("msg");
       if("invalid".equals(msg)){ %>
            <p class="error">Invalid email or password!</p>
    <% } else if("success".equals(msg)) { %>
            <p class="success">Registration successful! Please login.</p>
    <% } %>

    <form action="login" method="post">
        <input type="email" name="email" class="input" placeholder="Email" required>
        <input type="password" name="password" class="input" placeholder="Password" required>
        <button type="submit" class="btn">Login</button>
    </form>

    <p style="margin-top:15px;">Don't have an account? <a href="register.jsp">Register here</a></p>
</div>

</body>
</html>
