/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.PictureDao;
import dto.BookImages;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author THUAN
 */
public class StaffCreateImageController extends HttpServlet {

    private final String MANGER_PAGE = "StaffCreateImage.jsp";
     private final String MANGER_P = "StaffImageController";
   
 


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = MANGER_PAGE;
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String ul = MANGER_P;
        try (PrintWriter out = response.getWriter()) {
            String Url = request.getParameter("Url");
            int BookId = Integer.parseInt(request.getParameter("BookId"));
            PictureDao Adao = new PictureDao();
            BookImages item = new BookImages(Url, 1, BookId);
            Adao.createBookImages(item);
            RequestDispatcher rd = request.getRequestDispatcher(ul);
            rd.forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        } 
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
