<%@ page import="InsertInformation.InsertInformation" %>
<%@ page import="InsertInformation.user_bean" %>
<%@ page import="InsertInformation.Edit_value" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 23/4/2022
  Time: 1:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String TeacherName =request.getParameter("TeacherName");
String Email=request.getParameter("email");
int  PhoneNumber=Integer.parseInt(request.getParameter("phoneNumber"));
user_bean obj_user_bean=new user_bean();
obj_user_bean.setTeacherName(TeacherName);
obj_user_bean.setEmail(Email);
obj_user_bean.setPhoneNumber(PhoneNumber);


Edit_value obj_user_edit=new Edit_value();
obj_user_edit.edit_value(obj_user_bean);
%>
  </body>
</html>
