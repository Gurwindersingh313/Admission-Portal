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
         String name=request.getParameter("first");
         String last=request.getParameter("last");
         String email=request.getParameter("email");
         String dob=request.getParameter("dob");
         String password=request.getParameter("password");
         String repassword=request.getParameter("repassword");
         String mobile=request.getParameter("mobile");
         String gender=request.getParameter("gender");

      
         
           
         
        Class.forName("com.mysql.cj.jdbc.Driver");
 		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java24","root","gurwinder@2011");
 		String s="insert into Registration values (?,?,?,?,?,?,?,?)";
 		PreparedStatement p= cn.prepareStatement(s);
 		    
 		p.setString(1,name);
 		p.setString(2,last);
 		p.setString(3,email);
 		p.setString(4,dob);
 		p.setString(5,password);
 		p.setString(6,repassword);
 		p.setString(7,mobile);
 		p.setString(8,gender);
 		
 		int i=p.executeUpdate();
 		if(i>0){
 			response.sendRedirect("login.html");
 		}
         
%>

</body>
</html>