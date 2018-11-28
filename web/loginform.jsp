
<%@page import="DAO.LoginCheck"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page  import="java.sql.Connection"%>
        <%
            
            
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            LoginCheck l = new LoginCheck();
            String result = l.loginCheck(username, password);
            if(result.equals("login sucessfull"))
            {
                response.sendRedirect("BookaRide.html");
            }
            else
            {
                response.sendRedirect("index.html");
            }
            
        %>
    </body>
</html>