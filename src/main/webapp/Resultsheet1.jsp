<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/12/2022
  Time: 1:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/Resultsheet1_style.css">
</head>
<body>
<header id="hero">
    <div class="container" >
        <div class="regbox box">

            <center><h3> Result sheet </h3></center>
            <form action="Resultsheet1_process" method="post">
                <p>Roll</p>
                <input type="number" placeholder="Roll" name="roll" required>


                <p> Name</p>
                <input type="text" placeholder="Name" name="name" required>
                <p>Bangla</p>
                <input type="number" placeholder="Bangla" name="bangla">
                <p>English</p>
                <input type="number" placeholder="English" name="english">
                <p>Math</p>
                <input type="number" placeholder="Math" name="math">
                <p>Science</p>
                <input type="number" placeholder="Science" name="science" required>
                <p>Computer Science</p>
                <input type="number" placeholder="CS" name="computer">

                <br>
                <input type="submit" value="Register">

            </form>
        </div>
    </div>

</header>
  </body>
</html>
