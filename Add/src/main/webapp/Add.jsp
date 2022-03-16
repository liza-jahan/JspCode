<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <h1>  <%=2+8 %> </h1>  </br>
      <%! int a=10; %>
      <%  if(a>9){%>
       <input type="email">
       <%} else{%>
        <input type="button" >
      
      <%}
        %>
        <p><a href="Addition"> Add </a></p>
</body>
</html>