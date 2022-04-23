<%@ page import="CRUD.Edit_values" %>
<%@ page import="common.User_Bean" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 24/4/2022
  Time: 1:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String sl_no=(String)request.getParameter("sl_no");
    Edit_values obj_Edit_values=new Edit_values();
    User_Bean obj_User_Bean=obj_Edit_values.get_value_of_user(sl_no);
%>
<center>
    <h1>Edit Values</h1>
    <form action="edit_controller">
        Sl No :<input type="text" name="sl_no" value="<%=sl_no%>"><br>
        User Name :<input type="text" name="user_name" value="<%=obj_User_Bean.getUser_name()%>"><br>
        Mobile:<input type="text" name="mobile" value="<%=obj_User_Bean.getMobile()%>"><br>
        Email:<input type="text" name="email" value="<%=obj_User_Bean.getEmail()%>"><br>
        <input type="submit" value="Edit">
    </form>
</center>
  </body>
</html>
