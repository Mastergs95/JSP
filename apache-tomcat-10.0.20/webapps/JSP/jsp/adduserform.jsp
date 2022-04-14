<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <style>
        table, th, td{
            border: 2px solid black;
            padding: 5px
        }

        table.center{
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <body>
        <br/>

        <h2 style="text-align: center">Add User</h2>

        <div align="center">
            <form action="adduser.jsp" method="post">

                <table class="center" style="background-color: #FEF9E7; width: 50%;">

                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name"/></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="email" name="email"/></td>
                    </tr>
                    <tr>
                        <td>Sex:</td>
                        <td><input type="radio" name="gender" value="M"/>Male</td>
                        <td><input type="radio" name="gender" value="F"/>Female</td>
                    </tr>
                    <tr>
                        <td>Country:</td>
                        <td><select name="country" style="width: 155px">
                                <option>India</option>
                                <option>USA</option>
                                <option>Germany</option>
                                <option>Nigeria</option>
                                <option>Other</option>
                            </select></td>
                    </tr>
                </table>
                <br> <input type="submit" value="Submit">
            </form>
            <br>
            <div>
                <button onclick="window.location.href='${pageContext.request.contextPath}/jsp/viewusers.jsp'">View Users</button>
            </div>
        </div>


    </body>
</html>