package com.digitalshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digitalshop.dao.ProductDAO;

@WebServlet("/delete-product")
public class DeleteProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        ProductDAO dao = new ProductDAO();

        boolean f = dao.deleteProduct(id);

        if (f) {
            response.sendRedirect("seller-products.jsp?msg=deleted");
        } else {
            response.sendRedirect("seller-products.jsp?msg=error");
        }
    }
}
