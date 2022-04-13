<html>
<head>
<title> Welcome to JSP </title>
</head>

<body>

        <b>Request user agent:</b>
        <%=request.getHeader("User-Agent")%>

        <br/><br/>

        <b>Request locale:</b>
        <%= request.getLocale() %>

</body>
</html>
