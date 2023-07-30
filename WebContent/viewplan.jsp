<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User2" %>
<%@ page import="model.Dao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Diet Plan</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        /* CSS Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-size: 15px;
        }

        .navbar {
            background-color: #333;
            color: #fff;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
        }

        .navbar-left {
            display: flex;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            margin-right: 10px;
        }

        .navbar a:hover {
            background-color: #555;
        }

        .navbar .logout {
            margin-left: auto;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            text-align: center;
            margin-top: 30px;
        }

        h1 {
            margin-bottom: 20px;
        }

        .card {
            background-color: #f5f5f5;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card h2 {
            margin-bottom: 10px;
        }

        .card p {
            margin-bottom: 10px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            margin-right: 10px;
        }

        .button:hover {
            background-color: #45a049;
        }

        .logout-button {
            margin-top: 20px;
        }

        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 15px;
            position: absolute;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="navbar-left">
            <a href="user.jsp">Home</a>
            <a href="addinfo.jsp">Get a Diet plan</a>
            <a href="viewplan.jsp">View Diet Plan</a>
            <a href="userpro.jsp">Your plan</a>
        </div>
        <a href="logout.jsp" class="logout">Logout</a>
    </div>

    <div class="container">
        <h1>View Diet Plan</h1>

        <% Dao dao = new Dao();
           ArrayList<User2> planList = dao.getAllList3();
           if (!planList.isEmpty()) { %>
            <div class="row">
                <% for (User2 plan : planList) { %>
                    <div class="col-md-4">
                        <div class="card">
                            <h2><%= plan.getPlanname() %></h2>
                            <p><strong>Plan ID:</strong> <%= plan.getId() %></p>
                            <p><strong>Protein (g):</strong> <%= plan.getProtein() %></p>
                            <p><strong>Carbs (g):</strong> <%= plan.getCarbs() %></p>
                            <p><strong>Meals per Day:</strong> <%= plan.getMeal() %></p>
                            <p><strong>Fats (g):</strong> <%= plan.getFats() %></p>
                            <form method="post" action="buyaction.jsp">
                                <input type="hidden" name="planId" value="<%= plan.getId() %>">
                                <button type="submit" class="btn btn-primary">Get Plan</button>
                            </form>
                        </div>
                    </div>
                <% } %>
            </div>
        <% } else { %>
            <p>No diet plans available.</p>
        <% } %>
        
    </div>

    <div class="footer">
        &copy; 2023 Your Company. All rights reserved.
    </div>
   
</body>
</html>
