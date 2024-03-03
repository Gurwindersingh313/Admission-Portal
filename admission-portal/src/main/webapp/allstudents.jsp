<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Students Data</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fff;
            margin: 0;
            padding: 0;
            background-image: url('alldata.jpg');
            background-size: cover; 
           background-position: center;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #E6E6FA;
        }
        button{
        top: 10px;
        left: 100px;
        background-color:black;
        color:white;
        }
    </style>
</head>
<body>

    <h2>All Students Data</h2>

    <table cellpadding="5" cellspacing="5" border="1">
        <tr bgcolor="#faebd7">
            <td><b>uid</b></td>
            <td><b>name</b></td>
            <td><b>email</b></td>
            <td><b>dob</b></td>
            <td><b>gender</b></td>
            <td><b>course</b></td>
            <td><b>duration</b></td>
        </tr>

        <% 
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java24","root","gurwinder@2011");
            String s ="SELECT * FROM addstudents";
            PreparedStatement p = cn.prepareStatement(s);
            ResultSet r = p.executeQuery();
            
            while(r.next()){
        %>
            <tr bgcolor="#E6E6FA">
                <td><%=r.getString("uid") %></td>
                <td><%=r.getString("name") %></td>
                <td><%=r.getString("email") %></td>
                <td><%=r.getString("dob") %></td>
                <td><%=r.getString("gender") %></td>
                <td><%=r.getString("course") %></td>
                <td><%=r.getString("duration") %></td>
            </tr>
        <%
            }
        %>
    </table>
    <button onClick="window.print();"> PRINT</button>

</body>
</html>