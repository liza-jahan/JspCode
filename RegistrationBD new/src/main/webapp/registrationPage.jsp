        <%@ page import="InsertInformation.Read_value" %>
<%@ page import="InsertInformation.user_bean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 14/3/2022
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>





<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<div style="...">
    <center>
        <h1>Registration BD</h1>
        <form action="reginformation" method="get">

            Name :<input type=text" name="TeacherName"/><br><br>
            Email :<input type="email" name="email"/><br><br>
            PhoneNumber:<input type="phonenumber" name="phoneNumber"/></br>
            <input type="submit" value="submit"/>
        </form>
         <%
                Read_value obj_Read_value = new Read_value();
                List<user_bean> list = obj_Read_value.get_values();
                Iterator<user_bean> it_list = list.iterator();
                %>
           <table border="1">
        <%
                while(it_list.hasNext()){
                    user_bean obj_user_bean=new user_bean();

                    obj_user_bean= it_list.next();
               %>

               <tr>
                   <td><%=obj_user_bean.getTeacherName()%></td>
                   <td><%=obj_user_bean.getEmail()%></td>
                   <td><%=obj_user_bean.getPhoneNumber()%></td>
               </tr>

<%
}
 %>
           </table>
    </center>
</div>


  </body>
</html>
