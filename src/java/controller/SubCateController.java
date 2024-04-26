package controller;

import dao.BookDAO;
import dao.CategoryDAO;
import dao.PictureDao;
import dao.SubCategoryDAO;
import dto.Book;
import dto.BookImages;
import dto.Category;
import dto.SubCategory;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Quanglatui
 */
@WebServlet(name = "SubCateController", urlPatterns = {"/SubCateController"})
public class SubCateController extends HttpServlet {

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
        dao.CategoryDAO cateDao = new CategoryDAO();
        dao.SubCategoryDAO subDao = new  SubCategoryDAO();
        List<Category> listCategory = new ArrayList<>();
        listCategory = cateDao.getAllListCategory();
        request.setAttribute("listCategory", listCategory);
        
        List<SubCategory> listSubCate = new ArrayList<>();
        listSubCate = subDao.getAllListSubCategory();
        request.setAttribute("listSubCategory", listSubCate);
        
        
        String url = "subcategory.jsp";
        String cateId = request.getParameter("cateId");
        
        List<SubCategory> subList = new ArrayList<>();
        SubCategoryDAO dao = new SubCategoryDAO();
        subList =dao.getListSubCategoryByCategoryId(Integer.parseInt(cateId));
        request.setAttribute("subList", subList);
        
        
        BookDAO bdao = new BookDAO();
        List<Book> listItem = bdao.getAllListBook();
        List<Book> listbook = bdao.getBookByCate(Integer.parseInt(cateId));
        request.setAttribute("listbook", listbook);
        
        
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
            Logger.getLogger(SubCateController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(SubCateController.class.getName()).log(Level.SEVERE, null, ex);
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
