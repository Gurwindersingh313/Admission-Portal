<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    
  String uid = request.getParameter("uid");


    
     
    	Class.forName("com.mysql.cj.jdbc.Driver");
  		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java24","root","gurwinder@2011");
        String s = "DELETE FROM addstudents WHERE uid = ?";
    	PreparedStatement p= cn.prepareStatement(s);
    	  p.setString(1,uid);
    	  int i =p.executeUpdate();

          if (i > 0) {
        	  response.sendRedirect("succesfullydelete.html");
          } else {
        	  response.sendRedirect("error.html");
        
        	  
        	  
          }
    	
    	
    	

     
       %>