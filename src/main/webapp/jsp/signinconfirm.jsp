<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Sign in successful</title>
    </head>
    <body>
        <h3> Welcome aboard! </h3><br>
        <b>Request username: </b> <%= request.getAttribute("username") %>
        <br>
        <b>Session username: </b> <%= request.getSession().getAttribute("username") %>
        <br>
        <b>ServletContext username: </b> <%= request.getServletContext().getAttribute("username") %>
        <br><br>
        Click <a href="${pageContext.request.contextPath}/jsp/userhome.jsp">here </a>to go to your home page.

    </body>
    </html>