package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dao;
import model.User;


@WebServlet("/regserv")
public class Regserv extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 String name = request.getParameter("name");
		  String email = request.getParameter("email");
		  String pass = request.getParameter("pass");
		  String role = request.getParameter("role");
		  User user = new User(name, email, pass, role);
		  Dao d=new Dao();
		  try {
			if(!d.checkemail(email)){
				  int a=d.save(user);
				  if (a > 0){
						request.getRequestDispatcher("log.jsp").include(request, response);
				  }
					else {
						out.print("Error");
					request.getRequestDispatcher("reg.jsp").include(request, response);
					}
			  }
				  else {
						out.print("<br>Your Email ID is already Used Please Login ");
						out.print("<br><a href='log.jsp'>Login</a> ");

					}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
