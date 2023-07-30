<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User2" %>
<%@ page import="model.Dao" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Buy Diet Plan</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<%
    try {
        // Get the planId from the request parameter
        int planId = Integer.parseInt(request.getParameter("planId"));

        // Create an instance of the Dao class
        Dao dao = new Dao();

        // Call the getplan method to fetch the specific diet plan
        User2 dietPlan = dao.getplan(planId);

        // Check if the diet plan is found
        if (dietPlan != null) {
            // Display the diet plan details
%>
            <div class="container">
                <h1>Buy Diet Plan</h1>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3><%= dietPlan.getPlanname() %></h3>
                    </div>
                    <div class="panel-body">
                        <p><strong>Plan ID:</strong> <%= dietPlan.getId() %></p>
                        <p><strong>Protein (g):</strong> <%= dietPlan.getProtein() %></p>
                        <p><strong>Carbs (g):</strong> <%= dietPlan.getCarbs() %></p>
                        <p><strong>Meals per Day:</strong> <%= dietPlan.getMeal() %></p>
                        <p><strong>Fats (g):</strong> <%= dietPlan.getFats() %></p>
                    </div>
                </div>
            </div>
<%
        } else {
            // If the diet plan is not found, display an error message
%>
            <div class="container">
                <h1>Buy Diet Plan</h1>
                <div class="alert alert-danger">
                    <strong>Error!</strong> Diet plan not found.
                </div>
            </div>
<%
        }
    } catch (ClassNotFoundException | SQLException | NumberFormatException e) {
        // Handle exceptions that might occur during database operations or parsing
        e.printStackTrace();
        // You can also redirect to an error page here if needed
    }
%>

<div class="container">
    <a href="viewplan.jsp" class="btn btn-primary">Back to View Diet Plans</a>
</div>

</body>
</html>
