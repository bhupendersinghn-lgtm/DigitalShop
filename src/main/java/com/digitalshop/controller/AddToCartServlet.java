package com.digitalshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitalshop.dao.ProductDAO;
import com.digitalshop.entity.Product;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        ProductDAO dao = new ProductDAO();
        List<Product> products = dao.getAllProducts();

        Product selectedProduct = null;

        for (Product p : products) {
            if (p.getId() == id) {
                selectedProduct = p;
                break;
            }
        }

        HttpSession session = req.getSession();
        List<Product> cart = (List<Product>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        cart.add(selectedProduct);

        session.setAttribute("cart", cart);

        resp.sendRedirect("cart.jsp");
    }
}
