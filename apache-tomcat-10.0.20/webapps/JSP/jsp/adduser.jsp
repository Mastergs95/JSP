<%@page import="com.skillsoft.UserDAO"%>

<jsp:useBean id="u" class="com.skillsoft.model.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i=UserDAO.save(u);
    if(i>0){
        out.println("<h3> Success! The user has been added.</h3><br><br>");
    } else {
       out.println("<h3> Uh oh. There was an error whe adding the user. </h3>");
   }
%>

<a href="${pageContext.request.contextPath}/jsp/viewusers.jsp">View Users</a>


