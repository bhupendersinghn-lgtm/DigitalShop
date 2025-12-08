package com.digitalshop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitalshop.dao.OrderDAO;
import com.digitalshop.entity.Product;
import com.digitalshop.entity.User;

@WebServlet("/placeorder")
public class PlaceOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("userObj");

        // Must be logged in
        if (user == null) {
            response.sendRedirect("user-login.jsp?msg=loginRequired");
            return;
        }

        String name    = request.getParameter("name");
        String email   = request.getParameter("email");
        String phone   = request.getParameter("phone");
        String address = request.getParameter("address");

        @SuppressWarnings("unchecked")
        List<Product> cart = (List<Product>) session.getAttribute("cart");

        // No items in cart
        if (cart == null || cart.isEmpty()) {
            response.sendRedirect("cart.jsp");
            return;
        }

        OrderDAO dao = new OrderDAO();
        boolean allOk = true;

        for (Product p : cart) {
            boolean saved = dao.saveOrder(
                    name,
                    email,
                    phone,
                    address,
                    p.getName(),
                    p.getPrice(),
                    user.getId()
            );
            if (!saved) {
                allOk = false;
                break;
            }
        }

        if (allOk) {
            session.removeAttribute("cart");
            response.sendRedirect("order-success.jsp");
        } else {
            response.sendRedirect("checkout.jsp?msg=fail");
        }
    }
}
