<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 16/7/2022
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user log in</title>
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/User_log_in_style.css">
</head>

<body>
<header id="hero">


    <div class="container">
        <div class="regbox box">


            <h1>Log-In Account</h1>

            <form method="post" action="User_log_in_process">
                <p>Email</p>
                <input type="email" placeholder="Email" name="email" required>
                <p>Password</p>
                <input type="password" placeholder="Password" name="passwordR" required><br>
                <input type="submit" value="Register">
                <div class="hef">
                    <a href="User_registration.jsp">No Account ?</a>
                </div>
            </form>
        </div>
    </div>
</header>
</body>
</html>
