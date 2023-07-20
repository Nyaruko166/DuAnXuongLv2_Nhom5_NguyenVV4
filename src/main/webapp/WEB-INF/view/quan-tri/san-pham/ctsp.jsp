<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  ~ Copyright (c) 2023. Nyaruko.
  --%>

<%--<c:set var="url">${pageContext.request.contextPath}</c:set>--%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
          content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
          content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Chi Tiết Sản phẩm</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/"/>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="resource/plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="resource/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
     data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
    <%@include file="../../layout/header.jsp" %>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb bg-white">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Quản Trị Chi Tiết Sản Phẩm</h4>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
                    <form action="/ctsp/import" method="post" enctype="multipart/form-data">
                        <div class="row">
<%--                            <label for="excel" class="form-label" style="font-weight: bold">Excel: </label>--%>
                            <div class="col-6">
                                <input type="file" class="form-control" id="excel" name="excel" value="hate my life"
                                       accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">
                            </div>
                            <div class="col-6">
                                <button type="submit"
                                        class="btn btn-success">Import From Excel
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <a href="/ctsp/view-add" class="btn btn-info text-center">
                        <i class="fa-solid fa-plus"></i>Tạo Sản Phẩm
                    </a>
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">
                            <c:if test="${not empty mess}">
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    <strong>${mess}</strong>
                                    <a class="btn-close" data-bs-dismiss="alert" aria-label="Close"
                                       style="margin: 0"></a>
                                </div>
                            </c:if>

                            <c:if test="${not empty err}">
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <strong>${err}</strong>
                                    <a class="btn-close" data-bs-dismiss="alert" aria-label="Close"
                                       style="margin: 0"></a>
                                </div>
                            </c:if>
                        </h3>
                        <%--                        <p class="text-muted">Add class <code>.table</code></p>--%>
                        <div class="table-responsive">
                            <table class="table text-nowrap text-center">
                                <thead>
                                <tr>
                                    <th class="border-top-0">#</th>
                                    <th class="border-top-0">Mã</th>
                                    <th class="border-top-0">Tên Sản Phẩm</th>
                                    <th class="border-top-0">Số Lượng</th>
                                    <th class="border-top-0">Giá Bán</th>
                                    <th class="border-top-0">Ngày Tạo</th>
                                    <th class="border-top-0">Trạng Thái</th>
                                    <th class="border-top-0">Thao Tác</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${page.getContent()}" var="x" varStatus="y">
                                    <tr>
                                        <td>${y.count}</td>
                                        <td>${x.ma}</td>
                                        <td>${x.sanPham.ten}</td>
                                        <td>${x.soLuong}</td>
                                        <td>${x.giaBan}</td>
                                        <td>${x.ngayTao}</td>
                                        <td>${x.trangThai}</td>
                                        <td>
                                            <a href="/ctsp/detail/${x.id}">
                                                <i class="fa-solid fa-circle-info"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-end">
                                <li class="page-item ${page.getNumber() + 1 > 1 ? '' : 'disabled'}">
                                    <a class="page-link" href="?page=${page.getNumber()}">Previous</a>
                                </li>
                                <li class="page-item"><p class="page-link">${page.getNumber() + 1}
                                    / ${page.getTotalPages()}</p></li>
                                <%--            <c:forEach begin="0" end="${page.totalPages -1}" varStatus="loop">--%>
                                <%--                <li class="page-item">--%>
                                <%--                    <a class="page-link" href="?page=${loop.begin + loop.count}">--%>
                                <%--                            ${loop.begin + loop.count }--%>
                                <%--                    </a>--%>
                                <%--                </li>--%>
                                <%--            </c:forEach>--%>
                                <li class="page-item ${page.getNumber() + 1 lt page.getTotalPages() ? '' : 'disabled'}">
                                    <a class="page-link" href="?page=${page.getNumber() + 2}">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End PAge Content -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right sidebar -->
            <!-- ============================================================== -->
            <!-- .right-sidebar -->
            <!-- ============================================================== -->
            <!-- End Right sidebar -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <%@include file="../../layout/footer.jsp" %>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<script>
    // Khi người dùng chọn file, cập nhật tên file vào nhãn custom-file-label
    document.getElementById("importFile").addEventListener("change", function () {
        var fileName = document.getElementById("importFile").value.split("\\").pop();
        document.querySelector(".custom-file-label").textContent = fileName;
    });
</script>
<script src="resource/plugins/bower_components/jquery/dist/jquery.min.js"></script>
<script src="resource/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="resource/s/app-style-switcher.js"></script>
<script src="resource/js/waves.js"></script>
<script src="resource/js/sidebarmenu.js"></script>
<script src="resource/js/custom.js"></script>
<script src="https://kit.fontawesome.com/1943ac9f5b.js" crossorigin="anonymous"></script>

</body>

</html>