<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #171415;
            color: white;
            margin: 0;
            padding: 0;
            background-image: url('studentData.jpg');
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
            color: #171415;
        }

        h2 {
            color: #4CAF50;
        }

        p {
            margin-bottom: 20px;
        }

        .button-container {
            text-align: center;
        }

        .ok-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Student Details</h2>

        <%
            String uid = request.getParameter("uid");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String course = request.getParameter("course");
            String duration = request.getParameter("duration");

           
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java24", "root", "gurwinder@2011");

                String updateQuery = "UPDATE addstudents SET name=?, email=?, dob=?, gender=?, course=?, duration=? WHERE uid=?";
                PreparedStatement p = cn.prepareStatement(updateQuery);
                p.setString(1, name);
                p.setString(2, email);
                p.setString(3, dob);
                p.setString(4, gender);
                p.setString(5, course);
                p.setString(6, duration);
                p.setString(7, uid);

                int i= p.executeUpdate();
        %>
                <p>
                    <% if (i > 0) {
                    	%>
                        Student details updated successfully.
                    <% }
                    else {
                    	%>
                        Error updating student details.
                    <% }
                    %>
                </p>

                <div class="button-container">
                    <button class="ok-button" onclick="location.href='searchstudents.jsp?uid=<%= uid %>'">OK</button>
                </div>
        <%
            cn.close();
        %>
    </div>
</body>
</html>