<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 17/4/2022
  Time: 2:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <center>
   <form action="AttendenceInfo.jsp" method="get">
        Employee_Name:<input type="text" name="Employee_Name"><br><br>
       Start_Time:<input type="time" name="Start_Time" value=""><br><br>
       Date_present_day :<input type="date" name="Date_present_day" value=""><br><br>
       End_Time:<input type="time" name="End_Time"><br><br>
        <input type="submit" name="submit" value="submit">

   </form>




 </center>
  
  </body>
</html>
