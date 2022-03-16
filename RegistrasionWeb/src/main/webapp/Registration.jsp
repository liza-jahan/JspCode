<%@ page import="MySql_connection.Insert_Value" %>
<%@ page import="MySql_connection.SqlConnect" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/3/2022
  Time: 5:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String user_name=request.getParameter("user_name");
    String email=request.getParameter("email");
    int  password_number= Integer.parseInt(request.getParameter("password_number"));
    out.println(user_name);
    out.println(email);
    out.println(password_number);

Insert_Value obj_Insert_Value=new Insert_Value();
obj_Insert_Value.insert_values(user_name, email,password_number);

    

%>
Finished
</body>
</html>
