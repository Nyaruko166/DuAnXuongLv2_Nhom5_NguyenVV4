<%--
  ~ Copyright (c) 2023. Nyaruko.
  --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--<c:set var="url">${pageContext.request.contextPath}</c:set>--%>
<html>
<head>
    <title>Chi Tiết Sản Phẩm</title>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<h1 class="text-center">Chi Tiết Sản Phẩm</h1>
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
                    <form:radiobutton name="flexRadioDefault" id="flexRadioDefault1" class="form-check-input"
                                      path="trangThai"
                                      value="1" checked="true"/>
                    <label class="form-check-label" for="flexRadioDefault1">
                        Còn Hoạt Động
                    </label>
                </div>
            </div>
            <div class="col-6">
                <div class="form-check">
                    <form:radiobutton name="flexRadioDefault" id="flexRadioDefault2" class="form-check-input"
                                      path="trangThai"
                                      value="0"/>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Ngừng Hoạt Động
                    </label>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <form:label path="chatLieu" class="form-label">Chất Liệu:</form:label>
                <form:select class="form-select" aria-label="Default select example" path="chatLieu">
                    <form:options items="${lstCL}" itemValue="id" itemLabel="ten"/>
                </form:select>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <form:label path="sanPham" class="form-label">Sản Phẩm:</form:label>
                <form:select class="form-select" aria-label="Default select example" path="sanPham">
                    <form:options items="${lstSP}" itemValue="id" itemLabel="ten"/>
                </form:select>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <form:label path="mauSac" class="form-label">Màu Sắc:</form:label>
                <form:select class="form-select" aria-label="Default select example" path="mauSac">
                    <form:options items="${lstMS}" itemValue="id" itemLabel="ten"/>
                </form:select>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <form:label path="loaiSanPham" class="form-label">Loại Sản Phẩm:</form:label>
                <form:select class="form-select" aria-label="Default select example" path="loaiSanPham">
                    <form:options items="${lstLoai}" itemValue="id" itemLabel="ten"/>
                </form:select>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <form:label path="nsx" class="form-label">NSX:</form:label>
                <form:select class="form-select" aria-label="Default select example" path="nsx">
                    <form:options items="${lstNSX}" itemValue="id" itemLabel="ten"/>
                </form:select>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <form:label path="kichCo" class="form-label">Kích Cỡ:</form:label>
                <form:select class="form-select" aria-label="Default select example" path="kichCo">
                    <form:options items="${lstKC}" itemValue="id" itemLabel="ten"/>
                </form:select>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <form:label path="thietKe" class="form-label">Thiết Kế:</form:label>
                <form:select class="form-select" aria-label="Default select example" path="thietKe">
                    <form:options items="${lstTK}" itemValue="id" itemLabel="ten"/>
                </form:select>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <form:label path="formDang" class="form-label">Form Dáng:</form:label>
                <form:select class="form-select" aria-label="Default select example" path="formDang">
                    <form:options items="${lstFD}" itemValue="id" itemLabel="ten"/>
                </form:select>
            </div>
        </div>
    </div>
    <div class="col-md-12 text-center">
        <button type="submit" class="btn btn-success">Thêm</button>
        <a href="http://localhost:25565/ctsp" class="btn btn-success">Reset</a>
    </div>
</form:form>
<form action="/ctsp/excel/import" method="post" enctype="multipart/form-data" class="container">
    <div class="mb-3">
        <label for="excel" class="form-label">Excel:</label>
        <input type="file" class="form-control" id="excel" name="excel" value="hate my life"
               accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">
    </div>
    <div class="col-md-12 text-center">
        <button type="submit" class="btn btn-success">Import</button>
    </div>
</form>
<section class="container">

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
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</body>
</html>