<%@ page import="com.example.resultmanagement.Repository" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/12/2022
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
 int roll=Integer.parseInt(request.getParameter("roll"));
 String name=request.getParameter("name");
 int bangla =Integer.parseInt(request.getParameter("bangla"));
 int english =Integer.parseInt(request.getParameter("english"));
 int math =Integer.parseInt(request.getParameter("math"));
 int computer =Integer.parseInt(request.getParameter("computer"));
 int science =Integer.parseInt(request.getParameter("science"));
  //int id=Integer.parseInt(String.valueOf(session.getAttribute("id")));
  Repository repository = new Repository();
  int status=repository.saveDatabase (roll,name,bangla,english,math,science,computer);

%>
  </body>
</html>
