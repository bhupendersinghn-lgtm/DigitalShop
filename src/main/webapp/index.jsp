<%@ include file="header.jsp" %>

<section class="banner">
    <div class="banner-content">
        <h1>Welcome to Marketplace</h1>
        <p>Shop from thousands of products across multiple categories</p>
        <button onclick="window.location.href='products.jsp'">Browse Products</button>
    </div>
</section>


<section class="categories-section">
    <h2>Popular Categories</h2>

    <div class="category-grid">
        <div class="category-card">Electronics</div>
        <div class="category-card">Clothing</div>
        <div class="category-card">Home & Kitchen</div>
        <div class="category-card">Sports</div>
    </div>
</section>

<%@ include file="footer.jsp" %>
