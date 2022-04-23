<%@ page import="common.User_Bean" %>
<%@ page import="CRUD.Edit_values" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 24/4/2022
  Time: 1:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int  sl_no=Integer.parseInt(request.getParameter("sl_no"));
    String email=request.getParameter("email");
     int  mobile=Integer.parseInt(request.getParameter("mobile"));
    String user_name=request.getParameter("user_name");
    User_Bean obj_User_Bean=new User_Bean();
    obj_User_Bean.setSl_no(sl_no);
    obj_User_Bean.setUser_name(user_name);
    obj_User_Bean.setMobile(mobile);
    obj_User_Bean.setEmail(email);

    Edit_values obj_Edit_values=new Edit_values();
    obj_Edit_values.edit_user(obj_User_Bean);
%>

  </body>
</html>
