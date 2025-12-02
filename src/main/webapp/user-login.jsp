<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<section class="login-section">
    <h1>User Login</h1>

    <form class="login-form">
        <input type="text" placeholder="Email or Username" required>
        <input type="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>

    <p class="switch-text">Don't have an account? <a href="register.jsp">Create Account</a></p>
</section>

<%@ include file="footer.jsp" %>
