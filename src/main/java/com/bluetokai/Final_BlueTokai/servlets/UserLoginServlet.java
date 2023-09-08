package com.bluetokai.Final_BlueTokai.servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.bluetokai.Final_BlueTokai.dao.UserDao;
import com.bluetokai.Final_BlueTokai.entities.User;
import com.bluetokai.Final_BlueTokai.helper.FactoryProvider;
import com.bluetokai.Final_BlueTokai.regex.EmailValidator;

public class UserLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public UserLoginServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("html/text");

        String u_email = request.getParameter("u_email");
        String u_pass = request.getParameter("u_pass");

        //validations
        //authenticate
        UserDao userDao = new UserDao(FactoryProvider.getFactory());
        User user = userDao.getUserByEmailAndPassword(u_email, u_pass);
        User userUsername = userDao.getUserByEmail(u_email);

        HttpSession httpSession = request.getSession();
        EmailValidator emailValidator;

        if (user == null) {

            httpSession.setAttribute("login_message", "Credentials cannot be null");
            response.sendRedirect("user_log_in.jsp");

        } 
        //Regex Email Validations
        else if (emailValidator.isValidEmail(userUsername)) {
            httpSession.setAttribute("login_message", "Invalid Email Credentials");
            response.sendRedirect("user_log_in.jsp");
        }
        //Null check
        else if (adminUsername == null || adminUsername.length() == 0 || adminUsername.equals("") || adminPassword == null || adminPassword.length() == 0 || adminPassword.equals("")) {
            httpSession.setAttribute("admin_msg", "Credentials cannot be null");
            response.sendRedirect("admin_log_in.jsp");
        } 
        //Password length check
        else if (adminPassword.length() <= 5){
            httpSession.setAttribute("admin_msg", "Minimum Password length must be 6 or more");
            response.sendRedirect("admin_log_in.jsp");
        }
        //Rest of the validations
        // else if (emailValidator.isValidEmail(user)) {
        //     httpSession.setAttribute("login_message", "Invalid Email Credentials");
        //     response.sendRedirect("user_log_in.jsp");
        // }
        
        else {

            response.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
