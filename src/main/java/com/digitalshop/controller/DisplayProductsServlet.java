package com.digitalshop.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digitalshop.dao.ProductDAO;
import com.digitalshop.entity.Product;

@WebServlet("/products")
public class DisplayProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.getAllProducts();

        request.setAttribute("productsList", list);
        request.getRequestDispatcher("products.jsp").forward(request, response);
    }
}
