<%@ page import="CRUD.Delete_values" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 24/4/2022
  Time: 2:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String sl_no=request.getParameter("sl_no");
Delete_values obj_Delete_values=new Delete_values();
obj_Delete_values.delete_value(sl_no);
%>
  </body>
</html>
