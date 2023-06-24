<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ - EduBook</title>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet">
</head>
<style>
    /*menu + slide*/
    :root{
        --primary-color: #f24137;
        --white-color: #fff;
        --black-color: #000;
        --text-color: #333;
        --border-color: #e5e5e5;
    }

    .menu-slide{
        background: #eff0f3;
    }

    .menu__nav{
        padding: 0;

    }
    .menu__list {
        list-style: none;
        margin: 0;
        padding: 0;
    }
    .menu__item{
        padding-left: .15rem;
    }

    .menu__item-icon{
        width: 3rem;
        height: 3rem;
        display: inline-block;
        margin-right: 1.5rem;
    }
    .menu__item:hover {
        background: var(--primary-color);

    }

    .menu__item:hover .menu__link{
        color: var(--white-color);
        background: var(--primary-color);
        text-decoration: none;
        fill: var(--white-color);
    }

    .menu__item--active .menu__link{
        color: var(--primary-color);
        fill: var(--primary-color);
    }
    .menu__link {
        font-size: 1.5rem;
        font-weight: 500;
        color: var(--text-color);
        color: black;
        display: block;
        padding: 1rem 2.8rem;
        text-decoration: none;
        border-top: 1px solid #eff0f3;
        background: var(--white-color);
        background-clip: padding-box;
        display: flex;
        align-items: center;
    }

    .menu-slide{
        padding-bottom: 2rem;
    }
    .slider {
        display: flex;
        margin-top: 2rem;
    }

    .slide__left {
        margin-right: -0.75rem;
    }

    .slide__left-img {
        max-width: 100%;
        height: 100%;
    }

    .slide__left-top {
        max-width: 100%;
    }

    .slide__left-bottom {
        display: grid;
        margin-top: 2rem;
        grid-template-columns: 48.5% 48.5%;
        grid-column-gap: 1.5rem;
    }

    .slide__left-bottom-one {
        margin-right: 0.75rem;

    }
    .slide__left-bottom-one-img {
        max-width: 100%;
    }

    .slide__left-bottom-tow {
        margin-left: 0.75rem;
    }

    .slide__left-bottom-tow-img {
        max-width: 100%;
    }

    .slide__right {
        margin-left: -0.75rem;
    }

    .slide__right-img {
        max-width: 100%;
        height: 94%;
    }

    /**/

    /*bestselling*/
    .bestselling {
        padding: 4rem 0;
        background: var(--white-color);
    }

    .bestselling__heading-wrap {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        border-bottom: 1px solid var(--border-color);
        padding-bottom: 2rem;

    }

    .bestselling__heading-img {
        width: 4rem;
        height: 4rem;
        margin-right: 1rem;
    }

    .bestselling__heading {
        font-size: 2.4rem;
        font-weight: 500;
        color: var(--primary-color);
        position: relative;
    }

    .bestselling__heading::before{
        content: "";
        position: absolute;
        top: 5.4rem;
        left: 50%;
        display: block;
        width: 10rem;
        height: 0.4rem;
        background: var(--primary-color);
        transform: translateX(-50%);
    }


    .bestselling__product {
        display: flex;
        padding-top: 2rem;
        padding-bottom: 2rem;
        cursor: pointer;
    }

    .bestselling__product-img-box {
        width: 10rem;
        height: 16rem;
        margin-right: 1.5rem;
    }

    .bestselling__product-img {
        max-width: 90%;
        transition: 0.3s;
    }

    .bestselling__product-text {
        flex: 1;
    }

    .bestselling__product-title {

    }

    .bestselling__product-link {
        font-size: 1.5rem;
        color: var(--text-color);
        text-decoration: none;
        display: block;
        margin-bottom: 1.4rem;
        height: 3.6rem;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        text-overflow: ellipsis;
        overflow: hidden;
        transition: 0.2s;
    }

    .bestselling__product-link:hover{
        color: var(--black-color);
        text-decoration: none;
    }
    .bestselling__product-rate-wrap {

    }

    .bestselling__product-rate {
        font-size: 1.4rem;
        color: var(--primary-color);
        margin-bottom: 0.8rem;
    }

    .bestselling__product-price {
        font-size: 1.8rem;
        color: var(--primary-color);
        font-weight: 500;
    }

    .bestselling__product-btn-wrap {

    }

    .bestselling__product-btn {
        width: 10rem;
        height: 3rem;
        border-radius: 0.2rem;
        background: var(--primary-color);
        color: var(--white-color);
        display: flex;
        justify-content: center;
        align-items: center;
        outline: none;
        border: none;
        font-size: 1.4rem;
        font-weight: 500;
        margin: 1rem 0;
        cursor: pointer;
        transition: 0.2s;
    }

    .bestselling__product-btn:hover{
        background: #ff2014;
    }

    .bestselling__banner {
        display: flex;
        justify-content: space-between;
    }

    .bestselling__banner-left {
        flex: 1;
    }

    .bestselling__banner-left-img {
        width: 100%;
    }

    .bestselling__banner-right {
        flex: 1;
    }

    .bestselling__banner-right-img {
        width: 100%;
        margin-right: 0;
    }


    /**/

    .product {
        background: #efefef;
        padding: 3rem 0;
    }

    .product__sidebar {

    }

    .product__sidebar-heading {
        display: flex;
        align-items: center;
        width: 100%;
        height: 4.2rem;
        background: var(--primary-color);
        border-top-left-radius: 4px;
        margin-bottom: 2rem;
    }

    /*.product__sidebar-img {
        width: 3rem;
        height: 4rem;
    }*/

    .product__sidebar-title {
        font-size: 1.8rem;
        color: var(--white-color);
        margin-left: 4rem;
        fill: var(--white-color);
        display: flex;
        align-items: center;
    }

    .product__sidebar-list {
        background: var(--white-color);
        /*display: flex;
        align-items: center;
        justify-content: space-around;*/
        width: 100%;
        padding: 2rem 0.6rem;
    }

    .product__sidebar-item {
        display: inline-block;
        width: 100%;
        text-align: center;
        margin-bottom: 2.4rem;
    }

    .product__sidebar-item-img {
        max-width: 8rem;
        max-height: 8rem;
        transition: 0.3s;
    }

    .product__sidebar-item-name {
        display: block;
        font-size: 1.4rem;
        color: var(--text-color);
        text-decoration: none;
        text-align: center;
        margin-top: 0.8rem;
    }

    .product__sidebar-item-name:hover{
        color: var(--black-color);
        text-decoration: none;
    }


    .product__sidebar-img-wrap{
        margin-top: 2rem;
    }

    .product__sidebar-img{
        width: 100%;
    }

    .product__content {

    }

    .product__list {
        height: 4.2rem;
        list-style: none;
        background: var(--white-color);
        border-top: 1px solid var(--primary-color);
        display: flex;
        align-items: center;
        justify-content: flex-end;
        margin-bottom: 2rem;
        width: 100%;
    }

    .product__item {

    }

    .product__link {
        font-size: 1.4rem;
        font-weight: 500;
        text-decoration: none;
        color: var(--text-color);
        margin-right: 2rem;
        position: relative;
    }

    .product__link:before{
        content: "";
        position: absolute;
        display: block;
        width: 100%;
        height: 0.4rem;
        background: var(--primary-color);
        top: -70%;
        left: 50%;
        transform: translateX(-50%);
        display: none;
        animation: fadeIn ease-in 0.3s;
    }

    .product__item--active .product__link:before{
        content: "";
        position: absolute;
        display: block;
        width: 100%;
        height: 0.4rem;
        background: var(--primary-color);
        top: -70%;
        left: 50%;
        transform: translateX(-50%);
        animation: fadeIn ease-in 0.3s;

    }

    .product__item:hover .product__link{
        color: var(--primary-color);
        text-decoration: none;
    }

    .product__item:hover .product__link:before{
        display: block;
    }

    .row.product__panel-wrap{

    }

    .product__panel{
        display: flex;
        flex-wrap: wrap;
        margin: 0 -2.2rem;
    }

    .product__panel-item{
        margin-bottom: 2rem;
        padding: 0 0.75rem;
        cursor: pointer;
    }
    .product__panel-item-wrap{
        background: var(--white-color);
        padding: 1rem 1.5rem;
        position: relative;
    }

    .product__panel-price-sale-off{
        width: 3.6rem;
        height: 3.6rem;
        border-radius: 50%;
        background: var(--primary-color);
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 1.4rem;
        position: absolute;
        top: 1.4rem;
        left: 1rem;
        color: var(--white-color);
    }

    .product__panel-img-wrap{
        width: 100%;
        height: 16.8rem;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .product__panel-img{
        max-width: 105px;
        transition: 0.3s;
    }

    .product__panel-img:hover,
    .product__sidebar-item-img:hover,
    .bestselling__product-img:hover
    {
        transform: scale(1.1);
    }

    .product__panel-heading {

    }

    .product__panel-link {
        font-size: 1.5rem;
        color: var(--text-color);
        text-decoration: none;
        font-weight: 400;
        display: block;
        margin-top: 3.5rem;
        transition: 0.2s;
        height: 3.8rem;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        text-overflow: ellipsis;
        overflow: hidden;
    }

    .product__panel-link:hover{
        color: var(--black-color);
        text-decoration: none;
    }
    .product__panel-rate-wrap {
        text-align: right;
        margin: 1rem 0;
    }

    .product__panel-rate {
        font-size: 1.4rem;
        color: var(--primary-color);
        margin: 1.2rem 0;
    }

    .product__panel-price {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .product__panel-price-old {
        font-size: 1.4rem;
        color: var(--text-color);
        text-decoration: line-through;
    }

    .product__panel-price-current {
        font-size: 1.6rem;
        color: var(--primary-color);
        font-weight: 500;

    }


    /*product love*/
    section.product__love{
        background: #efefef;
        padding-bottom: 6rem;
    }

    .product__love-title {
        margin: 1.6rem 0;
    }

    .product__love-heading {
        font-size: 1.8rem;
        color: var(--primary-color);
    }

    .product__panel-price-old-hide{
        display: none;
    }


    .product__love .product__panel-item{
        margin-bottom: 2rem;
        cursor: pointer;
        padding: 0 1.6rem;
    }
    /*.product__love .row{
        background: var(--white-color);
    }*/

    /*post*/

    .section.posts {

    }

    .posts__title {

    }

    .posts__title-wrap {

    }

    .posts__heading {
        padding: 3.2rem;
        color: var(--primary-color);
        text-align: center;
        border-bottom: 1px solid #ccc;
        display: block;
        position: relative;
    }

    .posts__heading::before{
        content: "";
        position: absolute;
        top: 100%;
        left: 50%;
        width: 10rem;
        height: 0.3rem;
        background: var(--primary-color);
        transform: translate(-50%,-90%);
    }

    .posts__list {
        margin-top: 0.8rem;
    }

    .posts__item {

    }

    .posts__item-img{
        height: 20rem;
    }

    .posts__item-img img {
        width: 100%;
        max-width: 100%;
        height: 19rem;
    }

    .posts__item-title {
        font-size: 1.5rem;
        color: var(--text-color);
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        text-overflow: ellipsis;
        overflow: hidden;
        height: 4.4rem;
    }

    .posts__item-title:hover{
        color: var(--black-color);
        text-decoration: none;
    }
    .posts__item-date {
        font-size: 1.2rem;
        color: var(--text-color);
    }

    .posts__item-cate-wrap{
        display: flex;
        margin: 0.8rem 0;
    }

    .posts__item-cate {
        display: flex;
        margin-right: 1.6rem;
    }

    .posts__item-cate-icon, .posts__item-cate-ad-icon{
        font-size: 1.5rem;
        color: #888;
        margin-right: 0.5rem;
    }

    .posts__item-cate-name, .posts__item-cate-ad-name {
        font-size: 1.3rem;
        color: var(--text-color);
    }

    .posts__item-cate-ad {
        display: flex;
    }


    .posts__item-description {
        font-size: 1.4rem;
        color: var(--text-color);
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 3;
        text-overflow: ellipsis;
        overflow: hidden;
    }

    .posts__view {
        margin: 3.8rem auto;
        justify-content: center;
    }

    .posts__view-btn {
        padding: 0.6rem 1.8rem;
        background: var(--primary-color);
        color: var(--white-color);
        font-size: 1.3rem;
        border: none;
        outline: none;
        border-radius: 0.2rem;
    }

    .posts__view-btn:hover{
        color: var(--white-color);
        opacity: 0.8;
        text-decoration: none;
    }

    .fex{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    /**/
    .product__title-mobile{
        margin: 0 auto;
        display: none;
    }

    .product__title-mobile h2{
        color: var(--primary-color);
        text-align: center;
        margin-bottom: 2rem;
        font-size: 2.4rem;
    }


    @media (max-width:992px){

        .product__sidebar {
            display: none;
        }

        .menu-slide{
            display: none;
        }


        /*.header__search{
            display: none;
        }*/
    }

    @media (max-width:768px){
        .hide-on-mobile{
            display: none;
        }

        .bestselling__banner{
            display: none;
        }

        .product__title-mobile{
            display: block;
        }
    }

    @media (min-width:768px){

    }

    .main__modal{
        position: fixed;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        animation: fadeIn linear 0.3s;
        z-index: 2;
    }

    .modal__overlay{
        position: absolute;
        width: 100%;
        height: 100%;
        background: red;
        background: rgba(0,0,0,0.6);
        z-index: 10000;
    }

    .modal__body{
        z-index: 10001;
    }

    .sale-off{
        width: 500px;
        border-radius: 5px;
        background: #efefef;
        /*background: url(../images/bg_sale_off.jpg);*/
        background: linear-gradient(#fff,#fafafa);
        background-size: cover;
        overflow: hidden;
        padding: 3rem;
        position: relative;
    }
    .sale-off__container{
        padding-bottom: 22px;
        text-align: center;
    }

    .sale-off__heading{
        color: var(--text-color);
        line-height: 3rem;
        word-spacing: 0.8rem;
        margin-top: 1.4rem;
        font-family: 'Paytone One', sans-serif;
    }

    .sale-off__sp{
        font-size: 3rem;
        color: var(--primary-color);
        font-weight: 700;
    }
    .sale-off__name{
        font-size: 2rem;
        color: var(--text-color);
        font-weight: 700;
    }


    .sale-off__link{
        text-decoration: none;
    }

    .sale-off__btn{
        margin-top: 0.5rem;
        padding: 0.6rem 2rem;
        outline: none;
        border: none;
        box-shadow: inset 0 2rem 2.5rem 0.5rem var(--primary-color);
        color: var(--white-color);
        font-size: 1.6rem;
        border-radius: 0.2rem;
        cursor: pointer;
        transition: 0.3s;
    }

    .sale-off__btn:hover{
        background: var(--primary-color);
    }

    .sale-off__close{
        position: absolute;
        top: 1rem;
        right: 1rem;
        width: 2.4rem;
        height: 2.4rem;
        border: 1px solid #ccc;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 1.6rem;
        color: #666;
        cursor: pointer;
    }

    .sale-off__close-icon{
        fill: #ccc;
    }

</style>

<style>
    :root{
        --primary-color: #f24137;
        --white-color: #fff;
        --black-color: #000;
        --text-color: #333;
        --border-color: #e5e5e5;
    }

    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-size: 62.5%;
    }

    body{
        font-size: 100%;
        font-family: Roboto;
    }
    /* header */
    #header{
        background: var(--primary-color);
    }

    .header__top{
        height: 30px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        background: #ef2317;
    }

    .heade__top-left{
        padding-left: 0;
    }

    .heade__top-left span {
        font-size: 14px;
        color: var(--white-color);
    }

    .header__top-right {
        display: flex;
        align-items: center;
        justify-content: flex-end;
    }

    .header__top-list {
        list-style: none;
        display: flex;
        align-items: center;
        margin: 0;
    }

    .header__top-item {

    }

    .header__top-link {
        color: var(--white-color);
        text-decoration: none;
        font-size: 1.4rem;
        display: block;
        margin-left: 3.5rem;
        transition: 0.2s;
    }

    .header__top-link:hover{
        opacity: 0.8;
        color: #fff;
        text-decoration: none;
    }

    .header__bottom {
        padding: 12px 0;
    }

    .header__logo {
        padding-left: 0;
    }

    .header__heading {

    }

    .header__logo-link {

    }

    .header__logo-img {

    }


    .header__search {
        display: flex;
        align-items: center;
    }


    .header__search-select {
        height: 4rem;
        font-size: 1.4rem;
        font-weight: 500;
        outline: none;
        border: none;
        border-radius: 0.2rem 0 0 0.2rem;
        border-right: 1px solid var(--border-color);
        width: 10%;
        padding: 0 .6rem;
    }

    .header__search-select option{
        font-size: 1.4rem;
        display: inline-block;
        margin: 10px 12px;
    }

    .header__search-input {
        height: 4rem;
        width: 80%;
        font-size: 1.4rem;
        outline: none;
        border: none;
        padding: 0 12px;
    }

    .header__search-btn {
        width: 10%;
        height: 4rem;
        outline: none;
        border: none;
        border-radius: 0 2px 2px 0;
        font-size: 1.4rem;
        background: var(--white-color);
    }

    .header__search-icon-wrap{
        width: 90%;
        height: 3.4rem;
        background: #ef2317;
        border-radius: 2px;
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
        margin-left: .2rem;
    }

    .header__search-icon {
        font-size: 1.4rem;
        color: var(--white-color);
    }


    .header__call {
        display: flex;
        align-items: center;
        padding-right: 0;
    }

    .header__call-icon-wrap {
        margin-right: 1rem;
    }

    .header__call-icon {
        font-size: 2.2rem;
        color: var(--white-color);
    }

    .header__call-info {

    }

    .header__call-text {
        font-size: 13px;
        font-weight: 500;
        color: var(--white-color);
        margin-bottom: 1rem;
    }

    .header__call-number {
        font-size: 1.5rem;
        font-weight: 500;
        color: var(--white-color);
    }

    .header__cart {
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
    }

    .header__cart-icon-wrap {
        position: relative;
    }

    .header__notice{
        display: block;
        width: 24px;
        height: 24px;
        position: absolute;
        top: -70%;
        right: -70%;
        background: #fff;
        color: var(--primary-color);
        font-size: 1.4rem;
        border-radius: 50%;
        border: 2px solid #ef2317;
        display: flex;
        justify-content: center;
        align-items: center;
        font-weight: 400;
    }

    .header__nav-cart-icon {
        font-size: 2rem;
        color: var(--white-color);
    }


    /*header navigation*/
    .header__nav-wrap{
        height: 4.8rem;
        background: #ff5c00;
    }

    .header__nav-menu-wrap{
        height: 4.8rem;
        background: #ef2317;
        display: flex;
        align-items: center;
        border-top-left-radius: 2px;
        border-top-right-radius: 2px;
        /*margin-left: 1.5rem;
        margin-right: -1.5rem;
        padding-right: 0;*/
        cursor: pointer;
    }

    .header__nav-menu-icon {
        font-size: 1.6rem;
        color: var(--white-color);
        margin-right: 1.6rem;
        margin-left: 1.4rem;
    }

    .header__nav-menu-title {
        font-size: 1.6rem;
        font-weight: 500;
        color: var(--white-color);
    }

    .header__nav {
        height: 4.8rem;
    }

    .header__nav-list {
        list-style: none;
        display: flex;
        align-items: center;
        height: 100%;
    }

    .header__nav-item {

    }

    .header__nav-link {
        color: var(--white-color);
        text-decoration: none;
        font-size: 1.5rem;
        font-weight: 500;
        display: block;
        padding-right: 3rem;
        transition: 0.2s;
    }

    .header__nav-link:hover{
        text-decoration: none;
        color: var(--white-color);
        opacity: 0.6;
    }
    /**/
    /* end header */


    /*footer*/
    .footer__top{
        background: #efefef;
        padding: 1.6rem 0;
    }
    .footer__top-intro {

    }

    .footer__top-intro-heading, .footer__top-policy-heading, .footer__top-contact-heading {
        font-size: 1.7rem;
        color: var(--text-color);
        padding: 1.2rem 0;
    }

    .footer__top-intro-content {
        font-size: 1.5rem;
    }

    .footer__top-policy-list {
        list-style: none;
        margin-bottom: 1rem;
    }

    .footer__top-policy-item {

    }

    .footer__top-policy-link {
        font-size: 1.5rem;
        color: var(--text-color);
    }

    .footer__top-policy-link:hover{
        color: var(--text-color);
        opacity: 0.8;
        text-decoration: none;
    }

    .footer__top-contact-wrap {

    }

    .footer__top-contact-heading {

    }

    .footer__top-contact {
        display: flex;
        align-items: center;
        margin-bottom: 2rem;
    }


    .footer__top-contact-icon {
        margin-right: 2.6rem;
    }

    .footer__top-contact-img {

    }

    .footer__top-contact-phone-wrap {

    }

    .footer__top-contact-phone {
        font-size: 1.5rem;
        font-weight: 500;
        color: var(--black-color);
        margin-bottom: 1rem;
    }

    .footer__top-contact-des {
        font-size: 1.3rem;
        color: var(--text-color);
    }

    .footer__top-contact-social-link{
        margin-right: 1rem;
    }

    .footer__bottom {
        height: 3.4rem;
        background: #666;
        text-align: center;
    }

    .footer__bottom-content {
        font-size: 1.4rem;
        color: var(--white-color);
        margin: 0 auto;
        line-height: 3.4rem;
    }


    @media (max-width:992px){
        .header__top{
            display: none;
        }

        .header__nav-menu-wrap{
            display: none;
        }

        /*.header__search{
            display: none;
        }*/

        .header__call{
            display: none;
        }

        .header__search-select{
            display: none;
        }
    }

    @media (max-width:768px){
        .hide-on-mobile{
            display: none;
        }

        .header__search{
            display: none;
        }

        .header__cart{
            display: none;
        }

        .header__nav{
            display: none;
        }

        .header__heading {
            text-align: center;
        }

        .header__logo-img {
            max-width: 10rem;
        }


    }

    @media (min-width:768px){
        .header__logo-img {
            max-width: 100%;
        }
    }


    #myBtn-scroll{

        display: none;
        position: fixed;
        bottom: 20px;
        right: 30px;
        z-index: 99;
        font-size: 18px;
        border: none;
        outline: none;
        background-color: rgba(238, 0, 0,0.5);
        color: white;
        cursor: pointer;
        padding: 15px;
        border-radius: 4px;

    }
    #myBtn-scroll:hover{

        background-color: red;
    }

</style>
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
                                <img src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/1/0/10s23psh021-beige-blue-quan-short-nam_1__1.jpg" alt=""  class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                                Quần </a>
                        </li>
                        <li class="menu__item">
                            <a href="#" class="menu__link">
                                <img src="https://routine.vn/media/catalog/product/cache/5de180fdba0e830d350bd2803a0413e8/1/0/10s23tss079_black-ao-thun-nam_1__1.jpg" alt="" class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
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

    <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></i></button>
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


<script src="js/jq.js"></script>
<script src="js/index.js"></script>
</body>
</html>