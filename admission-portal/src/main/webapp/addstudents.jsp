<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
    String uid=request.getParameter("uid");
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String dob=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String Scourse="";
    String course[]=request.getParameterValues("course");
    String duration=request.getParameter("duration");
    for(int i=0;i<course.length;i++){
    	Scourse+=course[i]+" ";
    	
    }
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java24","root","gurwinder@2011");
    String s="insert into addstudents values(?,?,?,?,?,?,?)";
    PreparedStatement p=cn.prepareStatement(s);
    
    
    p.setString(1,uid);
    p.setString(2,name);
    p.setString(3,email);
    p.setString(4,dob);
    p.setString(5,gender);
    p.setString(6,Scourse);
    p.setString(7,duration);
  
    
    int i=p.executeUpdate();
    if(i>0)
    {
      response.sendRedirect("successfulregistration.html");
    }
    else
    {
      response.sendRedirect("error.html");
    }
    
  %>
</body>
</html>