package com.bluetokai.Final_BlueTokai.servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.bluetokai.Final_BlueTokai.dao.BulkOrdersDao;
import com.bluetokai.Final_BlueTokai.dao.ContactUsDao;
import com.bluetokai.Final_BlueTokai.dao.KioskDao;
import com.bluetokai.Final_BlueTokai.entities.BulkOrders;
import com.bluetokai.Final_BlueTokai.entities.ContactUs;
import com.bluetokai.Final_BlueTokai.entities.Kiosk;
import com.bluetokai.Final_BlueTokai.helper.FactoryProvider;

public class SaveToDBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveToDBServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text");
		PrintWriter out = response.getWriter();
		
		try {
			
			String op1 = request.getParameter("operation1");
			
			if (op1.trim().equals("kiosk")) {
				
				String kName = request.getParameter("kName");
				String kCompany = request.getParameter("kCompany");
				String kDesignation = request.getParameter("kDesignation");
				String kContact = request.getParameter("kContact");
				String kEmail = request.getParameter("kEmail");
				String kCity = request.getParameter("kCity");
				String kState = request.getParameter("kState");
				String kRequirement = request.getParameter("kRequirement");
				
				Kiosk k = new Kiosk();
				k.setKio_uname(kName);
				k.setKio_company(kCompany);
				k.setKio_designation(kDesignation);
				k.setKio_ucontact(kContact);
				k.setKio_eid(kEmail);
				k.setKio_city(kCity);
				k.setKio_state(kState);
				k.setKio_requirement(kRequirement);
				
				KioskDao kDao = new KioskDao(FactoryProvider.getFactory());
				int kId = kDao.saveCategory(k);
				
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("category_successful", "Enquiry form sent Successfull");
				response.sendRedirect("kiosk.jsp");
				
			} else if (op1.trim().equals("bulkorders")) {
				
				String bName = request.getParameter("bName");
				String bEmail = request.getParameter("bEmail");
				String bContact = request.getParameter("bContact");
				String bAddress = request.getParameter("bAddress");
				String bCity = request.getParameter("bCity");
				String bZip = request.getParameter("bZip");
				
				BulkOrders b = new BulkOrders();
				b.setBo_uname(bName);
				b.setBo_eid(bEmail);
				b.setBo_contact(bContact);
				b.setBo_address(bAddress);
				b.setBo_city(bCity);
				b.setBo_zip(bZip);
				
				BulkOrdersDao bDao = new BulkOrdersDao(FactoryProvider.getFactory());
				int bId = bDao.saveCategory(b);
				
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("category_successful", "Enquiry form sent Successfully ");
				response.sendRedirect("bulkorders.jsp");
				
			} else if (op1.trim().equals("contactus")) {
				
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String product_name = request.getParameter("product_name");
				String message = request.getParameter("message");
				
				ContactUs c = new ContactUs();
				c.setCont_uname(name);
				c.setCont_eid(email);
				c.setCont_pname(product_name);
				c.setBo_message(message);
				
				ContactUsDao cDao = new ContactUsDao(FactoryProvider.getFactory());
				int cId = cDao.saveCategory(c);
				
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("category_successful", "Feedback sent Successfully ");
				response.sendRedirect("contact_us.jsp");
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
