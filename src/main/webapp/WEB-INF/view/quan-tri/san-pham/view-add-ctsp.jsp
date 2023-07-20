<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>Tạo Sản Phẩm</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/"/>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/resource/plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="/resource/css/style.min.css" rel="stylesheet">
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
                    <h4 class="page-title">Thêm sản phẩm mới</h4>
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
                                <button type="submit" title="Ấn vào để chọn file excel để import"
                                        class="btn btn-success">Import From Excel
                                </button>
                            </div>
                        </div>
                    </form>
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
                            <form:form method="post" action="/ctsp/add" modelAttribute="ctsp" class="container">
                                <div class="mb-3">
                                    <form:label path="ma" class="form-label">Mã:</form:label>
                                    <form:input path="ma" class="form-control"/>
                                </div>
                                <div class="mb-3">
                                    <form:label path="moTa" class="form-label">Mô Tả:</form:label>
                                    <form:input path="moTa" class="form-control"/>
                                </div>
                                <div class="mb-3">
                                    <form:label path="soLuong" class="form-label">Số Lượng:</form:label>
                                    <form:input path="soLuong" class="form-control"/>
                                </div>
                                <div class="mb-3">
                                    <form:label path="giaNhap" class="form-label">Giá Nhập:</form:label>
                                    <form:input path="giaNhap" class="form-control"/>
                                </div>
                                <div class="mb-3">
                                    <form:label path="giaBan" class="form-label">Giá Bán:</form:label>
                                    <form:input path="giaBan" class="form-control"/>
                                </div>
                                <div class="mb-3">
                                    <form:label class="form-label" path="trangThai">Trạng Thái:</form:label>
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-check">
                                                <form:radiobutton name="flexRadioDefault" id="flexRadioDefault1"
                                                                  class="form-check-input"
                                                                  path="trangThai"
                                                                  value="1" checked="true"/>
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    Kinh Doanh
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-check">
                                                <form:radiobutton name="flexRadioDefault" id="flexRadioDefault2"
                                                                  class="form-check-input"
                                                                  path="trangThai"
                                                                  value="0"/>
                                                <label class="form-check-label" for="flexRadioDefault2">
                                                    Ngừng Kinh Doanh
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <form:label path="chatLieu" class="form-label">Chất Liệu:</form:label>
                                            <form:select class="form-select" aria-label="Default select example"
                                                         path="chatLieu">
                                                <form:options items="${lstCL}" itemValue="id" itemLabel="ten"/>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <form:label path="sanPham" class="form-label">Sản Phẩm:</form:label>
                                            <form:select class="form-select" aria-label="Default select example"
                                                         path="sanPham">
                                                <form:options items="${lstSP}" itemValue="id" itemLabel="ten"/>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <form:label path="mauSac" class="form-label">Màu Sắc:</form:label>
                                            <form:select class="form-select" aria-label="Default select example"
                                                         path="mauSac">
                                                <form:options items="${lstMS}" itemValue="id" itemLabel="ten"/>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <form:label path="loaiSanPham"
                                                        class="form-label">Loại Sản Phẩm:</form:label>
                                            <form:select class="form-select" aria-label="Default select example"
                                                         path="loaiSanPham">
                                                <form:options items="${lstLoai}" itemValue="id" itemLabel="ten"/>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <form:label path="nsx" class="form-label">NSX:</form:label>
                                            <form:select class="form-select" aria-label="Default select example"
                                                         path="nsx">
                                                <form:options items="${lstNSX}" itemValue="id" itemLabel="ten"/>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <form:label path="kichCo" class="form-label">Kích Cỡ:</form:label>
                                            <form:select class="form-select" aria-label="Default select example"
                                                         path="kichCo">
                                                <form:options items="${lstKC}" itemValue="id" itemLabel="ten"/>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <form:label path="thietKe" class="form-label">Thiết Kế:</form:label>
                                            <form:select class="form-select" aria-label="Default select example"
                                                         path="thietKe">
                                                <form:options items="${lstTK}" itemValue="id" itemLabel="ten"/>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="mb-3">
                                            <form:label path="formDang" class="form-label">Form Dáng:</form:label>
                                            <form:select class="form-select" aria-label="Default select example"
                                                         path="formDang">
                                                <form:options items="${lstFD}" itemValue="id" itemLabel="ten"/>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="btn btn-success">Thêm</button>
                                    <a href="http://localhost:25565/ctsp" class="btn btn-success">Quay Trở Lại</a>
                                </div>
                            </form:form>
                        </div>
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
<script src="/resource/plugins/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/resource/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resource/s/app-style-switcher.js"></script>
<script src="/resource/js/waves.js"></script>
<script src="/resource/js/sidebarmenu.js"></script>
<script src="/resource/js/custom.js"></script>
<script src="https://kit.fontawesome.com/1943ac9f5b.js" crossorigin="anonymous"></script>

</body>

</html>