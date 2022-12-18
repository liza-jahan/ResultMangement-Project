<%@ page import="com.example.resultmanagement.ResultModel.RepositoryOfResult" %>
<%@ page import="com.example.resultmanagement.ResultModel.ResultBean" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 18/12/2022
  Time: 12:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/editRegistrationForm_style.css">
</head>
<body>
<%
    int id= Integer.parseInt(request.getParameter("id"));
    RepositoryOfResult repository=new RepositoryOfResult();
    ResultBean resultBean=repository.getValueOfResult(id);

%>
<header id="hero">
<div class="container">
    <div class="regbox box">

        <h1> Edit mark</h1>
        <form action="editRegistrationForm_process" method="post">
            <input type="hidden" placeholder="Id" name="id" value="<%=id%>" required>

            <p>Roll</p>
            <input type="text" placeholder="Roll" name="roll" value="<%=resultBean.getRoll()%>" required>
            <p>Name</p>
            <input type="text" placeholder="Name" name="name" value="<%=resultBean.getName()%>" >
            <p>Bangla</p>
            <input type="text" placeholder="Bangla" name="bangla"value="<%=resultBean.getBangla()%>">
            <p>English</p>
            <input type="text" placeholder="English" name="english"value="<%=resultBean.getEnglish()%>">
            <p>Math</p>
            <input type="text" placeholder="Math" name="math" value="<%=resultBean.getMath()%>"required>
            <p>Science</p>
            <input type="text" placeholder="Science" name="science" value="<%=resultBean.getScience()%>"required>
            <p>Computer </p>
            <input type="text" placeholder="Computer" name="computer" value="<%=resultBean.getScience()%>"required><br>
            <input type="submit" value="Register">

        </form>
    </div>
</div>
</header>

</body>
</html>
