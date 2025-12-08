	<%@ page contentType="text/html; charset=UTF-8" %>
	<%@ include file="header.jsp" %>
	
	<!DOCTYPE html>
	<html>
	<head>
	<title>Add Product</title>
	<style>
	    .form-container {
	        width: 450px;
	        margin: 40px auto;
	        padding: 25px;
	        border: 1px solid #ddd;
	        border-radius: 10px;
	        background: #fff;
	        box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
	    }
	    .form-container input, select, textarea {
	        width: 100%;
	        padding: 10px;
	        margin-top: 10px;
	        border: 1px solid #ccc;
	        border-radius: 5px;
	    }
	    button {
	        width: 100%;
	        margin-top: 15px;
	        padding: 12px;
	        background: #007bff;
	        color: white;
	        border: none;
	        border-radius: 6px;
	        cursor: pointer;
	        font-size: 18px;
	    }
	</style>
	</head>
	
	<body>
	
	<div class="form-container">
	
	<h2 style="text-align:center;">Add Product</h2>
	
	<form action="add-product" method="post" enctype="multipart/form-data">
	
	    <input type="text" name="name" placeholder="Product Name" required>
	
	    <select name="category" required>
	        <option value="">Select Category</option>
	        <option value="Category 1">Category 1</option>
	        <option value="Category 2">Category 2</option>
	        <option value="Category 3">Category 3</option>
	        <option value="Category 4">Category 4</option>
	    </select>
	
	    <input type="number" name="price" placeholder="Price" required>
	
	    <input type="number" name="quantity" placeholder="Quantity" required>
	
	    <textarea name="description" rows="3" placeholder="Description"></textarea>
	
	    <input type="file" name="image" required>
	
	    <button type="submit">Add Product</button>
	</form>
	
	</div>
	
	</body>
	</html>
	
	<%@ include file="footer.jsp" %>
