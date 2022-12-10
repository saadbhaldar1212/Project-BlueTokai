package com.bluetokai.Final_BlueTokai.servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import com.bluetokai.Final_BlueTokai.dao.CategoryDao;
import com.bluetokai.Final_BlueTokai.dao.ProductDao;
import com.bluetokai.Final_BlueTokai.entities.Category;
import com.bluetokai.Final_BlueTokai.entities.Product;
import com.bluetokai.Final_BlueTokai.helper.FactoryProvider;

@MultipartConfig
public class ProductOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProductOperationServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text");
		PrintWriter out = response.getWriter();
		
		try {
			
			String op = request.getParameter("operation");
			if (op.trim().equals("addCategory")) {
				
				String catTitle = request.getParameter("categoryTitle");
				String catDesc = request.getParameter("categoryDesc");
				
				Category category = new Category();
				category.setC_title(catTitle);
				category.setC_desc(catDesc);
				
				CategoryDao catDao = new CategoryDao(FactoryProvider.getFactory());
				int catId = catDao.saveCategory(category);
				
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("category_successful", "Category Added Successfully");
				response.sendRedirect("admin_index.jsp");
				
			} else if (op.trim().equals("addProducts")) {
				
				String pName = request.getParameter("pName");
				String pDesc= request.getParameter("pDesc");
				int pPrice= Integer.parseInt(request.getParameter("pPrice"));
				int pQuant= Integer.parseInt(request.getParameter("pQuant"));
				int catId = Integer.parseInt(request.getParameter("catId"));
				Part part= request.getPart("pPic");
				
				Product p = new Product();
				p.setP_name(pName);
				p.setP_desc(pDesc);
				p.setP_price(pPrice);
				p.setP_quant(pQuant);
				p.setP_image(part.getSubmittedFileName());
				
				//get Category by id
				CategoryDao cDao = new CategoryDao(FactoryProvider.getFactory());
				Category category = cDao.getCategoryById(catId);
				p.setCategory(category);
				
				//product save
				ProductDao pDao = new ProductDao(FactoryProvider.getFactory());
				pDao.saveProduct(p);
				
				//pic upload
				String path = request.getRealPath("img")+File.separator+"Products"+File.separator+part.getSubmittedFileName();
				System.out.println(path);
				
//				uploading code
				FileOutputStream fos = new FileOutputStream(path);
				InputStream is = part.getInputStream();
				
				//Reading data
				byte[] data = new byte[is.available()];
				is.read(data);
				
				//Writing data
				fos.write(data);
				fos.close();
				
				RequestDispatcher rd;
				rd = request.getRequestDispatcher("list_all.jsp");
				rd.include(request, response);
				
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("product_successful", "Product Added Successfully");
				response.sendRedirect("admin_index.jsp");
				return;
				
				
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
