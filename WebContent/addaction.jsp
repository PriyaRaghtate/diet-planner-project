<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User3" %>
<%@ page import="model.Dao2" %>
<%@ page import="java.io.IOException" %>

<%
   try {
       // Receive form data from addinfo.jsp
       String name = request.getParameter("name");
       String weightStr = request.getParameter("weight");
       String heightStr = request.getParameter("height");
       String mealsPerDayStr = request.getParameter("mealsPerDay");
       String goal = request.getParameter("goal");
       String description = request.getParameter("description");

       // Validate the input fields to prevent NumberFormatException and handle missing fields
       if (name == null || name.isEmpty() || weightStr == null || weightStr.isEmpty()
               || heightStr == null || heightStr.isEmpty() || mealsPerDayStr == null || mealsPerDayStr.isEmpty()) {
           // Handle the case when any of the required fields is missing or empty
           response.sendRedirect("addinfo.jsp?error=missing_fields");
           return;
       }

       // Parse numeric values after validation
       int weight = Integer.parseInt(weightStr);
       int height = Integer.parseInt(heightStr);
       int mealsPerDay = Integer.parseInt(mealsPerDayStr);

       User3 user = new User3(name, weight, height, mealsPerDay, goal, description);

       // Use Dao2 class to insert data into the database
       Dao2 dao = new Dao2();
       dao.insertuser(user);

       // Redirect to view.jsp after successful insertion
       response.sendRedirect("viewplan.jsp");
   } catch (IOException e) {
       e.printStackTrace();
       // Handle any exception that might occur during data insertion or redirection
   } catch (NumberFormatException e) {
       e.printStackTrace();
       // Handle NumberFormatException that might occur when parsing weight, height, or mealsPerDay to int
       response.sendRedirect("addinfo.jsp?error=invalid_input");
   }
%>
