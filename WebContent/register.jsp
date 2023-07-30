<%@page import="model.Dao"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String pass = request.getParameter("pass");
  String role = request.getParameter("role");
  User user = new User(name, email, pass, role);
  Dao d=new Dao();
  if(!d.checkemail(email)){
	  int a=d.save(user);
	  if (a > 0)
			request.getRequestDispatcher("log.jsp").include(request, response);
		else {
			out.print("Error");
		request.getRequestDispatcher("reg.jsp").include(request, response);
		}
  }
  
  response.sendRedirect("registration-success.jsp");
  %>
</body>
</html>