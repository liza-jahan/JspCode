<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/4/2022
  Time: 1:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>This is a page</h1>
<c:set var="i" value="23" scope="application"></c:set>
<h1> <c:out value="${i}"></c:out> </h1>
<c:out value="Liza"></c:out>
<c:import url="http://www.telusko.com/online.htm"></c:import>
  </body>
</html>
