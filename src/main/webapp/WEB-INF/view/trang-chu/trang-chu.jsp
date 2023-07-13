<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../../resource/css/trangchu.css" rel="stylesheet">
    <link href="../../../resource/css/trangchu1.css" rel="stylesheet">
<%--    <link href="resource/css/trangchu1.css" rel="stylesheet">--%>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet">

<%--    <link href="../../../resource/css/cssgiaodien/trangchu1.css">--%>
</head>

<body>

<div class="app">
    <header id="header">
        <!-- header top -->
        <div class="header__top">
            <div class="container">
                <section class="row flex">
                    <div class="col-lg-5 col-md-0 col-sm-0 heade__top-left">
                        <span>Routine - Quần áo sáng tạo</span>
                    </div>

                    <nav class="col-lg-7 col-md-0 col-sm-0 header__top-right">
                        <ul class="header__top-list">
                            <li class="header__top-item">
                                <a href="#" class="header__top-link">

                                    Hỏi đáp</a>
                            </li>
                            <li class="header__top-item">
                                <a href="#" class="header__top-link">Hướng dẫn</a>
                            </li>
                            <li class="header__top-item">
                                <a href="#" class="header__top-link">Đăng ký</a>
                            </li>
                            <li class="header__top-item">
                                <a href="#" class="header__top-link">Đăng nhập</a>
                            </li>
                        </ul>
                    </nav>
                </section>
            </div>
        </div>
        <!--end header top -->

        <!-- header bottom -->
        <div class="header__bottom">
            <div class="container">
                <section class="row">
                    <div class="col-lg-3 col-md-4 col-sm-12 header__logo">
                        <h1 class="header__heading">
                            <a href="#" class="header__logo-link">
                                <img src="https://routine.vn/media/logo/websites/1/ezgif-7-ee007e6332a0_2x.png" alt="Logo" class="header__logo-img">
                            </a>
                        </h1>
                    </div>

                    <div class="col-lg-6 col-md-7 col-sm-0 header__search">
                        <select name="" id="" class="header__search-select">
                            <option value="0">All</option>
                            <option value="1">Quần</option>
                            <option value="2">Áo</option>
                            <option value="3">Quần-áo</option>

                        </select>
                        <input type="text" class="header__search-input" placeholder="Tìm kiếm tại đây...">
                        <button class="header__search-btn">
                            <div class="header__search-icon-wrap">
                                <i class="fas fa-search header__search-icon"></i>
                            </div>
                        </button>
                    </div>

                    <div class="col-lg-2 col-md-0 col-sm-0 header__call">
                        <div class="header__call-icon-wrap">
                            <i class="fas fa-phone-alt header__call-icon"></i>
                        </div>
                        <div class="header__call-info">
                            <div class="header__call-text">
                                Gọi điện tư vấn
                            </div>
                            <div class="header__call-number">
                                039.882.3232
                            </div>
                        </div>
                    </div>

                    <a href="cart.html" class="col-lg-1 col-md-1 col-sm-0 header__cart">
                        <div class="header__cart-icon-wrap">
                            <span class="header__notice">4</span>
                            <i class="fas fa-shopping-cart header__nav-cart-icon"></i>
                        </div>
                    </a>
                </section>
            </div>
        </div>
        <!--end header bottom -->

        <!-- header nav -->
        <div class="header__nav">
            <div class="container">
                <section class="row">
                    <div class="header__nav-menu-wrap col-lg-3 col-md-0 col-sm-0">
                        <i class="fas fa-bars header__nav-menu-icon"></i>
                        <div class="header__nav-menu-title">Danh mục sản phẩm</div>
                    </div>

                    <div class="header__nav col-lg-9 col-md-0 col-sm-0">
                        <ul class="header__nav-list">
                            <li class="header__nav-item">
                                <a href="index.html" class="header__nav-link">Trang chủ</a>
                            </li>
                            <li class="header__nav-item">
                                <a href="category.html" class="header__nav-link">Danh mục sản phẩm</a>
                            </li>
                            <li class="header__nav-item">
                                <a href="product.html" class="header__nav-link">Sản phẩm</a>
                            </li>
                            <li class="header__nav-item">
                                <a href="post.html" class="header__nav-link">Bài viết</a>
                            </li>
                            <li class="header__nav-item">
                                <a href="#" class="header__nav-link">Tuyển cộng tác viên</a>
                            </li>
                            <li class="header__nav-item">
                                <a href="contact.html" class="header__nav-link">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
    </header>
    <!--end header nav -->

    <!-- slide - menu list -->
    <section class="menu-slide">
        <div class="container">
            <div class="row">
                <nav class="menu__nav col-lg-3 col-md-12 col-sm-0">
                    <ul class="menu__list">
                        <li class="menu__item menu__item--active">
                            <a href="#" class="menu__link">
                                <img src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/1/0/10s23psh021-beige-blue-quan-short-nam_1__1.jpg" alt=""  class="menu__item-icon"  enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                                Quần </a>
                        </li>
                        <li class="menu__item">
                            <a href="#" class="menu__link">
                                <img src="https://routine.vn/media/catalog/product/cache/5de180fdba0e830d350bd2803a0413e8/1/0/10s23tss079_black-ao-thun-nam_1__1.jpg" alt="" class="menu__item-icon"  enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                                Áo</a>
                        </li>

                    </ul>
                </nav>

                <div class="slider col-lg-9 col-md-12 col-sm-0">
                    <div class="row">
                        <div class="slide__left col-lg-8 col-md-0 col-sm-0">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">

                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="https://routine.vn/media/catalog/category/thoi-trang-nam-mung-sinh-nhat-routine-10-tuoi.jpg" class="d-block w-100" alt="...">
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end slide menu list -->
    <!-- score-top-->


    <!-- bestselling product -->
    <section class="bestselling">
        <div class="container">
            <div class="row">
                <div class="bestselling__heading-wrap">
                    <img src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/1/0/10s23shs015_banana_crepe-ao-so-mi-nam_6__1.jpg" alt="Sản phẩm bán chạy"
                         class="bestselling__heading-img">
                    <div class="bestselling__heading">Top bán chạy nhất tuần</div>
                </div>
            </div>


            <section class="row">
                <c:forEach items="${lstCTSP}" var="ctsp">
                    <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                        <div class="bestselling__product-img-box">
                            <img src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/a/o/ao-polo-nam-10s23pol063_evegreen_3__1.jpg"  class="bestselling__product-img">
                        </div>
                        <div class="bestselling__product-text">
                            <h3 class="bestselling__product-title">
                                <a href="#" class="bestselling__product-link">${ctsp.sanPham.ten}</a>
                            </h3>

                            <div class="bestselling__product-rate-wrap">
                                <i class="fas fa-star bestselling__product-rate"></i>
                                <i class="fas fa-star bestselling__product-rate"></i>
                                <i class="fas fa-star bestselling__product-rate"></i>
                                <i class="fas fa-star bestselling__product-rate"></i>
                                <i class="fas fa-star bestselling__product-rate"></i>
                            </div>

                            <span class="bestselling__product-price">
                            ${ctsp.giaBan}đ
                        </span>

                            <div class="bestselling__product-btn-wrap">
                                <a href="/trang-chu/detail/${ctsp.id}" class="bestselling__product-btn">Xem hàng</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </section>

            <%--            <div class="row bestselling__banner">--%>

            <%--                <div class="bestselling__banner-left col-lg-6">--%>
            <%--                    <img src="images1/banner/920x420_phienchodocu.png" alt="Banner quảng cáo"--%>
            <%--                         class="bestselling__banner-left-img">--%>
            <%--                </div>--%>
            <%--                <div class="bestselling__banner-right col-lg-6">--%>
            <%--                    <img src="images1/banner/muonkiepnhansinh_resize_920x420.jpg" alt="Banner quảng cáo"--%>
            <%--                         class="bestselling__banner-right-img">--%>
            <%--                </div>--%>
            <%--            </div>--%>
        </div>
    </section>

    <!-- end bestselling product -->

    <!-- product -->
    <section class="product">
        <div class="container">
            <div class="row">
                <aside class="product__sidebar col-lg-3 col-md-0 col-sm-12">
                    <div class="product__sidebar-heading">
                        <div class=""></div>
                        <h2 class="product__sidebar-title">
                            <img src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/a/o/ao-so-mi-nam-10s23shs004_ballad_blue_4__1.jpg" alt="" class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                            Clothes</h2>
                    </div>

                    <nav class="product__sidebar-list">

                        <div class="row">
                            <div class="product__sidebar-item col-lg-6">
                                <a href="" class="product__sidebar-item-name">Manga</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <a href="" class="product__sidebar-item-name">Xếp hạng</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <a href="" class="product__sidebar-item-name">Quần Áo nước ngoài</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <a href="" class="product__sidebar-item-name">Quần áo Việt Nam</a>
                            </div>
                        </div>
                    </nav>

                    <div class="product__sidebar-img-wrap">
                        <!-- <img src="images1/product/Demon Slayer_ Kimetsu no Yaiba - Assista na Crunchyroll.png" width="255" height="350" alt=""> -->
                        <img style="width: 255px;height: 300px" src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/r/o/routine.men.559_1.jpg">
                        <!-- <img src="images/banner_7.jpg" alt="" class="product__sidebar-img"> -->
                    </div>
                </aside>

                <article class="product__content col-lg-9 col-md-12 col-sm-12">
                    <nav class="row">
                        <ul class="product__list hide-on-mobile">
                            <li class="product__item product__item--active">
                                <a href="#" class="product__link">Quần áo nam đẹp</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Quần cọc</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Quần dài</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Áo Phông</a>
                            </li>
                        </ul>

                        <div class="product__title-mobile">
                            <h2>Hành động - Phiêu lưu</h2>
                        </div>
                    </nav>

                    <div class="row product__panel">
                        <c:forEach items="${lstCTSP}" var="ctsp">

                        <div class="product__panel-item col-lg-3 col-md-4 col-sm-6">
                            <div class="product__panel-item-wrap">
                                <div class="product__panel-img-wrap">
                                    <img src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/a/o/ao-thun-nam-10s23tss047-black-_2_.jpg" alt="" class="product__panel-img">
                                </div>
                                <h3 class="product__panel-heading">
                                    <a href="product.html" class="product__panel-link">${ctsp.sanPham.ten}</a>
                                </h3>
                                <div class="product__panel-rate-wrap">
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                </div>

                                <div class="product__panel-price">
                                    <span class="product__panel-price-old">
                                        ${ctsp.giaBan}đ
                                    </span>
                                    <span class="product__panel-price-current">
                                        ${ctsp.giaNhap}đ
                                    </span>
                                </div>

                            </div>
                        </div>
                        </c:forEach>

                </article>
            </div>
        </div>
    </section>
    <!--end product -->

    <!-- product love -->
    <section class="product__love">
        <div class="container">
            <div class="row bg-white">
                <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                    <h2 class="product__love-heading">
                        Có thể bạn thích
                    </h2>
                </div>
            </div>
            <div class="row bg-white">
                <c:forEach items="${lstCTSP}" var="ctsp">
                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                    <div class="product__panel-img-wrap">
                        <img src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/1/0/10f20dpa100cr2_black-quan-jean-nam_7__1.jpg" alt="" class="product__panel-img">
                    </div>
                    <h3 class="product__panel-heading">
                        <a href="#" class="product__panel-link">${ctsp.sanPham.ten}</a>
                    </h3>
                    <div class="product__panel-rate-wrap">
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                    </div>

                    <div class="product__panel-price">
                        <span class="product__panel-price-old product__panel-price-old-hide">
                                ${ctsp.giaBan}đ
                        </span>
                        <span class="product__panel-price-current">
                                   ${ctsp.giaNhap}đ
                        </span>
                    </div>
                </div>
                </c:forEach>
    </section>
    <!--end product love -->

    <!-- post -->
    <section class="posts">
        <div class="container">
            <header class="row posts__title">
                <div class="posts__title-wrap col-lg-12 col-md-12 col-sm-12">
                    <h2 class="posts__heading">
                        Tin tức - Bài viết
                    </h2>
                </div>
            </header>
            <article class="row posts__list">
                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img" >
                        <img src="https://routine.vn/media/catalog/product/cache/5de180fdba0e830d350bd2803a0413e8/q/u/quan-short-nam-10s23psh003-london-fog-_2__1.jpg" width="80%">
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="" class="posts__item-title">
                            Mẹo săn mã voucher giảm giá tại Edu Book
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        28/05/2020
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                Nguyễn Nhung
                            </div>
                        </div>
                    </div>
                    <div class="posts__item-description">
                        Nếu bạn đang gặp phải những vấn đề về săn, lấy, sử dụng mã voucher của EduBook. Xin hãy yên tâm, bài viết này
                        dành cho bạn! Trong bài viết này mình sẽ chia sẻ đến bạn những mẹo, những kinh nghiệm giúp bạn săn được nhiều
                        mã giảm giá EduBook nhất có thể.....
                    </div>
                </div>

                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img">
                        <img src="https://routine.vn/media/catalog/product/cache/5de180fdba0e830d350bd2803a0413e8/q/u/quan-short-nam-10s23psh003-london-fog-_2__1.jpg">
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="" class="posts__item-title">
                            Cách phân biệt sách thật, giả chính xác
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        05/06/2020
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                Trung Trần
                            </div>
                        </div>
                    </div>
                    <div class="posts__item-description">
                        Để các độc giả, phụ huynh, học sinh và các thầy cô giáo… không mua phải các loại sách tham khảo giả, sách in lậu,
                        mình sẽ hướng dẫn cách phân biệt sách thật, giả nhanh chóng và chính xác. Nếu bạn chú ý quan sát một xíu là có thể
                        phân biệt được sách giả ngay. Với sách giả khi cầm trên tay sẽ có cảm giác mềm hơn, không cứng và chắc tay như sách thật...
                    </div>
                </div>

                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img">
                        <img src="https://routine.vn/media/catalog/product/cache/5de180fdba0e830d350bd2803a0413e8/q/u/quan-short-nam-10s23psh003-london-fog-_2__1.jpg">
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="#" class="posts__item-title">
                            Sử dụng mã giảm giá Edu Book như thế nào
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        26/05/2020
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                Tùng Lương
                            </div>
                        </div>
                    </div>
                    <div class="posts__item-description">
                        Sau khi lấy được mã rồi thì tất nhiên bạn phải biết cách sử dụng nó rồi. Về cơ bản thì EduBook cho phép bạn sử dụng cùng
                        lúc 3 loại mã giảm giá mà mình đã kể trên trong cùng 1 đơn hàng. Bao gồm:
                        Mã FreeShip,
                        Mã giảm giá của Shop,
                        Và Ưu đãi từ đối tác thanh toán,....
                    </div>
                </div>

                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img">
                        <img src="https://routine.vn/media/catalog/product/cache/5de180fdba0e830d350bd2803a0413e8/q/u/quan-short-nam-10s23psh003-london-fog-_2__1.jpg">
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="" class="posts__item-title">
                            Hướng dẫn đổi trả sách, hoàn tiền Edu Book
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        22/05/2020
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                Nguyễn Nhung
                            </div>
                        </div>
                    </div>
                    <div class="posts__item-description">
                        Mua hàng trên Edu Book nhưng sản phẩm bạn nhận được không giống hình, sản phẩm bị lỗi. Bạn nghĩ mình bị lừa, bạn bối rối không biết
                        làm thế nào và quyết định search google: “Phải làm gì khi muốn hoàn trả hàng hoàn tiền trên Edu Book”.  Bài viết này sẽ hướng dẫn
                        bạn đổi trả sách EduBook đúng quy trình...
                    </div>
                </div>
            </article>
            <article class="row posts__view">
                <a href="post.html" class="posts__view-btn">Xem thêm</a>
            </article>
        </div>
    </section>
    <!-- end post -->


    <!-- footer -->
    <footer>
        <section class="footer__top">
            <div class="container">
                <div class="row">
                    <article class="footer__top-intro col-lg-5 col-md-4 col-sm-6">
                        <h4 class="footer__top-intro-heading">
                            Về chúng tôi
                        </h4>
                        <div class="footer__top-intro-content">
                            Edubook là cửa hàng luôn cung cấp cho các bạn tìm tòi tri thức, đam mê
                            đọc sách trên khắp cả nước.Chúng tôi sẽ liên tục cập
                            nhật những cuốn sách hay nhất, mới nhất, chất lượng nhất
                            giúp người đọc có những cuốn sách hay nhất để đọc! <br> <br>
                            Điện thoại: 0352 860 701 <br>
                            Email: teamed2@gmail.com <br>
                            Zalo:  039.882.3232 <br>
                        </div>
                    </article>

                    <article class="footer__top-policy col-lg-3 col-md-4 col-sm-6">
                        <h4 class="footer__top-policy-heading">
                            Chính sách mua hàng
                        </h4>

                        <ul class="footer__top-policy-list">
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Hình thức đặt hàng</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Hình thức thanh toán</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Phương thức vận chuyển</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Chính sách đổi trả</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Hướng dẫn sử dụng</a>
                            </li>
                        </ul>
                    </article>

                    <article class="footer__top-contact-wrap col-lg-4 col-md-4 col-sm-6">
                        <h4 class="footer__top-contact-heading">
                            Hotline liên hệ
                        </h4>

                        <div class="footer__top-contact">
                            <div class="footer__top-contact-icon">
                                <img src="images/phone_top.png" class="footer__top-contact-img">
                            </div>

                            <div class="footer__top-contact-phone-wrap">
                                <div class="footer__top-contact-phone">
                                    039.882.3232
                                </div>
                                <div class="footer__top-contact-des">
                                    (Giải đáp thắc mắc 24/24)
                                </div>
                            </div>
                        </div>

                        <h4 class="footer__top-contact-heading">
                            Kết nối với chúng tôi
                        </h4>

                        <div class="footer__top-contact-social">
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="images/facebook.png">
                            </a>
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="images/youtube.png">
                            </a>
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="images/tiktok.png">
                            </a>
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="images/zalo.png">
                            </a>
                        </div>
                    </article>
                </div>
            </div>
        </section>
        <section class="footer__bottom">
            <div class="container">
                <div class="row">
                    <span class="footer__bottom-content">@Bản quyền thuộc về edubook | Thiết kế bởi team ED2 </span>
                </div>
            </div>
        </section>
    </footer>
    <!-- end footer -->
</div>
</body>
</html>