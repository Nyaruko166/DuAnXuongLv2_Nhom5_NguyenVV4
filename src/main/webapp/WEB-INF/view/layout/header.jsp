<%--
  ~ Copyright (c) 2023. Nyaruko.
  --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--<c:set var="url">${pageContext.request.contextPath}</c:set>--%>
<!-- ============================================================== -->
<!-- Topbar header - style you can find in pages.scss -->
<!-- ============================================================== -->
<header class="topbar" data-navbarbg="skin5">
    <nav class="navbar top-navbar navbar-expand-md navbar-dark">
        <div class="navbar-header" data-logobg="skin6">
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <a class="navbar-brand" href="dashboard.html">
                <!-- Logo icon -->
                <b class="logo-icon">
                    <!-- Dark Logo icon -->
                    <img src="/resource/plugins/images/logo-icon.png" alt="homepage"/>
                </b>
                <!--End Logo icon -->
                <!-- Logo text -->
                <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="/resource/plugins/images/logo-text.png" alt="homepage"/>
                        </span>
            </a>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
               href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
        </div>
        <!-- ============================================================== -->
        <!-- End Logo -->
        <!-- ============================================================== -->
        <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
            <ul class="navbar-nav d-none d-md-block d-lg-none">
                <li class="nav-item">
                    <a class="nav-toggler nav-link waves-effect waves-light text-white"
                       href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </li>
            </ul>
            <!-- ============================================================== -->
            <!-- Right side toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav ms-auto d-flex align-items-center">

                <!-- ============================================================== -->
                <!-- Search -->
                <!-- ============================================================== -->
                <li class=" in">
                    <form role="search" class="app-search d-none d-md-block me-3">
                        <input type="text" placeholder="Search..." class="form-control mt-0">
                        <a href="" class="active">
                            <i class="fa fa-search"></i>
                        </a>
                    </form>
                </li>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
                <li>
                    <a class="profile-pic" href="#">
                        <img src="/resource/plugins/images/users/admin.png" alt="user-img" width="36" height="36"
                             class="img-circle"><span class="text-white font-medium">Nyaruko166</span></a>
                </li>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
            </ul>
        </div>
    </nav>
</header>
<!-- ============================================================== -->
<!-- End Topbar header -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Left Sidebar - style you can find in sidebar.scss -->
<!-- ============================================================== -->
<aside class="left-sidebar" data-sidebarbg="skin6">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <!-- User Profile-->
                <li class="sidebar-item pt-2 nav-item dropdown dropend">

                    <a class="sidebar-link waves-effect waves-dark sidebar-link dropdown-toggle" role="button"
                       data-bs-toggle="dropdown"
                       href="#"
                       aria-expanded="false">
                        <i class="fa-solid fa-shirt"></i>
                        <span class="hide-menu">Chi Tiết Sản Phẩm</span>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>

                    <%--                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"--%>
                    <%--                       aria-expanded="false">--%>
                    <%--                        Dropdown--%>
                    <%--                    </a>--%>
                    <%--                    <ul class="dropdown-menu">--%>
                    <%--                        <li><a class="dropdown-item" href="#">Action</a></li>--%>
                    <%--                        <li><a class="dropdown-item" href="#">Another action</a></li>--%>
                    <%--                        <li>--%>
                    <%--                            <hr class="dropdown-divider">--%>
                    <%--                        </li>--%>
                    <%--                        <li><a class="dropdown-item" href="#">Something else here</a></li>--%>
                    <%--                    </ul>--%>

                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/hoa-don"
                       aria-expanded="false">
                        <i class="fa-solid fa-file-invoice-dollar"></i>
                        <span class="hide-menu">Hoá Đơn</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/tai-khoan"
                       aria-expanded="false">
                        <i class="fa-solid fa-circle-user"></i>
                        <span class="hide-menu">Tài Khoản</span>
                    </a>
                </li>
                <%--                Mẫu thêm tab vào side bar--%>
                <%--                <li class="sidebar-item">--%>
                <%--                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/country"--%>
                <%--                       aria-expanded="false">--%>
                <%--                        <i class="fa-solid fa-earth-africa"></i>--%>
                <%--                        <span class="hide-menu">Thống kê quốc gia</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
            </ul>

        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>