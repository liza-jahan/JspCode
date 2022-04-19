<%@ page import="java.sql.Time" %>
<%@ page import="java.sql.Date" %>
<%@ page import="management.managementInformation" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.sql.Timestamp" %>

<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 18/4/2022
  Time: 2:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
   String employe_name=request.getParameter("employe_name");
  Time start_work= Time.valueOf((request.getParameter("start_work")));

 Date date_present_day=Date.valueOf((request.getParameter("date_present_day")));
  Time end_work=Time.valueOf(request.getParameter("end_work"));
   out.println(employe_name);
   out.println(start_work);
   out.println(date_present_day);
   out.println(end_work);
  managementInformation obj_managementInformation= new managementInformation();
  obj_managementInformation.managementInformation(employe_name, start_work,date_present_day,end_work);

  %>
Finished
  </body>
</html>
