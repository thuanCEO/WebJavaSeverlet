package controller;

import dao.BookDAO;
import dao.OrderDAO;
import dao.OrderDetailDAO;
import dao.PictureDao;
import dao.RecipientDAO;
import dto.Account;
import dto.BookImages;
import dto.Order;
import dto.OrderDetail;
import dto.Recipient;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "OrderDetailController", urlPatterns = {"/OrderDetailController"})
public class OrderDetailController extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "orderDetail.jsp";
        String orderId = request.getParameter("orderId");
        OrderDAO orderDao = new OrderDAO();
        Order order = orderDao.detailOrdersByOrderID(Integer.parseInt(orderId));
        request.setAttribute("order", order);

        OrderDetailDAO orderDetailDao = new OrderDetailDAO();
        List<OrderDetail> listOrderDetail = new ArrayList<>();
        listOrderDetail = orderDetailDao.getOrderDetailByOrderIDAndBookName(Integer.parseInt(orderId));
        request.setAttribute("listOrderDetail", listOrderDetail);

        PictureDao pictureDao = new PictureDao();
        List<BookImages> listBookImage = pictureDao.getBookImages();

// Đặt map này vào request để sử dụng trong JSP
        request.setAttribute("listBookImage", listBookImage);

        HttpSession session = request.getSession();
        Account user = (Account) session.getAttribute("LOGIN_USER");
        request.setAttribute("user", user);

        RecipientDAO recipientDAO = new RecipientDAO();
        Recipient recipient = recipientDAO.getRecipientByOrderID(Integer.parseInt(orderId));
        request.setAttribute("recipient", recipient);

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
        processRequest(request, response);
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
        processRequest(request, response);
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
