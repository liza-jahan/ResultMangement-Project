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

    //getLogInUserAuthority

    request.setAttribute("currentUserAuthority", session.getAttribute("authority"));


    RepositoryOfResult repository = new RepositoryOfResult();
    List<ResultBean> resultBean = repository.getAllInfo();
    //  ResultBean resultbean =new ResultBean();
    request.setAttribute("resultBean", resultBean);

%>
<div class="container">
    <h2>MARKS SHEET</h2>
    <table style="border-collapse: collapse">

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
            <c:if test="${currentUserAuthority eq 'Admin'}">

            <th>Edit</th>
            </c:if>

        <tr>
        </thead>
        <tbody>
        <tr>


            <c:forEach var="result" items="${resultBean}">
                <td><c:out value="${result.getRoll()}"/></td>
                <td><c:out value="${result.getName()}"/></td>
                <td><c:out value="${result.getBangla()}"/></td>
                <td><c:out value="${result.getEnglish()}"/></td>
                <td><c:out value="${result.getMath()}"/></td>
                <td><c:out value="${result.getScience()}"/></td>
                <td><c:out value="${result.getComputer()}"/></td>
                <td><c:out
                        value="${result.getEnglish()+result.getBangla()+result.getMath()+result.getScience()+result.getComputer()}"/></td>


                <%--  if current User Authority    is admin then we will show the edit button              --%>
                <c:if test="${currentUserAuthority eq 'Admin'}">
                    <td>
                        <a href="editRegistrationForm.jsp?id=<c:out value="${result.getId()}"/>"
                           style="color: blueviolet">Edit</a>
                    </td>
                </c:if>


            </c:forEach>

        </tr>


    </table>
</div>
</body>
</html>