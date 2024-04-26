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
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/imgs/theme/favicon.svg">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/main.css?v=3.4">
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
                                 //SHOW THONG TIN Cart
                    -->  
                    <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block">
                        <nav>
                            <ul>
                                <c:forEach var="category" items="${listCategory}">
                                    <li>
                                        <a href="SubCateController?cateId=${category.categoryID}">${category.categoryName} <i class="fi-rs-angle-down"></i></a>
                                        <ul class="sub-menu">
                                            <c:forEach var="subCategory" items="${listSubCategory}">
                                                <c:if test="${subCategory.categoryId == category.categoryID}">
                                                    <li>
                                                        <a href="ListBookController?cateId=${category.categoryID}&subId=${subCategory.subcategoryID}">
                                                            ${subCategory.subName}
                                                        </a>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                </c:forEach>
                            </ul>
                        </nav>
                    </div>


                    <form class="field_form shipping_calculator" action="AddOrderController" method="GET">
                        <section class="mt-50 mb-50">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="table-responsive">
                                            <table class="table shopping-summery text-center clean">
                                                <thead>
                                                    <tr class="main-heading">
                                                        <th scope="col">Hình ảnh</th>
                                                        <th scope="col">Tên sách</th>
                                                        <th scope="col">Giá</th>
                                                        <th scope="col">Số lượng</th>
                                                        <th scope="col">Xóa khỏi giỏ hàng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="bookEntry" items="${cart.cart}">
                                                        <tr>
<<<<<<< HEAD
                                                            <td class="image product-thumbnail">
                                                                <c:forEach var="blist" items="${blist}">
                                                                    <c:if test="${bookEntry.value.bookId == blist.getBookId()}">
                                                                        <img class="card-img-top" src="${blist.getUrl()}" alt="..." />
                                                                    </c:if>
                                                                </c:forEach>
                                                            </td>
=======
                                                            <td class="image product-thumbnail"><img src="assets/imgs/shop/product-1-2.jpg" alt="#"></td>
>>>>>>> d6964513119860b95525848888c7cfde96785b63
                                                            <td class="product-des product-name">
                                                                <h5 class="product-name"><a href="shop-product-right.html">${bookEntry.value.bookName}</a></h5>
                                                                <p class="font-xs">${bookEntry.value.authorName}<br> ${bookEntry.value.publishingCompany}
                                                                </p>
                                                            </td>
                                                            <td class="price" data-title="Price"><span>${bookEntry.value.unitPrice}đ </span></td>
                                                            <td class="text-center" data-title="Stock">
                                                                <a href="QuantityBookCartController?bookId=${bookEntry.value.bookId}&quantity=-1" class="qty-down"><i class="fi-rs-angle-small-down"></i></a>
                                                                <span class="qty-val">${bookEntry.value.quantity}</span>
                                                                <a href="QuantityBookCartController?bookId=${bookEntry.value.bookId}&quantity=1" class="qty-up"><i class="fi-rs-angle-small-up"></i></a>
                                                                    <c:if test="${not empty errorMessage}">
                                                                    <div class="alert alert-danger">
                                                                        <strong>Error:</strong> ${errorMessage}
