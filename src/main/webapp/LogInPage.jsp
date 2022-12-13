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


<form class="regbox" action="LogInPage_process" method="post">
    <h2>Log In Page</h2>
    <label>Registration no</label>
    <input name="registration"  type="text"><br><br>
    <label>Password</label><br>
    <input name="password" type="password"><br><br>
    <button class="blue"type="submit">Submit</button>
    <button class="blue"><a href="RegistrationForm.jsp"> No Account ?</a></button>

</form>

</body>
</html>
