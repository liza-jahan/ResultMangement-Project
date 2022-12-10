<%@ page import="Service.UserRegService" %>
<%@ page import="Service.UserRegServiceImp" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/12/2022
  Time: 7:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="userBean" class="Registration.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="userBean"></jsp:setProperty>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
 UserRegService userRegService = new UserRegServiceImp();
 int status = userRegService.save(userBean);
  if(status==1)
{


}

%>
  
  </body>
</html>
