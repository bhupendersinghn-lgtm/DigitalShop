package com.digitalshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/seller-dashboard")
public class SellerDashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("userName");
        String userRole = (String) session.getAttribute("userRole");

        // If no session or not seller -> redirect to login
        if (userName == null || userRole == null || !userRole.equals("seller")) {
            response.sendRedirect("seller-login.jsp");
            return;
        }

        // Forward to dashboard JSP
        request.getRequestDispatcher("seller-dashboard.jsp").forward(request, response);
    }
}
