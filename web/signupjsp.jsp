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
String name=request.getParameter("name"); 
String email=request.getParameter("email"); 
String password=request.getParameter("password"); 
String repeat_password=request.getParameter("repeat_password"); 
//java.sql.ResultSet rs; 

            
            String myurl="jdbc:mysql://localhost/project";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection(myurl,"root","");
                Statement st=conn.createStatement();
                int i=st.executeUpdate("insert into signup values ('"+name+"','"+email+"','"+password+"',	'"+repeat_password+"')"); 
out.println("Registered");
            
if(i>0)
     response.sendRedirect("BookaRide.html");
else
    out.println("Record Not inserted ");

%>
</body>
</html>