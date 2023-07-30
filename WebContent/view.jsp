<%@page import="java.sql.SQLException"%>
<%@page import="model.User2"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <% Dao d = new Dao();
    ArrayList<User2> u = null;
    try {
        System.out.println("Calling getAllList() method...");
        u = d.getAllList();
        System.out.println("getAllList() method called successfully.");
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    %>

    <h1>View Diet Plans</h1>
    <table class="table table-striped">
            <thead class="thead-dark">
            <tr>
            <th>Plan Name</th>
            <th>Protein (g)</th>
            <th>Carbs (g)</th>
            <th>Meals per Day</th>
            <th>Fats (g)</th>
            <th>Actions</th>
        </tr>

        <%-- Iterate over the diet plans and display them in the table --%>
        <% for (User2 o : u) { %>
            <tr>
                <td><%= o.getPlanname() %></td>
                <td><%= o.getProtein() %></td>
                <td><%= o.getCarbs() %></td>
                <td><%= o.getMeal() %></td>
                <td><%= o.getFats() %></td>
                <td>
                     <a class="btn btn-danger" href="delete.jsp?id=<%= o.getId() %>">Delete</a>
                                <a class="btn btn-primary" href="update.jsp?id=<%= o.getId() %>">Update</a>
                </td>
            </tr>
        <% } %>
    </table>
    <a href="admin.jsp" class="btn btn-primary">Back</a>
</div>
</body>
</html>
