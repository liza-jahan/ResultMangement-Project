<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/index_style.css">


</head>
<body>

<%--<a href="ResultSheet.jsp">Result sheet</a>--%>
<%--<a href="ResultsheetDesing.jsp">Mark table</a><br>--%>
<%--<a href="RegistrationForm.jsp">Registration</a>--%>
<%--<a href="HomePage.jsp">Home page</a></br>--%>
<%--<a href="LogInPage.jsp">log</a>--%>
<%--<a href="editRegistrationForm.jsp">edit</a>--%>
<nav class="navbar background">
    <ul class="nav-list">
        <div class="logo"><img src=""></div>
        <li><a href="#Home">Home</a></li>

        <li><a href="#AboutUs">AboutUs</a></li>
        <li><a href="#ContactUs">Contact Us</a></li>
    </ul>
    <div class="rightNav">

    <a href="RegistrationForm.jsp">sing up</a><br>
    <a href="LogInPage.jsp">sing in</a>


    </div>
</nav>
<section class="background firstsection">
    <div class="box-main">
        <div class="firstHalf">
            <p class="text-big">About US</p>

            <p class="text-small">
                Here you will get to know the result of ABC school students.
            </p>
            <br>
            <p class="center"><a href="#Order"
                                 style="text-decoration:none;color:white;">
                Every student can show his marks for each subject  of the exam.</a>
            </p>
        </div>
    </div>
</section>
<section class="service">
    <h1 class="h-primary center" style="margin-top:30px;text-align:center;">
        Our Team
    </h1>
    <div id="services">
        <div class="box">
            <img src=
                         "https://media.geeksforgeeks.org/wp-content/uploads/20201231132740/Capture.PNG"
                 alt="picture goes here">

            <p class="center">
                <a href="#xyz" style="text-decoration:none;color:black;
        font-weight:bold;font-family: 'Langar', cursive;">
                    xyz
                </a>
            </p>
            <p style="font-family: sans-serif">CEO and the Founder</p>
        </div>
        <div class="box">
            <img src=
                         "https://media.geeksforgeeks.org/wp-content/uploads/20201231132740/Capture.PNG"
                 alt="picture goes here">

            <p class="center">
                <a href="#abc" style="text-decoration:none;color:black;
        font-weight:bold;font-family: 'Langar', cursive;">
                    abc
                </a>
            </p>

            <p style="font-family: sans-serif ">co-founder</p>
            <p style="font-family: sans-serif ">Foodscalablility@gmail.com</p>
        </div>
        <div class="box">
            <img src=
                         "https://media.geeksforgeeks.org/wp-content/uploads/20201231132740/Capture.PNG"
                 alt="picture goes here">
            <br>
            <p class="center">
                <a href="#xyz" style="text-decoration:none;color:black;
           font-weight:bold;font-family: 'Langar', cursive;">
                    asw
                </a>
            </p>
            <p style="font-family: sans-serif ">Food Manager of the company </p>

        </div>
    </div>

</section>

<footer class="background">
    <p class="text-footer">
        Copyright ©-All rights are reserved
    </p>

</footer>

</body>
</html>