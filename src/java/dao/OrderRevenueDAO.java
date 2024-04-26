/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.OrderRevenue;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import util.DBContext;

/**
 *
 * @author THUAN
 */
public class OrderRevenueDAO {

    // Doanh thu theo ngày
    public List<OrderRevenue> getTotalRevenueByDateRange(String startDate, String endDate) throws ClassNotFoundException {
        List<OrderRevenue> revenueList = new ArrayList<>();
        String query = "SELECT CONVERT(date, OrderDate) AS OrderDate, "
                + "SUM(TotalPrice) AS TotalRevenue "
                + "FROM Orders "
                + "WHERE OrderDate >= ? AND OrderDate <= ? AND Status = 4"
                + "GROUP BY CONVERT(date, OrderDate) "
                + "ORDER BY CONVERT(date, OrderDate) ASC";

        try (Connection conn = new DBContext().getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, startDate);
            ps.setString(2, endDate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Timestamp orderDate = rs.getTimestamp("OrderDate");
                int totalRevenue = rs.getInt("TotalRevenue");
                revenueList.add(new OrderRevenue(orderDate, totalRevenue));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return revenueList;
    }

    // Tong cac don hang thanh toan thanh cong 
    public int getTotalOrderPriceByStatus4() throws ClassNotFoundException, SQLException {
        int totalOrderPrice = 0;
        String query = "SELECT SUM(TotalPrice) AS TotalOrderPrice "
                + "FROM Orders "
                + "WHERE Status = 4";

        try (Connection conn = new DBContext().getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                totalOrderPrice = rs.getInt("TotalOrderPrice");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
        return totalOrderPrice;
    }

    public int getTotalOrderCountByStatus4() throws ClassNotFoundException, SQLException {
        int totalOrderCount = 0;
        String query = "SELECT COUNT(*) AS TotalOrderCount FROM Orders WHERE Status = 4";

        try (Connection conn = new DBContext().getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                totalOrderCount = rs.getInt("TotalOrderCount");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
        return totalOrderCount;
    }

     public int getTotalProductCount() throws ClassNotFoundException, SQLException {
        int totalProductCount = 0;
        String query = "SELECT COUNT(*) AS TotalProducts FROM Books";
        
        try (Connection conn = new DBContext().getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                totalProductCount = rs.getInt("TotalProducts");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
        return totalProductCount;
    }
}
