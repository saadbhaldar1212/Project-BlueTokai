package com.bluetokai.Final_BlueTokai.servlets;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.hibernate.*;

import com.bluetokai.Final_BlueTokai.entities.User;
import com.bluetokai.Final_BlueTokai.helper.FactoryProvider;
import com.bluetokai.Final_BlueTokai.dao.UserDao;
import java.util.List;

public class UserSignUpServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public UserSignUpServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        UserDao dDao = new UserDao(FactoryProvider.getFactory());
        List<User> list = dDao.getAllUsers();

        try {
            String new_username = request.getParameter("new_username");
            String new_email = request.getParameter("new_email");
            String new_password1 = request.getParameter("new_password1");
            String new_password2 = request.getParameter("new_password2");
            String new_address1 = request.getParameter("new_address1");
            String new_address2 = request.getParameter("new_address2");
            String new_city = request.getParameter("new_city");
            String new_zip = request.getParameter("new_zip");

            // Creating user object to store data
            User user = new User(new_username, new_email, new_password1, new_password2, new_address1, new_address2, new_city, new_zip);
            User userUsername = userDao.getUserByEmail(new_email);

            Session hibernateSession = FactoryProvider.getFactory().openSession();
            Transaction tx = hibernateSession.beginTransaction();

            int useId = (Integer) hibernateSession.save(user);

            tx.commit();
            hibernateSession.close();

            HttpSession httpSession = request.getSession();
            EmailValidator emailValidator;

            for (User u : list) {
                if (new_email.equals(u.getUserEmail())) {
                    httpSession.setAttribute("message2", "User already exists");
                    response.sendRedirect("user_sign_in.jsp");
                }
            }

            // validations
            if (new_username.isEmpty()) {
                httpSession.setAttribute("message1", "All Fields are Required");
                response.sendRedirect("user_sign_in.jsp");
            } 
            //Regex Email Validations
            else if (emailValidator.isValidEmail(userUsername)) {
                httpSession.setAttribute("message1", "Invalid Email Credentials");
                response.sendRedirect("user_sign_in.jsp");
            }
            else {
                httpSession.setAttribute("message", "Registration Successful");
                response.sendRedirect("user_sign_in.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
