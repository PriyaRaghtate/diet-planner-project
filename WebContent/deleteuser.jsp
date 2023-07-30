<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
        <h1>Delete Diet Plan</h1>
        <p>Are you sure you want to delete this diet plan?</p>
        <form action="deleteuaction.jsp" method="post">
            <input type="hidden" name="id" value="${param.id}">
            <button type="submit" class="btn btn-danger">Delete</button>
            <a class="btn btn-secondary" href="info.jsp">Cancel</a>
        </form>
    </div>
</body>
</html>