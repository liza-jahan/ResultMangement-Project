<%@ page import="com.example.resultmanagement.ResultModel.ResultBean" %>
<%@ page import="com.example.resultmanagement.ResultModel.RepositoryOfResult" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 18/12/2022
  Time: 12:48 AM
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

  ResultBean resultBean =new ResultBean();
  resultBean.setRoll(roll);
  resultBean.setName(name);
  resultBean.setBangla(bangla);
  resultBean.setEnglish(english);
  resultBean.setMath(math);
  resultBean.setScience(science);
  resultBean.setComputer(computer);

  RepositoryOfResult repository=new RepositoryOfResult() ;
  repository.editValue(resultBean);
  response.sendRedirect("HomePage");

  %>
  </body>
</html>
