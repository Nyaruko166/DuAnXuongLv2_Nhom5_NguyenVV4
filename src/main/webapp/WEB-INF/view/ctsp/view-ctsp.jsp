<%--
  ~ Copyright (c) 2023. Nyaruko.
  --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--<c:set var="url">${pageContext.request.contextPath}</c:set>--%>
<html>
<head>
    <title>Bootstrap demo</title>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<form action="/lab12/on-tap/add" method="post" class="container">
    <div class="mb-3">
        <label for="id" class="form-label">ID:</label>
        <input type="text" class="form-control" id="id" name="id">
    </div>
    <div class="mb-3">
        <label for="ten" class="form-label">Tên:</label>
        <input type="text" class="form-control" id="ten" name="ten">
    </div>
    <div class="mb-3">
        <label for="diem" class="form-label">Điểm:</label>
        <input type="text" class="form-control" id="diem" name="diem">
    </div>
    <div class="col-md-12 text-center">
        <button type="submit" class="btn btn-success">Thêm</button>
        <a href="http://localhost:27325" class="btn btn-success">Trang Chủ</a>
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

    <table class="table table-striped table-hover text-center">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col"></th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${lst}" var="x">
            <tr>
                <td>${x.sa}</td>
                <td>${x.sa}</td>
                <td>${x.sa}</td>
                <td>${x.sa}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
<%--    <nav aria-label="Page navigation example">--%>
<%--        <ul class="pagination">--%>
<%--            <li class="page-item ${page.getNumber() + 1 > 1 ? '' : 'disabled'}">--%>
<%--                <a class="page-link" href="?page=${page.getNumber()}">Previous</a>--%>
<%--            </li>--%>
<%--            <li class="page-item"><p class="page-link">${page.getNumber() + 1} / ${page.getTotalPages()}</p></li>--%>
<%--            <c:forEach begin="0" end="${page.totalPages -1}" varStatus="loop">--%>
<%--                <li class="page-item">--%>
<%--                    <a class="page-link" href="?page=${loop.begin + loop.count}">--%>
<%--                            ${loop.begin + loop.count }--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </c:forEach>--%>
<%--            <li class="page-item ${page.getNumber() + 1 lt page.getTotalPages() ? '' : 'disabled'}">--%>
<%--                <a class="page-link" href="?page=${page.getNumber() + 2}">Next</a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--    </nav>--%>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</body>
</html>