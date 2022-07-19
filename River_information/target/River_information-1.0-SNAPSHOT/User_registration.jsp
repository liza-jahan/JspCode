<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 16/7/2022
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> User Registration</title>
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/User_registration_style.css">
</head>
<body>
<header id="hero">
    <div class="container">
        <div class="regbox box">

            <h1>Registration Account</h1>
            <form action="User_registration_process" method="post">
                <p>First name</p>
                <input type="text" placeholder="First_name" name="firstName" required>
                <p>Last name</p>
                <input type="text" placeholder="Last_name" name="lastName" required>
                <p>User name</p>
                <input type="text" placeholder="User_name" name="userName" required>
                <p>Email</p>
                <input type="email" placeholder="Email" name="email" required>
                <p>Password</p>
                <input type="password" placeholder="Password" name="passwordR" required><br>
                <input type="submit" value="Register">
                <div class="hef">
                    <a href="User_log_in.jsp">Already Have Account ?</a>
                </div>
            </form>
        </div>
    </div>
</header>
</body>
</html>
