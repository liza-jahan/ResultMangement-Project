<%@ page import="Service.UserRegService" %>
<%@ page import="Service.UserRegServiceImp" %>
<%@page import="Registration.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/12/2022
  Time: 12:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
  int Registration=Integer.parseInt(request.getParameter("registrationNumber"));
  String password =request.getParameter("password");
   UserRegService userService= new UserRegServiceImp();

  boolean isUserLogIn=userService.User_log_in(Registration,password);
  if(isUserLogIn)
  {
  UserBean userBean= userService.getUserByRegistration(Registration);
  session.setAttribute("user_log_in_status","yes");
  session.setAttribute("registrationNumber",userBean.getRegistrationNumber());
  session.setAttribute("classs",userBean.getClass());
  session.setAttribute("password",userBean.getPassword());
  session.setAttribute("authority",userBean.getAuthority());
  response.sendRedirect("HomePage");



  }
else{
  response.sendRedirect("user_log_in?user_log_in_status=false");


  }





  %>
  </body>
</html>
