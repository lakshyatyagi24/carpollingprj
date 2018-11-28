<%-- 
    Document   : multitaking
    Created on : Nov 25, 2018, 8:26:38 PM
    Author     : Muskan
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String pick1=request.getParameter("pick"); 
String pick2=request.getParameter("pick2"); 
String pick3=request.getParameter("pick3"); 
String pick4=request.getParameter("pick4"); 
//java.sql.ResultSet rs; 

            
            String myurl="jdbc:mysql://localhost/project";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection(myurl,"root","");
                Statement st=conn.createStatement();
                int i=st.executeUpdate("insert into signup values ('"+pick1+"','"+pick2+"','"+pick3+"',	'"+pick4+"')"); 
out.println("Registered");
            
if(i>0)
     response.sendRedirect("index.html");
else
    out.println("Record Not inserted ");

%>
</body>
</html>