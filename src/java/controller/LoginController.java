/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import dto.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VU
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    private final String LOGIN_PAGE = "signin.jsp";
    private final String LOGIN_HOMEPAGE = "HomeController";
    // Admin Page
    private final String ADMIN_PAGE = "AdminController";
    // Manager Page
    private final String MANAGER_PAGE = "ManagerAccountController";
    // Staff Page
    private final String STAFF_PAGE = "StaffController";
  

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = LOGIN_PAGE;
        String button = request.getParameter("btAction");
        try {
            String username = request.getParameter("txtUsername");
            String pw = request.getParameter("txtPassword");
            AccountDAO dao = new AccountDAO();
            Account user = dao.findAccount(username,pw);
            HttpSession session = request.getSession();
            if (user != null) {
                session.setAttribute("LOGIN_USER", user);
                int roleID = user.getRoleId();
                if (roleID == 1) {
                    url = ADMIN_PAGE;
                    session.setAttribute("username", username);
                    session.setAttribute("roleID", roleID);
                } else if (roleID == 2) {
                    url = MANAGER_PAGE;
                    session.setAttribute("username", username);
                    session.setAttribute("roleID", roleID);

                } else if (roleID == 3) {
                    url = STAFF_PAGE;
                    session.setAttribute("username", username);
                    session.setAttribute("roleID", roleID);
                } else if (roleID == 4) {
                    url = LOGIN_HOMEPAGE;
                    session.setAttribute("username", username);
                    session.setAttribute("roleID", roleID);
                }else {
                    request.setAttribute("ERROR_MESSAGE", "Your role is not support");
                }
            } else {
                request.setAttribute("ERROR_MESSAGE", "Incorrect username or password");
            }
        } catch (Exception ex) {
            log("Error at LoginServlet:" + ex.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }

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
