<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <% session.invalidate(); %>
    
    <h1>Logout</h1>
    <p>You have been successfully logged out.</p>
    <%response.sendRedirect("index.html"); %>
</body>
</html>
