<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <!--Mirrored from askbootstrap.com/preview/osahan-eat/theme-sidebar/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Oct 2022 05:04:56 GMT--> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" type="image/png" href="img/R.png">    
        <title>SKYSHOP</title>
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="css/osahan.css" rel="stylesheet">
        <link href="font/stylesheet.css" rel="stylesheet">
        <link href="vendor/mdi-icons/css/materialdesignicons.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="path/to/materialize.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/main.css?v=3.4">
        <style>
            .badge {
                /* Kiểm tra các thuộc tính này */
                color: black; /* Màu chữ */
                background-color: white; /* Màu nền */
                opacity: 1; /* Độ trong suốt */
                font-weight: bold; /* Độ đậm của chữ */
            }
            /* Đặt trong tập tin CSS của bạn */
            .badge-large {
                font-size: 1.25em; /* Tăng cỡ chữ lên 125% so với mặc định */
            }

        </style>
    </head>
    <body id="page-top">
        <div id="wrapper">
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
                <a class="sidebar-brand d-flex align-items-center" href="HomeController">
                    <div class="sidebar-brand-icon">
                        <img src="img/R.png" width="50" class="img-fluid">
                    </div>
                </a>
                <li class="nav-item active">
                    <a class="nav-link" href="HomeController">
                        <i class="mdi mdi-home-variant-outline"></i>
                        <span>Trang Chủ</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="HistoryOrderController">
                        <i class="mdi mdi-book-open"></i>
                        <span>Lịch Sử Đặt Hàng</span></a>
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
                                    </svg>  <b class="caret"> ${sessionScope.username} </b></a>
                                <ul class="dropdown-menu">
                              
                                 
                                    <li class="divider"></li>
                                    <li><a href="LogoutController"><i class="material-icons">&#xE8AC;</i>Logout</a></li>
                                </ul>
                            </li>  
                        </c:if>
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="mdi mdi-magnify"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <c:if test="${ empty name}">              
                                <li class="nav-item dropdown no-arrow mx-2 osahan-t-loc">
                                    <a class="nav-link dropdown-toggle text-dark" href="signin.jsp" >
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
                                        <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                                        </svg><span class="ml-2">Đăng Nhập</span>
                                    </a>
                                </li>
                                <li class="nav-item dropdown no-arrow mx-2 osahan-t-loc">
                                    <a class="nav-link dropdown-toggle text-dark" href="signup.jsp" >
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-up" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M3.5 10a.5.5 0 0 1-.5-.5v-8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 .5.5v8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 0 0 1h2A1.5 1.5 0 0 0 14 9.5v-8A1.5 1.5 0 0 0 12.5 0h-9A1.5 1.5 0 0 0 2 1.5v8A1.5 1.5 0 0 0 3.5 11h2a.5.5 0 0 0 0-1h-2z"/>
                                        <path fill-rule="evenodd" d="M7.646 4.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V14.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3z"/>
                                        </svg><span class="ml-2">Đăng Ký</span>
                                    </a>
                                </li>
                            </c:if>

                            <li class="nav-item dropdown no-arrow mx-2 osahan-t-pu">
                                <a class="nav-link dropdown-toggle text-dark" href="contact.jsp">
                                    <i class="mdi mdi-shopping text-danger"></i><span class="ml-2">Liên Hệ</span>
                                </a>
                            </li>
                        </ul>
                        <div class="ml-auto">
                            <form class="d-none d-sm-inline-block form-inline mx-2 my-2 my-md-0 mw-100 navbar-search" action="MainController">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light text-dark font-weight-bold" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" name="txtSearchValue" value="">
                                    <div class="input-group-append">
                                        <input class="btn btn-primary" type="submit" value="Find Product" name="btAction" >
                                    </div>
                                </div>
                            </form>
                            <a href="ViewCartController" class="btn btn-outline-dark">
                                <i class="bi-cart-fill me-1"></i>
                                Cart
                                <%
                                    cart.Cart cart = (cart.Cart) session.getAttribute("CART"); // Lấy đối tượng Cart từ session
                                    int totalQuantity = 0; // Khởi tạo tổng số lượng

                                    // Kiểm tra xem giỏ hàng có tồn tại không
                                    if (cart != null) {
                                        totalQuantity = cart.getTotalQuantity(); // Gọi phương thức getTotalQuantity để lấy tổng số lượng sản phẩm
                                    }
                                %>
                                <span class="badge bg-dark text-white ms-1 rounded-pill"><%= totalQuantity%></span> <!-- Hiển thị tổng số lượng -->
                            </a>
                        </div>
                    </nav>




                    <!-- 
                                 //SHOW THONG TIN historyOrder
                    -->  
                    <div class="container mt-5">
                        <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block">
                            <nav>
                                <ul>
                                    <li><a href="HistoryOrderController?status=1">Đang chờ </a></li>
                                    <li><a href="HistoryOrderController?status=2">Đang lấy hàng </a></li>
                                    <li><a href="HistoryOrderController?status=3">Đang giao </a></li>
                                    <li><a href="HistoryOrderController?status=4">Giao hàng thành công </a></li>
                                    <li><a href="HistoryOrderController?status=5">Đơn đã hủy </a></li>
                                </ul>
                            </nav>
                        </div>

                        <div class="container mt-5">
                            <c:choose>
                                <c:when test="${not empty listHistoryOrder}">
                                    <div class="row">
                                        <c:forEach var="order" items="${listHistoryOrder}">
                                            <div class="col-md-6 col-lg-4 mb-3 d-flex align-items-stretch">
                                                <div class="card shadow-sm border-0 w-100">
                                                    <div class="card-header bg-white border-0 d-flex justify-content-between align-items-center">
                                                        <strong>Đơn hàng #${order.orderId}</strong>
                                                        <span class="badge badge-large">
                                                            <c:choose>
                                                                <c:when test="${order.status == 1}">
                                                                    <span class="badge bg-warning">Đang chờ</span>
                                                                </c:when>
                                                                <c:when test="${order.status == 2}">
                                                                    <span class="badge bg-info">Đang lấy hàng</span>
                                                                </c:when>
                                                                <c:when test="${order.status == 3}">
                                                                    <span class="badge bg-primary">Đang giao</span>
                                                                </c:when>
                                                                <c:when test="${order.status == 4}">
                                                                    <span class="badge bg-success">Giao hàng thành công</span>
                                                                </c:when>
                                                                <c:when test="${order.status == 5}">
                                                                    <span class="badge bg-danger">Đơn đã hủy</span>
                                                                </c:when>
                                                            </c:choose>
                                                        </span>
                                                    </div>
                                                    <div class="card-body">
                                                        <c:forEach var="detail" items="${orderDetailMap[order.orderId]}">
                                                            <div class="d-flex justify-content-between align-items-center mb-2">
                                                                <span>${detail.bookName}</span>
                                                                <span>Số lượng: ${detail.quantity}</span>
                                                                <span>Giá: ${detail.unitPrice}đ</span>
                                                            </div>
                                                        </c:forEach>
                                                        <div class="mt-2">
                                                            <p>
                                                                Ngày đặt hàng: ${order.orderDate} <br>
                                                                Phí ship: ${order.shipFee}đ <br>
                                                                Tổng tiền: ${order.finalPrice}đ <br>
                                                            </p>
                                                        </div>
                                                        <br/>
                                                        <a href="OrderDetailController?orderId=${order.orderId}" class="btn btn-outline-primary">Xem chi tiết</a>
                                                        <!-- Thêm nút Hủy nếu đơn hàng đang chờ -->
                                                        <c:if test="${order.status == 1}">
                                                            <a href="CancelOrderController?orderId=${order.orderId}" class="btn btn-outline-danger">Hủy</a>
                                                        </c:if>
                                                        <c:if test="${order.status == 4}">
                                                            <a href="CreateFeedbackController?orderId=${order.orderId}" class="btn btn-outline-danger">Đánh giá</a>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <p>Không tìm thấy đơn hàng nào.</p>
                                </c:otherwise>
                            </c:choose>
                        </div>




                    </div>




                </div>                       









                <!-- 
                 //FOOTER                
                -->   
                <footer class="sticky-footer bg-light" >
                    <div class="container my-auto ">
                        <div class="copyright text-center my-auto " style="color: #093b29" >
                            <span >EMAIL: Onlinebookstore@gmail.com&copy;</span></br></br>
                            <span>ADDRES:  Q9, HCM, VIET NAM&copy;</span></br></br>
                            <span>HOTLINE: 0931 8888 991&copy;</span>
                        </div>
                    </div>
                </footer>
            </div>
        </div>





        <!-- Vendor JS-->
        <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
        <script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
        <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
        <script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="assets/js/plugins/slick.js"></script>
        <script src="assets/js/plugins/jquery.syotimer.min.js"></script>
        <script src="assets/js/plugins/wow.js"></script>
        <script src="assets/js/plugins/jquery-ui.js"></script>
        <script src="assets/js/plugins/perfect-scrollbar.js"></script>
        <script src="assets/js/plugins/magnific-popup.js"></script>
        <script src="assets/js/plugins/select2.min.js"></script>
        <script src="assets/js/plugins/waypoints.js"></script>
        <script src="assets/js/plugins/counterup.js"></script>
        <script src="assets/js/plugins/jquery.countdown.min.js"></script>
        <script src="assets/js/plugins/images-loaded.js"></script>
        <script src="assets/js/plugins/isotope.js"></script>
        <script src="assets/js/plugins/scrollup.js"></script>
        <script src="assets/js/plugins/jquery.vticker-min.js"></script>
        <!-- Template  JS -->
        <script src="./assets/js/main.js?v=3.4"></script>
        <script src="./assets/js/shop.js?v=3.4"></script>
        <script data-cfasync="false" src="js/email-decode.min.js"></script>
        <script src="vendor/jquery/jquery.min.js" type="e83057937dd4e85910db8985-text/javascript"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js" type="e83057937dd4e85910db8985-text/javascript"></script>
        <script src="vendor/jquery-easing/jquery.easing.min.js" type="e83057937dd4e85910db8985-text/javascript"></script>
        <script src="js/osahan.min.js" type="e83057937dd4e85910db8985-text/javascript"></script>
        <script src="js/rocket-loader.min.js" data-cf-settings="e83057937dd4e85910db8985-|49" defer=""></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon='{"rayId":"75c6f93a1e227d56","version":"2022.10.3","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}' crossorigin="anonymous"></script>
        <script src="path/to/your/bundle.js"></script>

    </body>

    <!-- Mirrored from askbootstrap.com/preview/osahan-eat/theme-sidebar/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Oct 2022 05:04:56 GMT -->
</html>
