package com.digitalshop.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.digitalshop.db.DBConnect;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String address = request.getParameter("address");   // not stored in users table
        String phone = request.getParameter("phone");       // not stored in users table

        // 1) Check password match
        if (!password.equals(confirmPassword)) {
            response.sendRedirect("register.jsp?msg=pwd");
            return;
        }

        try {
            Connection conn = DBConnect.getConn();

            // 2) Insert into users table (name, email, password, role)
            String sql = "INSERT INTO users(name, email, password, role) VALUES (?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, "customer");   // default role

            int i = ps.executeUpdate();

            if (i > 0) {
                // 3) On success, go to login page with success msg
                response.sendRedirect("user-login.jsp?msg=success");
            } else {
                response.sendRedirect("register.jsp?msg=error");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?msg=error");
        }
    }
}
