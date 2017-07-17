package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.classes.DriverInfo;
import com.classes.UserInfo;
import com.dao.DriverDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{	    

		     DriverInfo user = new DriverInfo();
		     user.setUserName(request.getParameter("userName"));
		     user.setUserPassword(request.getParameter("userPassword"));

		     boolean isValid = DriverDAO.matchUserAccount(user);
			   		    
		     if (isValid)
		     {
			        
		          HttpSession session = request.getSession(true);	    
		          session.setAttribute("currentSessionUser",user); 
		          response.sendRedirect("Userpage.jsp"); //logged-in page      		
		     }
			        
		     else 
		          response.sendRedirect("Homepage.html"); //error page 
		} 
				
				
		catch (Throwable theException) 	    
		{
		     System.out.println(theException); 
		}
		       
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
