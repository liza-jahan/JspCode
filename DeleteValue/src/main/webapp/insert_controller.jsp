<%@ page import="CRUD.Insert_Values" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 24/4/2022
  Time: 1:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
   int sl_no=Integer.parseInt(request.getParameter("sl_no"));
    String email=request.getParameter("email");
   int mobile=Integer.parseInt(request.getParameter("mobile"));
    String user_name=request.getParameter("user_name");
    out.println(sl_no);
    out.println(email);
    out.println(mobile);
    out.println(user_name);

    Insert_Values obj_Insert_Values=new Insert_Values();
    obj_Insert_Values.insert_values(sl_no, user_name, email, mobile);
%>

  </body>
</html>
