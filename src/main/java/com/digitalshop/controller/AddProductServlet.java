package com.digitalshop.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.digitalshop.dao.ProductDAO;
import com.digitalshop.entity.Product;

@WebServlet("/add-product")
@MultipartConfig
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, java.io.IOException {

        String name = req.getParameter("name");
        String category = req.getParameter("category");
        double price = Double.parseDouble(req.getParameter("price"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String description = req.getParameter("description");

        Part filePart = req.getPart("image");
        String fileName = filePart.getSubmittedFileName();

        // Correct upload path that matches your existing folder
        String uploadPath = getServletContext().getRealPath("/assets/upload");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        String finalPath = uploadPath + File.separator + fileName;

        try (InputStream is = filePart.getInputStream();
             FileOutputStream fos = new FileOutputStream(finalPath)) {

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);

        } catch (Exception e) {
            e.printStackTrace();
        }

        Product p = new Product(name, category, price, quantity, description, fileName);
        ProductDAO dao = new ProductDAO();
        boolean f = dao.saveProduct(p);

        if (f) {
            resp.sendRedirect("seller-dashboard.jsp?msg=success");
        } else {
            resp.sendRedirect("seller-dashboard.jsp?msg=fail");
        }
    }
}
