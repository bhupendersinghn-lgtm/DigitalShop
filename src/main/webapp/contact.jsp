<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<section class="contact-section">
    <h1>Contact Us</h1>
    <p>If you have any questions or feedback, feel free to reach out to us using the form below.</p>

    <form class="contact-form">
        <input type="text" placeholder="Your Name" required>
        <input type="email" placeholder="Your Email" required>
        <textarea placeholder="Your Message" rows="5" required></textarea>
        <button type="submit">Send Message</button>
    </form>
</section>

<%@ include file="footer.jsp" %>
