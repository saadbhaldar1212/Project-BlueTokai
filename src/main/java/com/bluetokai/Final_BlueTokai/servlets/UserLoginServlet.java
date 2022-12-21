package com.bluetokai.Final_BlueTokai.servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.bluetokai.Final_BlueTokai.dao.UserDao;
import com.bluetokai.Final_BlueTokai.entities.User;
import com.bluetokai.Final_BlueTokai.helper.FactoryProvider;

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

        HttpSession httpSession = request.getSession();

        if (user == null) {

            httpSession.setAttribute("login_message", "Invalid Credentials");
            response.sendRedirect("user_log_in.jsp");

        } else {

            response.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
