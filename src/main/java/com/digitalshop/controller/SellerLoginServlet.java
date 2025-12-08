package com.digitalshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitalshop.dao.UserDAO;
import com.digitalshop.entity.User;

@WebServlet("/seller-login")
public class SellerLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();
        User seller = dao.login(email, password);

        if (seller != null && "seller".equals(seller.getRole())) {

            HttpSession session = request.getSession();
            session.setAttribute("sellerObj", seller);

            response.sendRedirect("seller-dashboard.jsp");
        } else {
            response.sendRedirect("seller-login.jsp?msg=invalid");
        }
    }
}
