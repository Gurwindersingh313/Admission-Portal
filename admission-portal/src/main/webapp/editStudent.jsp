<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #171415;
            margin: 0;
            padding: 0;
            background-image: url('studentData.jpg');
            color: white;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        h2 {
            color: #171415;
        }

        .form {
            font-size: 16px;
            line-height: 1.6;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Student Details</h2>
        <%
            String uid = request.getParameter("uid");

     
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java24", "root", "gurwinder@2011");
            String s = "SELECT * FROM addstudents WHERE uid=?";
            PreparedStatement p = cn.prepareStatement(s);
            p.setString(1, uid);
            ResultSet r = p.executeQuery();

            if (r.next()) {
        %>
                <div class="form">
                    <form action="updatestudents.jsp" method="post">
                        <input type="hidden" name="uid" value="<%= r.getString("uid") %>">
                        
                        <label for="name">Name:</label>
                        <input type="text" name="name" value="<%= r.getString("name") %>" required>

                        <label for="email">Email:</label>
                        <input type="email" name="email" value="<%= r.getString("email") %>" required>

                        <label for="dob">DOB:</label>
                        <input type="date" name="dob" value="<%= r.getString("dob") %>" required>

                        <label for="gender">Gender:</label>
                        <input type="text" name="gender" value="<%= r.getString("gender") %>" required>

                        <label for="course">Course:</label>
                        <input type="text" name="course" value="<%= r.getString("course") %>" required>

                        <label for="duration">Duration:</label>
                        <input type="text" name="duration" value="<%= r.getString("duration") %>" required>

                        <input type="submit" value="Update">
                    </form>
                </div>
        <%
            } else {
        %>
                <p>No student found with ID <%= uid %>.</p>
        <%
            }
        %>
    </div>
</body>
</html>