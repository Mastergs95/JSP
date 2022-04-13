<!DOCTYPE html>
<html>
<head>
<title> Welcome to JSP </title>
</head>

<body>

        <jsp:include page="jsp/header.jsp"></jsp:include>

        JavaServer Pages (JSP) is a technology for developing Webpages that supports dynamic content. This helps developers insert java code in HTML pages by making use of special JSP tags, most of which start with.

        A JavaServer Pages component is a type of Java servlet that is designed to fulfill the role of a user interface for a Java web application. Web developers write JSPs as text files that combine HTML or XHTML code, XML elements, and embedded JSP actions and commands.

        <jsp:include page="jsp/footer.jsp"></jsp:include>

         <br/><br/>

        <b>Request locale:</b>
        <%= request.getLocale() %>

</body>
</html>
