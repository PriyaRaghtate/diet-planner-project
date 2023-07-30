<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Dao"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Diet Plan</title>
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
        <%
            // Get the ID of the diet plan to be deleted from the request parameter
            String idParam = request.getParameter("id");

            // Check if the ID is not null or empty
            if (idParam != null && !idParam.isEmpty()) {
                int id = Integer.parseInt(idParam);
                Dao dao = new Dao();
                try {
                    dao.deleteuser(id);
                    out.println("<h1>Deleted Successfully!</h1>");
                } catch (SQLException e) {
                    out.println("<h1>Error!</h1>");
                    e.printStackTrace();
                }
            } else {
                out.println("<h1>Invalid User ID!</h1>");
            }
        %>
        <a class="btn btn-primary" href="info.jsp">Back to View Diet Plans</a>
    </div>
</body>
</html>
