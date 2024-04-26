<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Mirrored from askbootstrap.com/preview/osahan-eat/theme-sidebar/index.html?fbclid=IwAR0nwIFNYzgqHa21f49Nzv1kLbeDTnnIQIEIfRudCclQdwQMDTmsCY1Ovq4 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Oct 2022 05:04:30 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" type="image/png" href="img/R.png">
        <title>MANAGER</title>
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="css/osahan.css" rel="stylesheet">
        <link href="font/stylesheet.css" rel="stylesheet">
        <link href="vendor/mdi-icons/css/materialdesignicons.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
    </head>
    <body id="page-top">
        <div id="wrapper">
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
                <a class="sidebar-brand d-flex align-items-center" href="#">
                    <div class="sidebar-brand-icon">
                        <img src="img/R.png" class="img-fluid">
                    </div>
                </a>

                <li class="nav-item">
                </li>

                <hr class="sidebar-divider d-none d-md-block">
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>
            </ul>


            <div id="content-wrapper" class="d-flex flex-column">

                <div id="content">
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow-sm osahan-nav-top">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <style>
                            .dropdown-menu a {
                                font-size: 15px;

                            }
                            .caret {
                                font-size: 15px;

                            }
                        </style>
                        <c:set var="name" value="${sessionScope.username}" />
                        <c:if test="${not empty name}">
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle user-action"><svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>  <b class="caret">${sessionScope.username} </b></a>
                                <ul class="dropdown-menu">
                                    <li class="divider"></li>
                                    <li><a href="LogoutController"><i class="material-icons">&#xE8AC;</i> Logout</a></li>
                                </ul>
                            </li>   
                        </c:if>
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">

                                </div>
                            </li>
                    </nav>
                    <style>
                        .table-responsive {
                            margin: -50px 0;
                        }
                        .table-wrapper {
                            min-width: 1000px;
                            background: #fff;
                            padding: 20px 25px;
                            border-radius: 3px;
                            box-shadow: 0 1px 1px rgba(0,0,0,.05);
                        }
                        .table-title {
                            padding-bottom: 15px;
                            background: #c60021;
                            color: white;
                            padding: 16px 30px;
                            margin: -20px -25px 10px;
                            border-radius: 3px 3px 0 0;
                        }
                        .table-title h2 {
                            margin: 5px 0 0;
                            font-size: 24px;
                        }
                        .table-title .btn {
                            color: #566787;
                            float: right;
                            font-size: 13px;
                            background: #fff;
                            border: none;
                            min-width: 50px;
                            border-radius: 2px;
                            border: none;
                            outline: none !important;
                            margin-left: 10px;
                        }
                        .table-title .btn:hover, .table-title .btn:focus {
                            color: #566787;

                        }
                        .table-title .btn i {
                            float: left;
                            font-size: 21px;
                            margin-right: 5px;
                        }
                        .table-title .btn span {
                            float: left;
                            margin-top: 2px;
                        }
                        table.table tr th, table.table tr td {
                            border-color: #e9e9e9;
                            padding: 12px 15px;
                            vertical-align: middle;
                        }
                        table.table tr th:first-child {
                            width: 60px;
                        }
                        table.table tr th:last-child {
                            width: 100px;
                        }
                        table.table-striped tbody tr:nth-of-type(odd) {
                            /*background-color: ;*/
                        }
                        table.table-striped.table-hover tbody tr:hover {

                        }
                        table.table th i {
                            font-size: 13px;
                            margin: 0 5px;
                            cursor: pointer;
                        }	
                        table.table td:last-child i {
                            opacity: 0.9;
                            font-size: 22px;
                            margin: 0 5px;
                        }
                        table.table td a {
                            font-weight: bold;
                            color: #566787;
                            display: inline-block;
                            text-decoration: none;
                        }
                        table.table td a:hover {
                            color: #2196F3;
                        }
                        table.table td a.settings {
                            color: #2196F3;
                        }
                        table.table td a.delete {
                            color: #F44336;
                        }
                        table.table td i {
                            font-size: 19px;
                        }
                        table.table .avatar {
                            border-radius: 50%;
                            vertical-align: middle;
                            margin-right: 10px;
                        }
                        .status {
                            font-size: 30px;
                            margin: 2px 2px 0 0;
                            display: inline-block;
                            vertical-align: middle;
                            line-height: 10px;
                        }
                        h2 {
                            color: white;
                        }
                        h3 {
                            color:#c60021
                        }
                    </style>

                    <c:if test="${sessionScope.roleID == 2 || sessionScope.roleID == 3}">
                        <c:set var="book" value="${requestScope.book}" />
                        <form action="MainController"method="post">
                            <div class="container"> <br></br>
                                <div class="table-responsive">
                                    <div class="table-wrapper">
                                        <div class="table-title">
                                            <div class="row">
                                                <div class="col-xs-5">
                                                    <h2>Create Category</h2>
                                                </div>
                                            </div>
                                        </div>
                                        <table class="table table-striped table-hover">
                                            <tr>
                                                <td>Category Name</td>
                                                <td>
                                                    <input   name="CategoryName"  />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Status</td>
                                                <td>
                                                    <select name="Status">
                                                    <c:choose>
                                                        <c:when test="${user.status eq 1}">
                                                            <option value="1" selected>Đang Hoạt Động </option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="1">Đang Hoạt Động</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <c:choose>
                                                        <c:when test="${user.status eq 2}">
                                                            <option value="2" selected>Ngừng Hoạt Động</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="2">Ngừng Hoạt Động</option>
                                                        </c:otherwise>
                                                    </c:choose>                   
                                                </select>
                                                </td>
                                            </tr>
                                               <tr>
                                                <td></td>
                                                <td>
                                                    <input hidden=""  name="ID"  />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                     <button type="submit" name="btAction" value="Manage Category">BACK</button>
                                                </td>
                                       
                                                <td>
                                                    <button type="submit" name="btAction" value="Create Categogy">Create</button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>      
                            </div>   
                        </form>
                    </c:if>

                    <script data-cfasync="false" src="js/email-decode.min.js"></script><script src="vendor/jquery/jquery.min.js" type="4673c51028ea841130b80adc-text/javascript"></script>
                    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js" type="4673c51028ea841130b80adc-text/javascript"></script>

                    <script src="vendor/jquery-easing/jquery.easing.min.js" type="4673c51028ea841130b80adc-text/javascript"></script>

                    <script src="js/osahan.min.js" type="4673c51028ea841130b80adc-text/javascript"></script>
                    <script src="js/rocket-loader.min.js" data-cf-settings="4673c51028ea841130b80adc-|49" defer=""></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon='{"rayId":"75c6f9299e967d56","version":"2022.10.3","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}' crossorigin="anonymous"></script>
                    </body>

                    <!--Mirrored from askbootstrap.com/preview/osahan-eat/theme-sidebar/index.html?fbclid=IwAR0nwIFNYzgqHa21f49Nzv1kLbeDTnnIQIEIfRudCclQdwQMDTmsCY1Ovq4 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Oct 2022 05:04:46 GMT--> 
                    </html>