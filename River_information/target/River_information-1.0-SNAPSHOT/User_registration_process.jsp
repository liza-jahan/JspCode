<%@ page import="com.river_information.Service.UserRegService" %>
<%@ page import="com.river_information.Service.UserRegServiceImp" %>
<%@ page import="com.river_information.Repository.UserRepository" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 17/7/2022
  Time: 12:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="registrationRequest" class="com.river_information.model.UserRegistrationRequest"></jsp:useBean>
<jsp:setProperty property="*" name="registrationRequest"></jsp:setProperty>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%


UserRegService userService = new UserRegServiceImp();
int status = userService.save(registrationRequest);
if (status == 1) {
response.getWriter().print("<h2>Account Created</h2><a href=\"User_log_in\">Login</a>");
} else if (status == -1) {
response.getWriter().print("<h2>User already registered</h2> <a href=\"User_registration\">Try Again</a>");
} else {
response.getWriter().print("<h2>Registration failed</h2> <a href=\"User_registration\">Try Again</a>");
}


%>

</body>
</html>
