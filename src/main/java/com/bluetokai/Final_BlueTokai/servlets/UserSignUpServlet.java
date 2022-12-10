package com.bluetokai.Final_BlueTokai.servlets;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.hibernate.*;

import com.bluetokai.Final_BlueTokai.entities.User;
import com.bluetokai.Final_BlueTokai.helper.FactoryProvider;

public class UserSignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserSignUpServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		try {

			String new_username = request.getParameter("new_username");
			String new_email = request.getParameter("new_email");
			String new_password1 = request.getParameter("new_password1");
			String new_password2 = request.getParameter("new_password2");
			String new_address1 = request.getParameter("new_address1");
			String new_address2 = request.getParameter("new_address2");
			String new_city = request.getParameter("new_city");
			String new_zip = request.getParameter("new_zip");

			// validations

			if (new_username.isEmpty()) {
				out.println("Name is blank");
				return;
			}

			// Creating user object to store data

			User user = new User(new_username, new_email,new_password1, new_password2, new_address1, new_address2, new_city, new_zip);

			Session hibernateSession = FactoryProvider.getFactory().openSession();
			Transaction tx = hibernateSession.beginTransaction();

			int useId = (Integer) hibernateSession.save(user);

			tx.commit();
			hibernateSession.close();
			
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "Registration Successful");
			response.sendRedirect("user_sign_in.jsp");
			return;


		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
