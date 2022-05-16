<%@ page import="InsertInformation.InsertInformation" %>
<%@ page import="InsertInformation.SqlConnect" %>


<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 17/4/2022
  Time: 12:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String Name =request.getParameter("TeacherName");
String Email=request.getParameter("email");
int  PhoneNumber=Integer.parseInt(request.getParameter("phoneNumber"));
out.println("TeacherName");
out.println("email");
out.println("phoneNumber");

InsertInformation obj=new InsertInformation();
obj.insert_information(Name,Email,PhoneNumber);
%>

</body>
</html>
