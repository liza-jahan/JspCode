<%@page import="java.util.AbstractMap"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content/Type"  charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Hello </h1>
   <!-- Expressions -->
   <%=(2+8) %>
    <p>The current date is<%=new java.util.Date() %> </p>
   <!-- Declarations -->
   <%! int a=4; %>
   <!-- Scriptlets  -->
  <%  if (a>5)  {%>
   <input type="text"/> 
  <%}  else  {%>
   <input type="button" value="ok"/> 
   <%}
  %>
  <p><a href="Test1">sample servet</a></p>
</body>

</html>