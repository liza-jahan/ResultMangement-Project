<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 13/9/2022
  Time: 5:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/LogInPage_style.css">

</head>
<body>

<header id="hero">
    <div class="container">
        <div class="regbox box">

            <center><h3> Log in page </h3></center>
            <form action="LogInPage_process" method="post">


                <p>Registration Number</p>
                <input type="text" placeholder="Registration"name="registrationNumber" required>
                <p>Password</p>
                <input type="password" placeholder="Password" name="password" required>

                <br>
                <input type="submit" value="Submit">
                <button class="blue"><a href="RegistrationForm.jsp"> No Account ?</a></button>
            </form>
        </div>
    </div>

</header>
</body>
</html>
