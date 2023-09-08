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

            httpSession.setAttribute("login_message", "Invalid Credentials");
            response.sendRedirect("user_log_in.jsp");

        } 
        //Regex Email Validations
        else if (emailValidator.isValidEmail(userUsername)) {
            httpSession.setAttribute("login_message", "Invalid Email Credentials");
            response.sendRedirect("user_log_in.jsp");
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
