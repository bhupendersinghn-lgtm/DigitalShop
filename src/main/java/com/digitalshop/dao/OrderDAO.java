package com.digitalshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.digitalshop.db.DBConnect;
import com.digitalshop.entity.Order;

public class OrderDAO {

    private Connection conn;

    public OrderDAO() {
        this.conn = DBConnect.getConn();
    }

    // SAVE ONE ROW IN orders TABLE
    public boolean saveOrder(String buyerName,
                             String email,
                             String phone,
                             String address,
                             String productName,
                             double price,
                             int userId) {

        boolean success = false;

        try {
            // your orders table columns (from screenshot):
            // id, address, email, fullname, order_date, phone,
            // product, quantity, status, total, user_id
            String sql = "INSERT INTO orders " +
                         "(product, email, fullname, phone, address, quantity, status, total, user_id) " +
                         "VALUES (?,?,?,?,?,?,?,?,?)";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, productName);
            ps.setString(2, email);
            ps.setString(3, buyerName);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setInt(6, 1);              // quantity = 1 for each cart item
            ps.setString(7, "Pending");   // default status
            ps.setDouble(8, price);       // total = price of that product
            ps.setInt(9, userId);

            int i = ps.executeUpdate();
            if (i == 1) {
                success = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }

    // ALL ORDERS (for seller dashboard)
    public List<Order> getAllOrders() {
        List<Order> list = new ArrayList<>();

        try {
            String sql = "SELECT * FROM orders ORDER BY id DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setProductName(rs.getString("product"));
                o.setBuyerName(rs.getString("fullname"));
                o.setPrice(rs.getDouble("total"));      // map total -> price field
                o.setOrderDate(rs.getString("order_date"));
                list.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ORDERS BY USER (My Orders)
    public List<Order> getOrdersByUser(int userId) {
        List<Order> list = new ArrayList<>();

        try {
            String sql = "SELECT * FROM orders WHERE user_id=? ORDER BY id DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setProductName(rs.getString("product"));
                o.setPrice(rs.getDouble("total"));
                o.setOrderDate(rs.getString("order_date"));
                list.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
