<%-- 
    Document   : TravleTogether
    Created on : Nov 22, 2018, 11:05:12 AM
    Author     : Muskan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String pick=request.getParameter("pick"); 
String drop=request.getParameter("drop"); 
String timmings=request.getParameter("timmings"); 

//java.sql.ResultSet rs; 
   String myurl="jdbc:mysql://localhost/project";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection(myurl,"root","");
                Statement st=conn.createStatement();
                int i=st.executeUpdate("insert into signup values ('"+pick+"','"+drop+"','"+timmings+"',	'')"); 
out.println("Registered");
            
if(i>0)
    response.sendRedirect("multitaking.jsp");

else
    out.println("Record Not inserted ");

%>
    </body>
</html>
