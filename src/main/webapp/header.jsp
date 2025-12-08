<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.digitalshop.entity.User" %>

<%
    HttpSession session2 = request.getSession(false);
    User userObj = null;
    String username = null;

    if(session2 != null){
        userObj = (User) session2.getAttribute("userObj");
        if(userObj != null){
            username = userObj.getName();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Marketplace</title>
<link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
<nav class="navbar">

    <div class="navbar-left">
        <a href="index.jsp" class="logo">Marketplace</a>
    </div>

    <div class="navbar-center">
        <a href="index.jsp" class="nav-link">Home</a>
        <a href="categories.jsp" class="nav-link">Categories</a>
        <a href="about.jsp" class="nav-link">About us</a>
        <a href="contact.jsp" class="nav-link">Contact us</a>
    </div>

    <div class="navbar-right">
        <% if (userObj != null) { %>
            <span class="user-name">Hi, <%= username %></span>
            <a href="logout" class="btn-Logout">Logout</a>
        <% } else { %>
            <a href="user-login.jsp" class="btn-Login">Login</a>
        <% } %>
    </div>

</nav>
