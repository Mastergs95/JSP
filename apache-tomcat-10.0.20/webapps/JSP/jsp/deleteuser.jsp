<%@page import="com.skillsoft.UserDAO"%>
<jsp:useBean id="u" class="com.skillsoft.model.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    UserDAO.delete(u);
%>

<h3> The user delete request has been sent. Check the user list to confirm </h3><br>
<a href="${pageContext.request.contextPath}/jsp/viewusers.jsp">View Users</a>