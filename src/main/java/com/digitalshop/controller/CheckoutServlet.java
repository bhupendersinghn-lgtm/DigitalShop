package com.digitalshop.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();
        Object userObj = session.getAttribute("userObj");

        if (userObj == null) {
            session.setAttribute("redirectAfterLogin", "checkout");
            response.sendRedirect("user-login.jsp?msg=loginRequired");
        } else {
            response.sendRedirect("checkout.jsp");
        }
    }
}
