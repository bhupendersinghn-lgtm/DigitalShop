package com.digitalshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitalshop.entity.Product;
import java.util.List;

@WebServlet("/remove-from-cart")
public class RemoveFromCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        HttpSession session = req.getSession();

        List<Product> cart = (List<Product>) session.getAttribute("cart");

        if (cart != null) {
            cart.removeIf(p -> p.getId() == id);
            session.setAttribute("cart", cart);
        }

        resp.sendRedirect("cart.jsp");
    }
}
