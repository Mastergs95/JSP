<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Goodbye!</title>
    </head>
    <body>
        <% session.invalidate(); %>
        <h3> Logout successful. Here are your details: </h3><br>
        <b>Request username: </b> <%= request.getAttribute("username") %>
        <br>
        <b>Session username: </b> <%= request.getSession().getAttribute("username") %>
        <br>
        <b>ServletContext username: </b> <%= request.getServletContext().getAttribute("username") %>

    </body>
    </html>