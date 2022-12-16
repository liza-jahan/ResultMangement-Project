
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: rktirtho
  Date: ১৯/৬/২২
  Time: ৯:৩৪ PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
          content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>Sidebar template</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
    <style>
        @keyframes swing {
            0% {
                transform: rotate(0deg);
            }
            10% {
                transform: rotate(10deg);
            }
            30% {
                transform: rotate(0deg);
            }
            40% {
                transform: rotate(-10deg);
            }
            50% {
                transform: rotate(0deg);
            }
            60% {
                transform: rotate(5deg);
            }
            70% {
                transform: rotate(0deg);
            }
            80% {
                transform: rotate(-5deg);
            }
            100% {
                transform: rotate(0deg);
            }
        }

        @keyframes sonar {
            0% {
                transform: scale(0.9);
                opacity: 1;
            }
            100% {
                transform: scale(2);
                opacity: 0;
            }
        }

        body {
            font-size: 0.9rem;
        }

        .page-wrapper .sidebar-wrapper,
        .sidebar-wrapper .sidebar-brand > a,
        .sidebar-wrapper .sidebar-dropdown > a:after,
        .sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before,
        .sidebar-wrapper ul li a i,
        .page-wrapper .page-content,
        .sidebar-wrapper .sidebar-search input.search-menu,
        .sidebar-wrapper .sidebar-search .input-group-text,
        .sidebar-wrapper .sidebar-menu ul li a,
        #show-sidebar,
        #close-sidebar {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

        /*----------------page-wrapper----------------*/

        .page-wrapper {
            height: 100vh;
        }

        .page-wrapper .theme {
            width: 40px;
            height: 40px;
            display: inline-block;
            border-radius: 4px;
            margin: 2px;
        }

        .page-wrapper .theme.chiller-theme {
            background: #1e2229;
        }

        /*----------------toggeled sidebar----------------*/

        .page-wrapper.toggled .sidebar-wrapper {
            left: 0px;
        }

        @media screen and (min-width: 768px) {
            .page-wrapper.toggled .page-content {
                padding-left: 300px;
            }
        }

        /*----------------show sidebar button----------------*/
        #show-sidebar {
            position: fixed;
            left: 0;
            top: 10px;
            border-radius: 0 4px 4px 0px;
            width: 35px;
            transition-delay: 0.3s;
        }

        .page-wrapper.toggled #show-sidebar {
            left: -40px;
        }

        /*----------------sidebar-wrapper----------------*/

        .sidebar-wrapper {
            width: 260px;
            height: 100%;
            max-height: 100%;
            position: fixed;
            top: 0;
            left: -300px;
            z-index: 999;
        }

        .sidebar-wrapper ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .sidebar-wrapper a {
            text-decoration: none;
        }

        /*----------------sidebar-content----------------*/

        .sidebar-content {
            max-height: calc(100% - 30px);
            height: calc(100% - 30px);
            overflow-y: auto;
            position: relative;
        }

        .sidebar-content.desktop {
            overflow-y: hidden;
        }

        /*--------------------sidebar-brand----------------------*/

        .sidebar-wrapper .sidebar-brand {
            padding: 10px 20px;
            display: flex;
            align-items: center;
        }

        .sidebar-wrapper .sidebar-brand > a {
            text-transform: uppercase;
            font-weight: bold;
            flex-grow: 1;
        }

        .sidebar-wrapper .sidebar-brand #close-sidebar {
            cursor: pointer;
            font-size: 20px;
        }

        /*--------------------sidebar-header----------------------*/

        .sidebar-wrapper .sidebar-header {
            padding: 20px;
            overflow: hidden;
        }

        .sidebar-wrapper .sidebar-header .user-pic {
            float: left;
            width: 60px;
            padding: 2px;
            border-radius: 12px;
            margin-right: 15px;
            overflow: hidden;
        }

        .sidebar-wrapper .sidebar-header .user-pic img {
            object-fit: cover;
            height: 100%;
            width: 100%;
        }

        .sidebar-wrapper .sidebar-header .user-info {
            float: left;
        }

        .sidebar-wrapper .sidebar-header .user-info > span {
            display: block;
        }

        .sidebar-wrapper .sidebar-header .user-info .user-role {
            font-size: 12px;
        }

        .sidebar-wrapper .sidebar-header .user-info .user-status {
            font-size: 11px;
            margin-top: 4px;
        }

        .sidebar-wrapper .sidebar-header .user-info .user-status i {
            font-size: 8px;
            margin-right: 4px;
            color: #5cb85c;
        }

        /*-----------------------sidebar-search------------------------*/

        .sidebar-wrapper .sidebar-search > div {
            padding: 10px 20px;
        }

        /*----------------------sidebar-menu-------------------------*/

        .sidebar-wrapper .sidebar-menu {
            padding-bottom: 10px;
        }

        .sidebar-wrapper .sidebar-menu .header-menu span {
            font-weight: bold;
            font-size: 14px;
            padding: 15px 20px 5px 20px;
            display: inline-block;
        }

        .sidebar-wrapper .sidebar-menu ul li a {
            display: inline-block;
            width: 100%;
            text-decoration: none;
            position: relative;
            padding: 8px 30px 8px 20px;
        }

        .sidebar-wrapper .sidebar-menu ul li a i {
            margin-right: 10px;
            font-size: 12px;
            width: 30px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
        }

        .sidebar-wrapper .sidebar-menu ul li a:hover > i::before {
            display: inline-block;
            animation: swing ease-in-out 0.5s 1 alternate;
        }

        .sidebar-wrapper .sidebar-menu .sidebar-dropdown > a:after {
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            content: "\f105";
            font-style: normal;
            display: inline-block;
            font-style: normal;
            font-variant: normal;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            text-align: center;
            background: 0 0;
            position: absolute;
            right: 15px;
            top: 14px;
        }

        .sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu ul {
            padding: 5px 0;
        }

        .sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li {
            padding-left: 25px;
            font-size: 13px;
        }

        .sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before {
            content: "\f111";
            font-family: "Font Awesome 5 Free";
            font-weight: 400;
            font-style: normal;
            display: inline-block;
            text-align: center;
            text-decoration: none;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            margin-right: 10px;
            font-size: 8px;
        }

        .sidebar-wrapper .sidebar-menu ul li a span.label,
        .sidebar-wrapper .sidebar-menu ul li a span.badge {
            float: right;
            margin-top: 8px;
            margin-left: 5px;
        }

        .sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .badge,
        .sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .label {
            float: right;
            margin-top: 0px;
        }

        .sidebar-wrapper .sidebar-menu .sidebar-submenu {
            display: none;
        }

        .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active > a:after {
            transform: rotate(90deg);
            right: 17px;
        }

        /*--------------------------side-footer------------------------------*/

        .sidebar-footer {
            position: absolute;
            width: 100%;
            bottom: 0;
            display: flex;
        }

        .sidebar-footer > a {
            flex-grow: 1;
            text-align: center;
            height: 30px;
            line-height: 30px;
            position: relative;
        }

        .sidebar-footer > a .notification {
            position: absolute;
            top: 0;
        }

        .badge-sonar {
            display: inline-block;
            background: #980303;
            border-radius: 50%;
            height: 8px;
            width: 8px;
            position: absolute;
            top: 0;
        }

        .badge-sonar:after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            border: 2px solid #980303;
            opacity: 0;
            border-radius: 50%;
            width: 100%;
            height: 100%;
            animation: sonar 1.5s infinite;
        }

        /*--------------------------page-content-----------------------------*/

        .page-wrapper .page-content {
            display: inline-block;
            width: 100%;
            padding-left: 0px;
            padding-top: 20px;
        }

        .page-wrapper .page-content > div {
            padding: 20px 40px;
        }

        .page-wrapper .page-content {
            overflow-x: hidden;
        }

        /*------scroll bar---------------------*/

        ::-webkit-scrollbar {
            width: 5px;
            height: 7px;
        }

        ::-webkit-scrollbar-button {
            width: 0px;
            height: 0px;
        }

        ::-webkit-scrollbar-thumb {
            background: #525965;
            border: 0px none #ffffff;
            border-radius: 0px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #525965;
        }

        ::-webkit-scrollbar-thumb:active {
            background: #525965;
        }

        ::-webkit-scrollbar-track {
            background: transparent;
            border: 0px none #ffffff;
            border-radius: 50px;
        }

        ::-webkit-scrollbar-track:hover {
            background: transparent;
        }

        ::-webkit-scrollbar-track:active {
            background: transparent;
        }

        ::-webkit-scrollbar-corner {
            background: transparent;
        }


        /*-----------------------------chiller-theme-------------------------------------------------*/

        .chiller-theme .sidebar-wrapper {
            background: #31353D;
        }

        .chiller-theme .sidebar-wrapper .sidebar-header,
        .chiller-theme .sidebar-wrapper .sidebar-search,
        .chiller-theme .sidebar-wrapper .sidebar-menu {
            border-top: 1px solid #3a3f48;
        }

        .chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
        .chiller-theme .sidebar-wrapper .sidebar-search .input-group-text {
            border-color: transparent;
            box-shadow: none;
        }

        .chiller-theme .sidebar-wrapper .sidebar-header .user-info .user-role,
        .chiller-theme .sidebar-wrapper .sidebar-header .user-info .user-status,
        .chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
        .chiller-theme .sidebar-wrapper .sidebar-search .input-group-text,
        .chiller-theme .sidebar-wrapper .sidebar-brand > a,
        .chiller-theme .sidebar-wrapper .sidebar-menu ul li a,
        .chiller-theme .sidebar-footer > a {
            color: #818896;
        }

        .chiller-theme .sidebar-wrapper .sidebar-menu ul li:hover > a,
        .chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active > a,
        .chiller-theme .sidebar-wrapper .sidebar-header .user-info,
        .chiller-theme .sidebar-wrapper .sidebar-brand > a:hover,
        .chiller-theme .sidebar-footer > a:hover i {
            color: #b8bfce;
        }

        .page-wrapper.chiller-theme.toggled #close-sidebar {
            color: #bdbdbd;
        }

        .page-wrapper.chiller-theme.toggled #close-sidebar:hover {
            color: #ffffff;
        }

        .chiller-theme .sidebar-wrapper ul li:hover a i,
        .chiller-theme .sidebar-wrapper .sidebar-dropdown .sidebar-submenu li a:hover:before,
        .chiller-theme .sidebar-wrapper .sidebar-search input.search-menu:focus + span,
        .chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active a i {
            color: #16c7ff;
            text-shadow: 0px 0px 10px rgba(22, 199, 255, 0.5);
        }

        .chiller-theme .sidebar-wrapper .sidebar-menu ul li a i,
        .chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown div,
        .chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
        .chiller-theme .sidebar-wrapper .sidebar-search .input-group-text {
            background: #3a3f48;
        }

        .chiller-theme .sidebar-wrapper .sidebar-menu .header-menu span {
            color: #6c7b88;
        }

        .chiller-theme .sidebar-footer {
            background: #3a3f48;
            box-shadow: 0px -1px 5px #282c33;
            border-top: 1px solid #464a52;
        }

        .chiller-theme .sidebar-footer > a:first-child {
            border-left: none;
        }

        .chiller-theme .sidebar-footer > a:last-child {
            border-right: none;
        }

    </style>


