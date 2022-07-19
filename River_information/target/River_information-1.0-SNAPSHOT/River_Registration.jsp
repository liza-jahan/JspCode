<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 18/7/2022
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/River_registration_style.css">
</head>
<body>
<header id="hero">
    <div class="container">
        <div class="regbox box">

            <h1>  River Registration </h1>
            <form action="River_Registration_process" method="post">
                <p>District name</p>
                <input type="text" placeholder="District_name" name="districtName" required>
                <p>River name</p>
                <input type="text" placeholder="River_name" name="riverName" required>
                <p>River height</p>
                <input type="number" placeholder="River_height" name="height">
                <p>River width</p>
                <input type="number" placeholder="River_width" name="width">
                <p>River depth</p>
                <input type="number" placeholder="River_depth" name="depth">
                <p>Other information</p>
                <input type="text" placeholder="information" name="information" required><br>
                <input type="submit" value="Register">

            </form>
        </div>
    </div>
</header>
  </body>
</html>
