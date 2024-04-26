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
public class ManagerUpdateImageController extends HttpServlet {


    private final String MANGER_PAGE = "ManagerUpdateImage.jsp";
    private final String MANGER_P = "ManagerImageController";
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String url = MANGER_PAGE;
        try {
            String id = request.getParameter("ID");
            PictureDao dao = new PictureDao();
            BookImages user = dao.detailBookImages(id);
            request.setAttribute("user", user);

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ul = MANGER_P;
        try (PrintWriter out = response.getWriter()) {
            int ImageId = Integer.parseInt(request.getParameter("ImageId"));
            String Url = request.getParameter("Url");
            int Status = Integer.parseInt(request.getParameter("Status"));
            int BookId = Integer.parseInt(request.getParameter("BookId"));
            PictureDao Adao = new PictureDao();
            BookImages item = new BookImages(ImageId, Url, Status, BookId);
            Adao.updateBookImages(item);
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
