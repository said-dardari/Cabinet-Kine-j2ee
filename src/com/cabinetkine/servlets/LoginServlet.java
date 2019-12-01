package com.cabinetkine.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cabinetkine.beans.Utilisateur;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name="login",urlPatterns={"/login"})
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
		getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = (String)request.getParameter("email");
		String motDePasse = (String)request.getParameter("motDePasse");
		
		Utilisateur user = new Utilisateur(0,email, motDePasse);
		String redirectUrl = "/";
		String message = "";
		try {
			Boolean test = Utilisateur.authentifier(user);		
			if(test){
				 
				  HttpSession session = request.getSession(); 
				  session.setAttribute("email", email); 
				  
				   redirectUrl="/home";
				//response.getWriter().append("True in : ").append(request.getContextPath());
			}else{
				message = "Votre pseudo ou mot de passe est incorrect.";
				request.setAttribute("message", message);
				redirectUrl="/login.jsp";
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		getServletContext().getRequestDispatcher(redirectUrl).forward(request, response);
	}

}
