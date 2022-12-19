<%@ page import="com.example.resultmanagement.ResultModel.ResultBean" %>
<%@ page import="com.example.resultmanagement.ResultModel.RepositoryOfResult" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>MARKS SHEET USING HTML TABLES</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Keywords" content="html, css, html tables, table">
    <meta name="Description" content="html table">
    <!-- add icon -->
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link href="<%=request.getContextPath()%>/CSS/ResultsheetDesing_style.css" rel='stylesheet' type='text/css'>

</head>
<body>
<%


int Id = Integer.parseInt(request.getParameter("id"));
RepositoryOfResult repository = new RepositoryOfResult();
ResultBean resultBean = repository.getValueOfResult(Id);
request.setAttribute("resultBean", resultBean);



 //   RepositoryOfResult repository = new RepositoryOfResult();
 //   List<ResultBean> resultBean = repository.getAllInfo();
 //   request.setAttribute("resultBean",resultBean);

%>
<div class="container">
    <h2>MARKS SHEET</h2>
    <table>

        <thead>
        <tr>
            <th>Roll No.</th>
            <th>Name</th>
            <th>Bangla</th>
            <th>English</th>
            <th>Maths</th>
            <th>Science</th>
            <th>Computer Science</th>
            <th>Total</th>
            <th>Edit</th>

        <tr>
        </thead>
        <tbody>
        <tr>


            <c:forEach var = "result" items="${resultBean}">
            <td><c:out value="${result.getRoll()}"/></td>
            <td><c:out value="${result.getName()}"/></td>
            <td><c:out value="${result.getBangla()}"/></td>
            <td><c:out value="${result.getEnglish()}"/></td>
            <td><c:out value="${result.getMath()}"/></td>
            <td><c:out value="${result.getScience()}"/></td>
            <td><c:out value="${result.getComputer()}"/></td>
            <td><c:out value="${result.getEnglish()+result.getBangla()+result.getMath()+result.getScience()+result.getComputer()}"/></td>
                <td>
                    <a href="editRegistrationForm.jsp?Id=<c:out value="${result.getId()}"/>" style="color: blueviolet">Edit</a>
                </td>


            </c:forEach>

        </tr>


    </table>
</div>
</body>
</html>