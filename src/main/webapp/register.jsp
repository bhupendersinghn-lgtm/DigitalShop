<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<section class="register-section">
    <h1>Create Account</h1>

    <form class="register-form">
        <input type="text" placeholder="Full Name" required>
        <input type="email" placeholder="Email" required>
        <input type="text" placeholder="Phone Number" required>
        <input type="password" placeholder="Create Password" required>
        <input type="password" placeholder="Confirm Password" required>

        <button type="submit">Register</button>
    </form>

    <p class="switch-text">Already have an account? <a href="user-login.jsp">Login</a></p>
</section>

<%@ include file="footer.jsp" %>
