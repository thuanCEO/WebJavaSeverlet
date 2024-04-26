package controller;

import dao.FeedbackDAO;
import dto.Account;
import dto.Feedback;
import dto.OrderDetail;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SubmitFeedbackController", urlPatterns = {"/SubmitFeedbackController"})
public class SubmitFeedbackController extends HttpServlet {

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
        String orderId = request.getParameter("orderId");
        String bookIdStr = request.getParameter("bookId"); // ID của sách
            String starStr = request.getParameter("star"); // Số sao
            String comment = request.getParameter("comment"); // Bình luận
        
        HttpSession session = request.getSession();
        Account account = (Account)session.getAttribute("LOGIN_USER");
            // Chuyển đổi các tham số từ chuỗi sang kiểu dữ liệu thích hợp
            int bookId = Integer.parseInt(bookIdStr);
            int star = Integer.parseInt(starStr);

            // Tạo đối tượng Feedback và gán các giá trị vừa lấy
            Feedback feedback = new Feedback();
            feedback.setBookId(bookId);
            feedback.setStar(star);
            feedback.setDescription(comment);
            feedback.setUserId(account.getUserId());
           FeedbackDAO dao = new FeedbackDAO();
           dao.createFeedback(feedback);
           request.getRequestDispatcher("CreateFeedbackController?orderId="+Integer.parseInt(orderId)).forward(request, response);
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
