<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>View Users</title>
    </head>

    <body>

        <%@page import="com.skillsoft.UserDAO, com.skillsoft.model.User,java.util.*"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <h2 style="text-align: center">User Details</h2>

        <%
            List <User> list = UserDAO.getAllRecords();
            request.setAttribute("list",list);
        %>

        <table border="2" class="center"
            style="background-color: #FEF9E7; width: 90%;">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Country</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${list}" var="u">
                <tr>
                    <td>${u.getId()}</td>
                    <td>${u.getName()}</td>
                    <td>${u.getEmail()}</td>
                    <td>${u.getGender()}</td>
                    <td>${u.getCountry()}</td>
                    <td><a href="${pageContext.request.contextPath}/jsp/edituserform.jsp?id=${u.getId()}">Edit</a></td>
                    <td><a href="${pageContext.request.contextPath}/jsp/deleteuser.jsp?id=${u.getId()}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <br />

        <div>
            <button onclick="window.location.href='${pageContext.request.contextPath}/jsp/adduserform.jsp'"> Add New User </button>
        </div>

    </body>
</html>