<<<<<<< HEAD
                                                                    </div>
                                                                </c:if>
                                                            </td>
                                                            <td class="action" data-title="Remove"><a href="DeleteBookCartController?bookId=${bookEntry.value.bookId}" class="text-muted"><i class="fi-rs-trash"></i></a></td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="divider center_icon mt-50 mb-50"><i class="fi-rs-fingerprint"></i></div>
                                        <div class="row mb-50">
                                            <div class="col-lg-6 col-md-12">
                                                <div class="heading_s1 mb-3">
                                                    <h4>Giao hàng</h4>
                                                </div>
                                                <p class="mt-15 mb-30">Phí ship: <span class="font-xl text-brand fw-900">50000đ</span></p>
                                                <form class="field_form shipping_calculator">
                                                    <div class="form-row">
                                                        <div class="form-group col-lg-12">
                                                            <div class="custom_select">
                                                                <select class="form-control" name = "recipientID">
                                                                    <c:forEach var="recipient" items="${listRecipient}">
                                                                        <option value="${recipient.recipientID}">
                                                                            Địa chỉ giao hàng: ${recipient.destAddress}, 
                                                                            Tên người nhận: ${recipient.recipientName},
                                                                            Số điện thoại: 0${recipient.phoneNumber}
                                                                        </option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-row">
                                                        <div class="form-group col-lg-12">
                                                            <a href="createRecipient.jsp" class="btn  btn-sm"><i class="fi-rs-shuffle mr-10"></i>Thêm địa chỉ giao hàng</a>
                                                        </div>
                                                    </div>
                                                </form>
                                                <div class="mb-30 mt-50">
                                                    <div class="heading_s1 mb-3">
                                                        <h4>Apply Coupon</h4>
                                                    </div>
                                                    <div class="total-amount">
                                                        <div class="left">
                                                            <div class="coupon">
                                                                <form action="#" target="_blank">
                                                                    <div class="form-row row justify-content-center">
                                                                        <div class="form-group col-lg-6">
                                                                            <input class="font-medium" name="Coupon" placeholder="Enter Your Coupon">
                                                                        </div>
                                                                        <div class="form-group col-lg-6">
                                                                            <button class="btn  btn-sm"><i class="fi-rs-label mr-10"></i>Apply</button>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <div class="border p-md-4 p-30 border-radius cart-totals">
                                                    <div class="heading_s1 mb-3">
                                                        <h4>Giỏ hàng</h4>
                                                    </div>
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <tbody>
                                                                <tr>
                                                                    <td class="cart_total_label">Giá sản phẩm</td>
                                                                    <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">${cart.getTotalMoney()}đ</span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="cart_total_label">Phí Ship</td>
                                                                    <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">50000đ</span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="cart_total_label">Đơn giá</td>
                                                                    <td class="cart_total_amount"><strong><span class="font-xl fw-900 text-brand">${cart.getTotalMoney() + 50000}đ</span></strong></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <button type="submit" class="btn"> 
                                                        <i class="fi-rs-box-alt mr-10"></i> CheckOut
                                                    </button>
                                                </div>
=======
                                                                    </div>
                                                                </c:if>
                                                            </td>
                                                            <td class="action" data-title="Remove"><a href="DeleteBookCartController?bookId=${bookEntry.value.bookId}" class="text-muted"><i class="fi-rs-trash"></i></a></td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="divider center_icon mt-50 mb-50"><i class="fi-rs-fingerprint"></i></div>
                                        <div class="row mb-50">
                                            <div class="col-lg-6 col-md-12">
                                                <div class="heading_s1 mb-3">
                                                    <h4>Giao hàng</h4>
                                                </div>
                                                <p class="mt-15 mb-30">Phí ship: <span class="font-xl text-brand fw-900">50000đ</span></p>
                                                <form class="field_form shipping_calculator">
                                                    <div class="form-row">
                                                        <div class="form-group col-lg-12">
                                                            <div class="custom_select">
                                                                <select class="form-control" name = "recipientID">
                                                                    <c:forEach var="recipient" items="${listRecipient}">
                                                                        <option value="${recipient.recipientID}">
                                                                            Địa chỉ giao hàng: ${recipient.destAddress}, 
                                                                            Tên người nhận: ${recipient.recipientName},
                                                                            Số điện thoại: 0${recipient.phoneNumber}
                                                                        </option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-row">
                                                        <div class="form-group col-lg-12">
                                                            <a href="createRecipient.jsp" class="btn  btn-sm"><i class="fi-rs-shuffle mr-10"></i>Thêm địa chỉ giao hàng</a>
                                                        </div>
                                                    </div>
                                                </form>


                                                <div class="mb-30 mt-50">
                                                    <div class="heading_s1 mb-3">
                                                        <h4>Bạn có: ${bupsen} búp sen. Bạn có muốn sử dụng không?</h4>
                                                    </div>

                                                    <!-- Checkbox to choose whether to use "búp sen" -->
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" name="useBupSen" value="yes">
                                                        <label class="form-check-label" for="useBupSen">Sử dụng búp sen</label>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <div class="border p-md-4 p-30 border-radius cart-totals">
                                                    <div class="heading_s1 mb-3">
                                                        <h4>Giỏ hàng</h4>
                                                    </div>
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <tbody>
                                                                <tr>
                                                                    <td class="cart_total_label">Giá sản phẩm</td>
                                                                    <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">${cart.getTotalMoney()}đ</span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="cart_total_label">Phí Ship</td>      
                                                                    <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">50000đ</span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="cart_total_label">Phương thức thanh toán</td>
                                                                    <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">Tiền mặt</span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="cart_total_label">Đơn giá</td>
                                                                    <td class="cart_total_amount"><strong><span class="font-xl fw-900 text-brand">${cart.getTotalMoney() + 50000}đ</span></strong></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <button type="submit" class="btn"> 
                                                        <i class="fi-rs-box-alt mr-10"></i> CheckOut
                                                    </button>
                                                </div>
>>>>>>> d6964513119860b95525848888c7cfde96785b63
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </form>





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
