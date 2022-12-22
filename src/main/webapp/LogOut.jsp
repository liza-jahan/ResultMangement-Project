<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 21/12/2022
  Time: 1:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log Out</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/LogOut.css">

</head>
<body>
<form action="LogOutProcess" method="post">
    <h3><font class="row">You are successfully logged out</font></h3>
    <a href="index.jsp" class="opo">Go-Back To Home Page</a>
</form>
</body>
</html>
