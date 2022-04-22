<%@ page import="java.applet.Applet" %>
<%@ page import="InsertInformation.Edit_value"%>
<%@ page import="InsertInformation.user_bean" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 22/4/2022
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<%
    String Email=(String)request.getParameter("email");
    Edit_value obj_Edit_value=new Edit_value();
    user_bean obj_user_bean =obj_Edit_value.get_value_of_edit("email");


%>

<div style="...">
    <center>
        <h1>Registration BD</h1>
        <form action="Edit_controller" method="get">

            Name :<input type=text" name="TeacherName" value="<%=obj_user_bean.getTeacherName()%>"><br><br>
            Email :<input type="email" name="email" value="<%=Email%>"><br><br>
            PhoneNumber:<input type="phonenumber" name="phoneNumber"value="<%=obj_user_bean.getPhoneNumber()%>"></br>
            <input type="submit" value="Insert"/>
        </form>
        </center>
</div>
  </body>
</html>
