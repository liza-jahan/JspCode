<%@ page import="CRUD.Read_Values" %>
<%@ page import="common.User_Bean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 24/4/2022
  Time: 1:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>Insert Values</h1>
    <form action="insert_controller" method="get">
        Sl No :<input type="text" name="sl_no"><br><br>
        User Name :<input type="text" name="user_name"><br><br>
        Mobile:<input type="text" name="mobile"><br><br>
        Email:<input type="text" name="email"><br><br>
        <input type="submit" value="Submit">
    </form>
    <hr>
    <%
        Read_Values obj_Read_Values=new Read_Values();
        List<User_Bean> list=obj_Read_Values.get_values();
        Iterator<User_Bean> it_list=list.iterator();
    %>
    <table border="1">
        <%
            while(it_list.hasNext()){
                User_Bean obj_User_Bean= new User_Bean();
                obj_User_Bean=it_list.next();
        %>
        <tr>
            <td><%=obj_User_Bean.getSl_no()%></td>
            <td><%=obj_User_Bean.getUser_name()%></td>
            <td><%=obj_User_Bean.getEmail()%></td>
            <td><%=obj_User_Bean.getMobile()%></td>
            <td>
                <a href="edit.jsp?sl_no=<%=obj_User_Bean.getSl_no()%>">Edit</a>

            </td>
            <td>
                <a href="delete_controller.jsp?sl_no=<%=obj_User_Bean.getSl_no()%>">Delete</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</center>
  
  </body>
</html>
