/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.BookImages;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static util.DBContext.getConnection;

/**
 *
 * @author DELL
 */
public class PictureDao {

    public List<BookImages> getBookImages() {
        List<BookImages> listBook = new ArrayList<BookImages>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = getConnection().prepareStatement("SELECT * FROM BookImages");
            rs = pst.executeQuery();
            while (rs.next()) {
                listBook.add(new BookImages(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4)));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listBook;
    }

    public BookImages detailBookImages(String id) throws ClassNotFoundException, SQLException {
        BookImages ac = null;
        try {
            String sql = "select * from BookImages where ImageId=? ";
            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int OrderId = rs.getInt("ImageId");
                String Url = rs.getString("Url");
                int Status = rs.getInt("Status");
                int BookId = rs.getInt("BookId");
                ac = new BookImages(BookId, Url, Status, BookId);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ac;
    }

    public BookImages updateBookImages(BookImages edittedItem) {
        try {
            String sql = "update BookImages set Url=?, Status=?, BookId=? where ImageId=? ";
            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, edittedItem.getUrl());
            stmt.setInt(2, edittedItem.getStatus());
            stmt.setInt(3, edittedItem.getBookId());
            stmt.setInt(4, edittedItem.getImageId());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public BookImages createBookImages(BookImages newItem) {
        try {
            String sql = "insert into BookImages(Url,Status,BookId) "
                    + "values(?,?,?)";
            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, newItem.getUrl());
            stmt.setInt(2, newItem.getStatus());
            stmt.setInt(3, newItem.getBookId());
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public BookImages deleteBookImages(String id) {
        try {
            String sql = "delete from BookImages where ImageId =? ";
            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    public List<BookImages> getBookImagesByBookID(int bookId) {
        List<BookImages> listBook = new ArrayList<BookImages>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = getConnection().prepareStatement("SELECT * FROM BookImages where BookId = ?");
            pst.setInt(1, bookId);
            rs = pst.executeQuery();
            while (rs.next()) {
                listBook.add(new BookImages(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4)));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listBook;
    }
}
