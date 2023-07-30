package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Dao;
import model.User;

/**
 * Servlet implementation class logserv
 */
@WebServlet("/logserv")
public class logserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.setContentType("text/html");
	    PrintWriter out = response.getWriter();

	    String email = request.getParameter("email");
	    String pass = request.getParameter("pass");

	    Dao d = new Dao();
	    try {
	        User u = d.log(email, pass);
	        if (u != null) {
	            HttpSession session = request.getSession();
	            session.setAttribute("u", u);
	            if (u.getRole().equals("admin")) {
	                response.sendRedirect("admin.jsp");
	            } else if (u.getRole().equals("user")) {
	                response.sendRedirect("user.jsp");
	            } else {
	                response.sendRedirect("login.jsp?error=true");
	            }
	        } else {
	            response.sendRedirect("login.jsp?error=true");
	        }
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
