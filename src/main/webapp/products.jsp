<%@ include file="header.jsp" %>

<section class="products-section">
    <h2>Browse Categories</h2>
    <div class="product-grid">

        <div class="product-card">
            <img src="assets/images/electronics.jpg" alt="Electronics">
            <h3>Electronics</h3>
            <p>Mobiles, Laptops, Accessories</p>
            <button onclick="window.location.href='productDetail.jsp'">View</button>
        </div>

        <div class="product-card">
            <img src="assets/images/clothing.jpg" alt="Clothing">
            <h3>Clothing</h3>
            <p>Menswear, Women & Kids</p>
            <button onclick="window.location.href='productDetail.jsp'">View</button>
        </div>

        <div class="product-card">
            <img src="assets/images/home.jpg" alt="Home">
            <h3>Home & Kitchen</h3>
            <p>Furniture, Cookware & Decor</p>
            <button onclick="window.location.href='productDetail.jsp'">View</button>
        </div>

        <div class="product-card">
            <img src="assets/images/sports.jpg" alt="Sports">
            <h3>Sports</h3>
            <p>Cricket, Fitness & Outdoor</p>
            <button onclick="window.location.href='productDetail.jsp'">View</button>
        </div>

    </div>
</section>    

<%@ include file="footer.jsp" %>
