<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<section class="login-section">
    <h1>Seller Login</h1>

    <form class="login-form">
        <input type="text" placeholder="Seller Email or Username" required>
        <input type="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>

    <p class="switch-text">Not a seller yet? <a href="#">Apply to Sell</a></p>
</section>

<%@ include file="footer.jsp" %>
