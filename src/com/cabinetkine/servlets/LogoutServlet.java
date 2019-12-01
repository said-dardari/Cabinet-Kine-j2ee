package com.cabinetkine.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name="logout",urlPatterns={"/logout"})
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public LogoutServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession(); //Fetch session object
		 
		 if(session!=null) { // si la session non null
			 session.invalidate(); 
		    
		    response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		    response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		    response.setDateHeader("Expires", -1); //Causes the proxy cache to see the page as "stale"
		    response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
		    
		    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
		    requestDispatcher.forward(request, response);
		 }	else{
			 
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			
		 }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
