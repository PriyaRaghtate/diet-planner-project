<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Dao" %>
<%@ page import="model.User" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>User Information</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% Dao dao = new Dao();
                   ArrayList<User> userList = dao.getAllList2();
                   for (User user : userList) {
                %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getRole() %></td>
                    <td>
                        <% if (user.getRole().equals("admin")) { %>
                            <span class="label label-default">Admin</span>
                        <% } else { %>
                            <a href="updateuser.jsp?id=<%= user.getId() %>"><button class="btn btn-primary">Update</button></a>
                            <a href="deleteuser.jsp?id=<%= user.getId() %>"><button class="btn btn-danger">Delete</button></a>
                        	
                        <% } %>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <a href="admin.jsp"><button type="button" class="btn btn-info">Back</button></a>
       
    </div>
     
</body>
</html>
