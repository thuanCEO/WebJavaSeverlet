package controller;

import dao.BookDAO;
import dao.CategoryDAO;
import dao.PictureDao;
import dao.SubCategoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.Book;
import dto.BookImages;
import dto.Category;
import dto.SubCategory;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Quanglatui
 */
@WebServlet(name = "HomeController", urlPatterns = {"/HomeController"})
public class HomeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        String bookName = request.getParameter("txtSearchValue");
        if (bookName == null) {
            bookName = "";
        }
        BookDAO bookDAO = new BookDAO();
        List<Book> searchResult = bookDAO.searchBooksByName(bookName);
        request.setAttribute("searchResult", searchResult);
        
        
        
        String url = "homepage.jsp";
        dao.CategoryDAO cateDao = new CategoryDAO();
        dao.SubCategoryDAO subDao = new SubCategoryDAO();
        List<Category> listCategory = new ArrayList<>();
        listCategory = cateDao.getAllListCategory();
        request.setAttribute("listCategory", listCategory);
        List<SubCategory> listSubCate = new ArrayList<>();
        listSubCate = subDao.getAllListSubCategory();
        request.setAttribute("listSubCategory", listSubCate);

        BookDAO dao = new BookDAO();
        List<Book> listItem = dao.getAllListBook();
        request.setAttribute("list", listItem);
        
        PictureDao pdao = new PictureDao();
        List<BookImages> listBook = pdao.getBookImages();
        request.setAttribute("blist", listBook);

        request.getRequestDispatcher(url).forward(request, response);
    }

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
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
