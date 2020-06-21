<%@ page import="com.san.j2ee_springboot_mvc_jsp_crud.Implmentation.EmployeeImpl" %>
<%@ page import="com.san.j2ee_springboot_mvc_jsp_crud.Models.Employee" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap CRUD Data Table for Database with Modal Form</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/action.js"></script>
    <link rel="stylesheet" href="css/style.css"/>
</head>

<body>
<div class="alert alert-success" role="alert">
    <h4 class="alert-heading">Sandesh Lamsal !</h4>
    <p>J2EE Spring Boot, MVC, JSP , MYSQL CRUD APP </p>
    <hr>
    <p class="mb-0">Enjoy to Demo !</p>
</div>
<br><br>

<table class="table table-striped table-dark">
    <thead>
    <div><button type="button" class="btn btn-warning" onclick="add()">ADD</button></div>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Address</th>
        <th scope="col">Email</th>

    </tr>
    </thead>
    <tbody>
    <%
        List<Employee> employeeList = new ArrayList<Employee>();
        try {
            employeeList= new EmployeeImpl().listEmployee();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        for(Employee rs:employeeList)
        {
    %>
    <tr>
        <td><%=rs.getId()%></td>
        <td><%=rs.getName()%></td>
        <td><%=rs.getAddress()%></td>
        <td><%=rs.getEmail()%></td>
        <td><button type="button" class="btn btn-warning" onclick="document.location.href='edit?id='+<%=rs.getId()%>">EDIT</button></td>
        <td><button type="button" class="btn btn-warning" onclick="document.location.href='delete?id='+<%=rs.getId()%>">DELETE</button></td>
    </tr>
    <%

        }
    %>
    </tbody>
</table>
</body>
</html>