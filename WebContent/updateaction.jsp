<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User2" %>
<%@ page import="model.Dao" %>
<%@ page import="java.sql.SQLException" %>

<%
    int id = 0;
    if (request.getParameter("id") != null && !request.getParameter("id").isEmpty()) {
        id = Integer.parseInt(request.getParameter("id"));
    }

    String planname = request.getParameter("planname");
    int protein = 0;
    if (request.getParameter("protein") != null && !request.getParameter("protein").isEmpty()) {
        protein = Integer.parseInt(request.getParameter("protein"));
    }
    int carbs = 0;
    if (request.getParameter("carbs") != null && !request.getParameter("carbs").isEmpty()) {
        carbs = Integer.parseInt(request.getParameter("carbs"));
    }
    int meal = 0;
    if (request.getParameter("meal") != null && !request.getParameter("meal").isEmpty()) {
        meal = Integer.parseInt(request.getParameter("meal"));
    }
    int fats = 0;
    if (request.getParameter("fats") != null && !request.getParameter("fats").isEmpty()) {
        fats = Integer.parseInt(request.getParameter("fats"));
    }

    // Create a User2 object with the updated data
    User2 u = new User2(id, planname, protein, carbs, meal, fats);

    // Update the diet plan in the database
    Dao dao = new Dao();
    try {
        u.setId(id); // Set the ID in the User2 object
        dao.update(u);
        response.sendRedirect("view.jsp"); // Redirect to a success page
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle the exception and display an error message
        request.setAttribute("errorMessage", "Error updating diet plan: " + e.getMessage());
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
%>
