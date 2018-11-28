<%-- 
    Document   : forgot process
    Created on : Nov 26, 2018, 9:22:52 AM
    Author     : Muskan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Count Rows JSP</title>
</head>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root",""); 
Statement st=con.createStatement();
String uid=request.getParameter("id"); 
String email=request.getParameter("email"); 
String secretqu=request.getParameter("sq1"); 
String secretq=request.getParameter("sq2");
String sq=request.getParameter("sq3");
String strQuery ="select password from useredeatils where id='"+uid+"','"+email+"','"+secretqu+"','"+secretq+"','"+sq+"')";
ResultSet rs = st.executeQuery(strQuery);
if(rs.next())
{
    response.sendRedirect("index.html");
      String Countrow = rs.getString(1);
if(Countrow.equals("1")){
out.println("Password send to your email id successfully !");
}
else{
out.println("Invalid Email Id !");
}
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</body>
</html>