</head>

<body>
<%
    String isUserLogin =(String) session.getAttribute("user_log_in_status");
    if(isUserLogin==null || !isUserLogin.equals("yes"))
    {
      response.sendRedirect("/?Failed=ture") ;
    }

%>
<div class="page-wrapper chiller-theme toggled">
    <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
        <i class="fas fa-bars"></i>
    </a>
    <nav id="sidebar" class="sidebar-wrapper">
        <div class="sidebar-content">
            <div class="sidebar-brand">
                <a href="#">pro sidebar</a>
                <div id="close-sidebar">
                    <i class="fas fa-times"></i>
                </div>
            </div>
            <div class="sidebar-header">
                <div class="user-pic">
                    <img class="img-responsive"
                         src="<%=request.getContextPath()%>/Img/download.jpg"alt="User picture">
                </div>
                <div class="user-info">
          <span class="user-name">Jhon
            <strong>Smith</strong>
          </span>
                    <span class="user-role">Administrator</span>
                    <span class="user-status">
            <i class="fa fa-circle"></i>
            <span>Online</span>
          </span>
                </div>
            </div>


            <div class="sidebar-menu">
                <ul>
                    <li class="header-menu">
                        <span>General</span>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#">
                            <i class="fa fa-tachometer-alt"></i>
                            <span>Class</span>

                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li>
                                    <a href="#">Class 6
                                        <span class="badge badge-pill badge-success">Pro</span>
                                    </a>
                                    <a href="Class_6_info.jsp">Student information</a>
                                    <a href="AdminTask.jsp">Admin Task </a>
                                </li>
                                <li>
                                    <a href="#">Class 7</a>
                                </li>
                                <li>
                                    <a href="#">Class 8</a>
                                </li><li>
                                <a href="#">Class 9</a>
                            </li><li>
                                <a href="#">Class 10</a>
                            </li>
                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#">
                            <i class="fa fa-shopping-cart"></i>
                            <span>Teacher</span>
                            <span class="badge badge-pill badge-danger"></span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li>
                                    <a href="#">Teacher info

                                    </a>
                                </li>

                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#">
                            <i class="far fa-gem"></i>
                            <span>other employee</span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li>
                                    <a href="#">General</a>
                                </li>
                                <li>
                                    <a href="#">Panels</a>
                                </li>
                                <li>
                                    <a href="#">Tables</a>
                                </li>
                                <li>
                                    <a href="#">Icons</a>
                                </li>
                                <li>
                                    <a href="#">Forms</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#">
                            <i class="fa fa-chart-line"></i>
                            <span>Charts</span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li>
                                    <a href="#">Pie chart</a>
                                </li>
                                <li>
                                    <a href="#">Line chart</a>
                                </li>
                                <li>
                                    <a href="#">Bar chart</a>
                                </li>
                                <li>
                                    <a href="#">Histogram</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#">
                            <i class="fa fa-globe"></i>
                            <span>Maps</span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li>
                                    <a href="#">Google maps</a>
                                </li>
                                <li>
                                    <a href="#">Open street map</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="header-menu">
                        <span>Extra</span>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-book"></i>
                            <span>Documentation</span>
                            <span class="badge badge-pill badge-primary">Beta</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-calendar"></i>
                            <span>Calendar</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-folder"></i>
                            <span>Examples</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- sidebar-menu  -->
        </div>
        <!-- sidebar-content  -->
        <div class="sidebar-footer">
            <a href="#">
                <i class="fa fa-bell"></i>
                <span class="badge badge-pill badge-warning notification">3</span>
            </a>
            <a href="#">
                <i class="fa fa-envelope"></i>
                <span class="badge badge-pill badge-success notification">7</span>
            </a>
            <a href="#">
                <i class="fa fa-cog"></i>
                <span class="badge-sonar"></span>
            </a>
            <a href="#">
                <i class="fa fa-power-off"></i>
            </a>
        </div>
    </nav>
    <!-- sidebar-wrapper  -->
    <main class="page-content">
        <div class="container-fluid">
            <h2>Pro Sidebar</h2>
            <hr>
            <div class="row">
                <div class="form-group col-md-12">
                    <p>This is a responsive sidebar template with dropdown menu based on bootstrap 4 framework.</p>
                    <p> You can find the complete code on <a href="https://github.com/azouaoui-med/pro-sidebar-template"
                                                             target="_blank">
                        Github</a>, it contains more themes and background image option</p>
                </div>
                <div class="form-group col-md-12">
                    <iframe src="https://ghbtns.com/github-btn.html?user=azouaoui-med&repo=pro-sidebar-template&type=star&count=true&size=large"
                            frameborder="0" scrolling="0" width="140px" height="30px"></iframe>
                    <iframe src="https://ghbtns.com/github-btn.html?user=azouaoui-med&repo=pro-sidebar-template&type=fork&count=true&size=large"
                            frameborder="0" scrolling="0" width="140px" height="30px"></iframe>
                </div>
            </div>
            <h5>More templates</h5>
            <hr>

            <div class="row">



                <c:forEach var="i" items="${users}">
                    <div class="col-md-4 mx-3 my-3">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top"
                                 src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPcAAADMCAMAAACY78UPAAAAPFBMVEX29vawsLD5+fm6urqtra3CwsKysrLy8vLi4uLe3t7m5uaxsbHp6enFxcXNzc3s7OzT09O9vb3Q0NDZ2dlO/F6aAAAFFUlEQVR4nO2dyXarMAxAQQYzT+H///UZkjRNHyHEtmyJ6C66aLvgHnmQDZaTRBAEQRAEQRCEO3An9oMEY3Et2nKeR8Nc1UPyBfYAQ9VPOvtNqrqxTk7sDkndq0X0L+Z3TT4Xp1Q3ke71hvMv96lKzmYOUE470nf35lKcyhxK9d56NU/785hDOx2SvrX3yzlaOxT9cevVXJcnEIdSf6a9mHfsQw4fBvse8pq1OBTKRnsxnxmLQ/t5G/8R79mKQ2ltvYjnsZ/fEqhctI34FNvACldtpuJujZytOLTu2stEzm1wK7QHbSM+8hKHDzLyfXFWOStcPGkbitgyx4Han3aWMwq48qbNKWP12coXcS4tffCqzWYyg86vd5q1sZUO4SVjefJmMbRB7tubR8A99+7Vm0HAvffuVXyIrfUeBG0Gmy8wY3inOrbXO2DC0DbLk9hibyhQwk2+oSM1c/INHWU0X6A+hfvZZtnwpr3xgpC03LxJpy7ue8cv0aS9rd4CHoL0KhxyLO00q2PL7QBYwxr17SY0bdoDOlK2tnpTztjQpjHiu2zet5h+eU+EvT2+L/gP8aYHojfpdo7Yv1PKCfq3juffOn9/a74GPl8A//GuKHt/63rM75vvJ2/S6+8v3W9B3F+jPI0liPuppLcdEPfPab8RRevgKrbZGwocbdrZWoLylcfqTXn2XkBq6NSbeYKTopNOzq+gvDIhnazdwPieiXjSsoIwhROfvG94DziLcCP0cB7h9p67kM9Z7nj+uKeJ7XMYsD0NuwWnkzWDR20eg9oVjy1dM0hZHnibxDNuB+D9dHHi2ywbeDkoyWYKewCtB21OY9od90ODtL9RfAnUrtqxDSyBtnEIOcO+fce+jAmLLZY9LLcZs5Ty688D2GVumRp4axvx4eO2nmUX7tYr47Haa49gt6fQNsNbd9w80+xS09dAmx+st6dn9iXInoC2T9+ZZ5k6mfUCFPNekUXzp64+ZSXRpZTonDcbBVTNr1Rfni/UD0xA67lT+qlc7tRXw5nr5d64Fkiuy8pQ1kPxDfWRH3xbOWxBEARBYAvsEfvhELhqLbdYjH2XT0oprXXTNOanVmrKu36cy7q4/+MZMCJFW43dpNOfjHxjXXJFT91YtQVz+UV5WYWkm7KvlqO3iz24yhvncr21w2o/dV2ZVtxu9jCP246TnfKTvLrUfFblAOv1LE7OD3fNY0MCYLjsXc9ip94Sb/CQVAeuZ7FQJ73hCMVoX9f/nbqmepUNJO93ip3MSV5lA8UF1Xo1z8iZw4zWwp/M05FSP4fW54eZ++aKzAdtpmOHsl7NexohDxjsmziJS3zQKirumRP4LgDrQOi++BR3YHf5YMlNXMf8AAaGILPXNvE6uc/rGz4n2jmEuNrRKnz4uYnHSTxGxMHjGRJr8Qh93NMFRG40wU/UebuAyI3Q58IRC8R+ROATCT4uVfND2IM3RRPb94eQh2bRqrRYELD+IJ1WvhCwpeNVWbMh1BUAMVbcewRbjVPIWJ4IcnSWWrhDBRyxxrk1IbRJDeZXQgzpSIWn3AgwhyMVGnMDP2lDrBzpAP6hSkop6i/wGzrB0XwBewpHrHjtAnY9PprdG38mg5GoN/IheSr7S/+BXAqCZNayoMQbxzu24Ask3uIt3uIt3uIt3uIt3uJNEfEWb/EWb/EWb/EWb/EWb4qIt3iLt3iLt3gz9s6wvXtFE+wrIHYricUEV1sQBEEQBEEQgvAP11lefkObcB4AAAAASUVORK5CYII="
                                 alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"><c:out value="${i.getName()}"></c:out></h5>
                                <p class="card-text"><c:out value="${i.getEmail()}"></c:out></p>
                                <p class="card-text"><c:out value="${i.getPhoneNumber()}"></c:out></p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

    </main>
    <!-- page-content" -->
</div>
<!-- page-wrapper -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

<script>
    jQuery(function ($) {

        $(".sidebar-dropdown > a").click(function () {
            $(".sidebar-submenu").slideUp(200);
            if (
                $(this)
                    .parent()
                    .hasClass("active")
            ) {
                $(".sidebar-dropdown").removeClass("active");
                $(this)
                    .parent()
                    .removeClass("active");
            } else {
                $(".sidebar-dropdown").removeClass("active");
                $(this)
                    .next(".sidebar-submenu")
                    .slideDown(200);
                $(this)
                    .parent()
                    .addClass("active");
            }
        });

        $("#close-sidebar").click(function () {
            $(".page-wrapper").removeClass("toggled");
        });
        $("#show-sidebar").click(function () {
            $(".page-wrapper").addClass("toggled");
        });


    });
</script>

</body>

</html>
