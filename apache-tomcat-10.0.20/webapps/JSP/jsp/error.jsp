<%@ page isErrorPage="true" %>
<%@ page isELIgnored="false" %>

<h3> An Exception has occurred! </h3>

Exception class : <%= exception.getClass() %> <br/> <br/>
Exception message : <%= exception.getMessage() %> <br/> <br/>

<img src="${pageContext.request.contextPath}/img/error.jpg" alt="Error" width="200px" height="200px"><br/>

Image sourced from
<a href ="https://www.pexels.com/photo/man-people-art-sign-4439425/">
this localtion at pexels.com </a>