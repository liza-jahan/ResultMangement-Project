<%@ page import="com.example.resultmanagement.ResultBean" %>
<%@ page import="com.example.resultmanagement.Repository" %>
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


  //  int id = Integer.parseInt(request.getParameter("Id"));
    Repository repository = new Repository();
    List<ResultBean> resultBean = repository.getAllInfo();
    ResultBean resultbean =new ResultBean();
    request.setAttribute("resultBean",resultBean);
    //Iterator<ResultBean>it_list=resultBean.iterator();

%>
<div class="container">
    <h2>MARKS SHEET</h2>
    <table>

        <thead>
        <tr>
            <th>Roll No.</th>
            <th>Name</th>
            <th>English</th>
            <th>Maths</th>
            <th>Science</th>
            <th>Computer Science</th>

        <tr>
        </thead>
        <tbody>
        <tr>
            <td><c:out value="${resultBean.getRoll()}"/></td>
             <td><c:out value="${resultBean.getName()}"/></td>
            <td><c:out value="${resultBean.getBangla()}"/></td>
            <td></td>
            <td></td>
            <td></td>

        </tr>

        <!-- footer
        <tfoot>
          <tr>
            <td colspan=3>Maximum Marks: </td>
            <td colspan=3>Marks Obtained: </td>
            <td colspan=2>Grade: </td>
          </tr>
        </tfoot> footer ends-->
    </table>
</div>
</body>
</html>