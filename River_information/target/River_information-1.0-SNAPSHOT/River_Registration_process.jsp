<%@ page import="riverRegistrationInformation.RiverRepository" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 18/7/2022
  Time: 9:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    String  districtName=request.getParameter("districtName");
    String  riverName=request.getParameter("riverName");
    float  height=Float.parseFloat(request.getParameter("height"));
    float width=Float.parseFloat(request.getParameter("width"));
    float  depth=Float.parseFloat(request.getParameter("depth"));
    String  information=request.getParameter("information");



          out.println(districtName);
          out.println(riverName);
          out.println(height);
          out.println(width);
          out.println(depth);
          out.println(information);


  RiverRepository  RiverRepository = new RiverRepository();
  RiverRepository.riverRepository(districtName,riverName,height,width,depth,information);




  %>
  </body>
</html>
