<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Welcome</title>
    </head>
    <body>
        <h3> Here are your details: </h3><br>
        <b>Request username: </b> <%= request.getAttribute("username") %>
        <br>
        <b>Session username: </b> <%= request.getSession().getAttribute("username") %>
        <br>
        <b>ServletContext username: </b> <%= request.getServletContext().getAttribute("username") %>
        <br><br>
        <a href="${pageContext.request.contextPath}/jsp/logout.jsp">Logout </a>

    </body>
    </html>