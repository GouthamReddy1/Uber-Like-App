package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.classes.DriverInfo;
import com.dao.DriverDAO;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String value= request.getParameter("action");
		System.out.println(value);
		/*Enumeration params = request.getParameterNames(); 
		String paramName = null;
		while(params.hasMoreElements()){
			paramName = (String)params.nextElement();
		 System.out.println("Attribute Name - "+paramName+", Value - "+request.getParameter(paramName));
		}*/
		
		if(value.equalsIgnoreCase("login")){
			String username=request.getParameter("userName");
			String password=request.getParameter("userPassword");
			
			int id;
			try {
				DriverInfo user=new DriverInfo(username, password);
				
				//PrintWriter out=response.getWriter();
				boolean check=DriverDAO.matchUserAccount(user);
				if(check){
					/*out.println("Login Successful");
					ArrayList<ScheduleInfo> list=new ArrayList<>();
					list = DriverDAO.getUserSchdelueInfo(username);
					
					HttpSession session=request.getSession(true);
					session.setAttribute("userName", user.getUserName());
					session.setAttribute("SCHEDULEINFO", list);
					System.out.println(list.size()+" sixw");*/
					response.sendRedirect("UserPage.jsp");
				}else{
					response.sendRedirect("LoginPage.html");
				}
				
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}			
			else if (value.equalsIgnoreCase("schedule")) {
				//JOptionPane.showMessageDialog(null, "your schedule has been added");
				System.out.println("schedule added");
				response.sendRedirect("UserPage.jsp");
			}
		/*else if (value.equalsIgnoreCase("navigate")) {
			String PickUpPlace=request.getParameter("PickUpPlace");
			String DropUpPlace=request.getParameter("DropUpPlace");
//			HttpSession session=request.getSession(true);
			
			
	//		response.sendRedirect("DriverHomePage.jsp");
			
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/DriverHomePage.jsp");
			request.setAttribute("PickUpPlace", PickUpPlace);
			request.setAttribute("DropUpPlace", DropUpPlace);
			System.out.println(request.getAttribute("PickUpPlace")+" - "+DropUpPlace);
			rd.forward(request, response);
			
		}else if (value.equalsIgnoreCase("DriverSignUp")) {
			DriverInfo info=new DriverInfo();
			info.setUserName(request.getParameter("userName"));
			info.setUserPassword(request.getParameter("userPassword"));
			info.setfName(request.getParameter("fName"));
			info.setlName(request.getParameter("lName"));
			info.setEmail_ID(request.getParameter("emailId"));
			info.setContact_number(request.getParameter("phoneNo"));
			info.setGender(request.getParameter("gender"));
			info.setDob(new Date(Date.parse(request.getParameter("dob"))));
			info.setStreet(request.getParameter("street"));
			info.setCity(request.getParameter("city"));
			info.setState(request.getParameter("state"));
			info.setCountry(request.getParameter("country"));
			info.setDlNo(request.getParameter("dlNo"));
			info.setCarMakeModel(request.getParameter("carMakeModel"));
			info.setCarModel(request.getParameter("carModel"));
			info.setCardNo(Double.parseDouble(request.getParameter("cardNo")));
			info.setCvvNo(Integer.parseInt(request.getParameter("cvvNo")));
			info.setExpDate(new Date(Date.parse(request.getParameter("expDate"))));
			DriverDAO dao=new DriverDAO();
			String status=dao.insertUserDetails(info);
			
			if(status.equalsIgnoreCase("Success")){
				response.sendRedirect("Login.jsp");
			}else{
				request.setAttribute("ERRORMESSAGE", status);
				response.sendRedirect("ERRORPAGE.jsp");
			}
		*/
			
		
			
	}
	
}
	

