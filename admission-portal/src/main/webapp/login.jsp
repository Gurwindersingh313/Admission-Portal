<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
       
        String email= request.getParameter("email");
        String password= request.getParameter("password");
        
        
        
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java24","root","gurwinder@2011");
       String s="select * from Registration where email=? and password=?";
       PreparedStatement p=cn.prepareStatement(s);
     
      p.setString(1,email);
      p.setString(2,password);
      
 ResultSet r=p.executeQuery();
      if(r.next())
      {
    	  response.sendRedirect("index.html");
      }
      else{
    	  response.sendRedirect("error.html");
      }
      
%>

</body>
</html>