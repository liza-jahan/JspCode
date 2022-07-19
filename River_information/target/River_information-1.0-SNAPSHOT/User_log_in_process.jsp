
<%@ page import="com.river_information.Service.UserRegService" %>
<%@ page import="com.river_information.Service.UserRegServiceImp" %>
<%@ page import="com.river_information.model.UserResponse" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 16/7/2022
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String password= (request.getParameter("passwordR"));

    UserRegService user_reg_service = new UserRegServiceImp();
    boolean isUserLogin = user_reg_service.User_log_in(email, password);
    if (isUserLogin) {
   UserResponse userResponse =user_reg_service.getUserByEmail(email);
        session.setAttribute("User_log_in_status", "yes");
        session.setAttribute("UserAuthority",userResponse.getAuthority());
        response.sendRedirect("contract");
    } else {

        response.sendRedirect("User_log_in?User_log_in_status=false");
    }

%>
</body>
</html>
