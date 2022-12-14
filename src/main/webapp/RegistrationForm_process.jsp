<%@ page import="com.example.resultmanagement.UserService.UserRegService" %>
<%@ page import="com.example.resultmanagement.UserService.UserRegServiceImp" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/12/2022
  Time: 7:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="userBean" class="com.example.resultmanagement.UserModel.UserBean"></jsp:useBean>
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
response.getWriter().print("<h2> Account Created </h2><a href=\"LogInPage\">Log in</a> ");

}
else if(status==-1)
{
response.getWriter().print("<h2> User All ready Registered </h2><a href=\"RegistrationForm\">Try again</a> ");

}
else
{
response.getWriter().print("<h2> User All ready Registered </h2><a href=\"RegistrationForm\">Try again</a> ");

}

%>

</body>
</html>
