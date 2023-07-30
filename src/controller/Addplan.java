package controller;
import model.User2;
import model.Dao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addserv")
public class Addplan extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Addplan() {
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String planname = request.getParameter("planname");
		    String proteinStr = request.getParameter("protein");
		    String carbsStr = request.getParameter("carbs");
		    String mealStr = request.getParameter("meal");
		    String fatsStr = request.getParameter("fats");

		    if (planname != null && !planname.isEmpty() && proteinStr != null && !proteinStr.isEmpty()
		            && carbsStr != null && !carbsStr.isEmpty() && mealStr != null && !mealStr.isEmpty()
		            && fatsStr != null && !fatsStr.isEmpty()) {
		        int protein = Integer.parseInt(proteinStr);
		        int carbs = Integer.parseInt(carbsStr);
		        int meal = Integer.parseInt(mealStr);
		        int fats = Integer.parseInt(fatsStr);
	        Dao d=new Dao();
	        User2 u2=new User2(planname, protein, carbs, meal, fats);
	        try {
				d.addPlan(u2);
				response.sendRedirect("success.jsp");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("error.jsp");
			}
	}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
