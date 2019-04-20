<%-- 
    Document   : prueba
    Created on : Apr 20, 2019, 9:22:21 AM
    Author     : robar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="../js/bootstrap.js"></script>

        <title>JSP Page</title>
    </head>
    <body class="fixed-sn mdb-skin">

        <!--Double navigation-->
        <header>
            <!-- Sidebar navigation -->
            <div id="slide-out" class="side-nav fixed wide sn-bg-1">
                <ul class="custom-scrollbar">
                    <!-- Logo -->
                    <li>
                        <div class="logo-wrapper sn-ad-avatar-wrapper">
                            <a href="#"><img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" class="rounded-circle"><span>Anna Deynah</span></a>
                        </div>
                    </li>
                    <!--/. Logo -->
                    <!-- Side navigation links -->
                    <li>
                        <ul class="collapsible collapsible-accordion">
                            <li><a class="collapsible-header waves-effect arrow-r active"><i class="sv-slim-icon fas fa-chevron-right"></i> Submit blog<i class="fas fa-angle-down rotate-icon"></i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="#" class="waves-effect active">
                                                <span class="sv-slim"> SL </span>
                                                <span class="sv-normal">Submit listing</span></a>
                                        </li>
                                        <li><a href="#" class="waves-effect">
                                                <span class="sv-slim"> RF </span>
                                                <span class="sv-normal">Registration form</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a class="collapsible-header waves-effect arrow-r"><i class="sv-slim-icon far fa-hand-point-right"></i> Instruction<i class="fas fa-angle-down rotate-icon"></i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="#" class="waves-effect">
                                                <span class="sv-slim"> FB </span>
                                                <span class="sv-normal">For bloggers</span></a>
                                        </li>
                                        <li><a href="#" class="waves-effect">
                                                <span class="sv-slim"> FA </span>
                                                <span class="sv-normal">For authors</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a class="collapsible-header waves-effect arrow-r"><i class="sv-slim-icon fas fa-eye"></i> About<i class="fas fa-angle-down rotate-icon"></i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="#" class="waves-effect">
                                                <span class="sv-slim"> I </span>
                                                <span class="sv-normal">Introduction</span></a>
                                        </li>
                                        <li><a href="#" class="waves-effect">
                                                <span class="sv-slim"> MM </span>
                                                <span class="sv-normal">Monthly meetings</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a class="collapsible-header waves-effect arrow-r"><i class="sv-slim-icon far fa-envelope"></i> Contact me<i class="fas fa-angle-down rotate-icon"></i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="#" class="waves-effect">
                                                <span class="sv-slim"> F </span>
                                                <span class="sv-normal">FAQ</span></a>
                                        </li>
                                        <li><a href="#" class="waves-effect">
                                                <span class="sv-slim"> W </span>
                                                <span class="sv-normal">Write a message</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a id="toggle" class="waves-effect"><i class="sv-slim-icon fas fa-angle-double-left"></i>Minimize menu</a>
                            </li>
                        </ul>
                    </li>
                    <!--/. Side navigation links -->
                </ul>
                <div class="sidenav-bg rgba-blue-strong"></div>
            </div>
            <!--/. Sidebar navigation -->
            <!-- Navbar -->
            <nav class="navbar fixed-top navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav">
                <!-- SideNav slide-out button -->
                <div class="float-left">
                    <a href="#" data-activates="slide-out" class="button-collapse"><i class="fas fa-bars"></i></a>
                </div>
                <!-- Breadcrumb-->
                <div class="breadcrumb-dn mr-auto">
                    <p>Material Design for Bootstrap</p>
                </div>
                <ul class="nav navbar-nav nav-flex-icons ml-auto">
                    <li class="nav-item">
                        <a class="nav-link"><i class="fas fa-envelope"></i> <span class="clearfix d-none d-sm-inline-block">Contact</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><i class="fas fa-comments"></i> <span class="clearfix d-none d-sm-inline-block">Support</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><i class="fas fa-user"></i> <span class="clearfix d-none d-sm-inline-block">Account</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </nav>
            <!-- /.Navbar -->
        </header>
        <!--/.Double navigation-->

        <!--Main Layout-->
        <main>
            <div class="container-fluid mt-5">
                <h2>Advanced Double Navigation with slim Side-nav nad fixed Navbar:</h2>
                <br>
                <h5>1. Fixed slim Side-nav, hidden on small devices.</h5>
                <h5>2. Fixed Navbar. It will always stay visible on the top, even when you scroll down.</h5>
                <div style="height: 2000px"></div>
            </div>
        </main>
        <!--Main Layout-->

    </body>
</html>
