<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap Table with Search Column Feature</title>
    <link href="../../../resource/css/gio-hang.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            // Activate tooltips
            $('[data-toggle="tooltip"]').tooltip();

            // Filter table rows based on searched term
            $("#search").on("keyup", function() {
                var term = $(this).val().toLowerCase();
                $("table tbody tr").each(function(){
                    $row = $(this);
                    var name = $row.find("td:nth-child(2)").text().toLowerCase();
                    console.log(name);
                    if(name.search(term) < 0){
                        $row.hide();
                    } else{
                        $row.show();
                    }
                });
            });
        });
    </script>
</head>
<body>
<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Customer <b>Details</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <div class="search-box">
                            <div class="input-group">
                                <input type="text" id="search" class="form-control" placeholder="Search by Name">
                                <span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <table class="table">
                <thead>
                <tr>
                    <td>Tên sản phẩm</td>
                    <td>Chất liệu</td>
                    <td>Màu sắc</td>
                    <td>loại SP</td>
                    <td>NSX</td>
                    <td>Kích cỡ</td>
                    <td>Thiết kế</td>
                    <td>Form dáng</td>
                    <td>Số lượng</td>
                    <td>Đơn giá</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listItem}" var="gh">
                    <tr>
                        <td>${gh.tenSanPham}</td>
                        <td>${gh.tenChatLieu}</td>
                        <td>${gh.tenMauSac}</td>
                        <td>${gh.tenLoaiSanPham}</td>
                        <td>${gh.tenNsx}</td>
                        <td>${gh.tenKichCo}</td>
                        <td>${gh.tenThietKe}</td>
                        <td>${gh.tenFormDang}</td>
                        <td>${gh.soLuong}</td>
                        <td>${gh.donGia}</td>
                        <td>
                            <a href="/gio-hang/remove-item/${gh.idCtsp}" class="btn btn-primary">Xoá</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <c:if test="${!empty listItem}">
                <h4>Tổng giá: ${tongGia}VNĐ</h4>
                <a href="/gio-hang/dat-hang" class="btn btn-success">Đặt hàng</a>
            </c:if>
        </div>
    </div>
</div>
</body>
</html>