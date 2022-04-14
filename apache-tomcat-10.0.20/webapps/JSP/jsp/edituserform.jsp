<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit User</title>
    </head>
    <body>
        <%@page import="com.skillsoft.UserDAO, com.skillsoft.model.User"%>

        <%
            String id = request.getParameter("id");
            User u = UserDAO.getRecordById(Integer.parseInt(id));
        %>

        <h3>Edit Form</h3>

        <form action="edituser.jsp" method="post">
            <input type="hidden" name="id" value="<%=u.getId()%>" />

            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="<%=u.getName()%>" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="email" value="<%=u.getEmail()%>" /></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><input type="radio" name="gender" value="M" />Male
                        <input type="radio" name="gender" value="F" checked />Female</td>
                </tr>
                <tr>
                    <td>Country:</td>
                    <td><select name="country">
                            <option>India</option>
                            <option>USA</option>
                            <option>Germany</option>
                            <option>Nigeria</option>
                            <option>Other</option>
                    </select></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Edit User" /></td>
                </tr>
            </table>
        </form>

    </body>
</html>
