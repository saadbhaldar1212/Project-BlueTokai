package com.bluetokai.Final_BlueTokai.servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AdminLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public AdminLoginServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("html/text");

        String adminUsername = request.getParameter("username");
        String adminPassword = request.getParameter("password");
        String adminKey = request.getParameter("securitykey");
        // String username = "admin";
        // String password = "admin"

        HttpSession httpSession = request.getSession();

        if (adminUsername.equals("admin") && adminPassword.equals("admin") && adminKey.equals("976400")) {
            response.sendRedirect("admin_index.jsp");
        } else if (adminUsername == null || adminUsername.length() == 0 || adminUsername.equals("") || adminPassword == null || adminPassword.length() == 0 || adminPassword.equals("")) {
            httpSession.setAttribute("admin_msg", "Enter valid credentials");
            response.sendRedirect("admin_log_in.jsp");
        } else if (adminPassword.length() <= 6){
            httpSession.setAttribute("admin_msg", "Minimum Password length must be 6 or more");
            response.sendRedirect("admin_log_in.jsp");
        } else {
            httpSession.setAttribute("admin_msg", "Invalid Credentials");
            response.sendRedirect("admin_log_in.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
