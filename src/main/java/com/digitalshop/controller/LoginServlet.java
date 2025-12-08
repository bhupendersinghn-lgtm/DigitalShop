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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            UserDAO dao = new UserDAO();       // << CORRECT
            User user = dao.login(email, password);

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("userObj", user);

                // Redirect to checkout if user originally wanted to checkout
                String redirect = (String) session.getAttribute("redirectAfterLogin");

                if (redirect != null && redirect.equals("checkout")) {
                    session.removeAttribute("redirectAfterLogin");
                    response.sendRedirect("checkout.jsp");
                } else {
                    response.sendRedirect("index.jsp");
                }

            } else {
                request.getSession().setAttribute("errorMsg", "Invalid Credentials!");
                response.sendRedirect("user-login.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
