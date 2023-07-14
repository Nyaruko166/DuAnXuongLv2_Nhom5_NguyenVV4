<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../resource/css/detail.css">
    <link rel="stylesheet" href="../../../resource/css/detail1.css">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet">
</head>

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

<style>
    .product {
        background: #f7f7f7;
        padding: 3rem 0;
    }

    .product__main {

    }

    .product__main-img {

    }

    .product__main-img-primary {
        margin-bottom: 1.6rem;
    }

    .product__main-img-primary img{
        width: 100%;
    }

    .product__main-img-list {
        display: flex;
        flex-wrap: wrap;
    }

    .product__main-img-list img{
        width: 30%;
        margin-bottom: 2rem;
        margin-right: 0.6rem;

    }

    .product__main-img-list img:hover{
        border: 1px solid #efefef;
    }

    .product__main-img-list img:first-child{
        border: 1px solid #efefef;

    }

    .product__main-info {

    }

    .product__main-info-breadcrumb {
        font-size: 1.4rem;
        color: var(--primary-color);
    }

    .product__main-info-title {
        margin: 1.4rem 0;
        text-decoration: none;
        display: block;
    }

    .product__main-info-title:hover{
        text-decoration: none;
        color: var(--text-color);
    }

    .product__main-info-title:hover .product__main-info-heading{
        color: var(--black-color);
    }


    .product__main-info-heading {
        color: #333;
        font-weight: 400;
        font-size: 2.2rem;
    }

    .product__main-info-rate-wrap {

    }

    .product__main-info-rate {
        color: var(--primary-color);
        font-size: 1rem;
    }

    .product__main-info-price {

    }

    .product__main-info-price-current {
        color: var(--primary-color);
        font-size: 2.4rem;
        font-weight: 500;
    }

    .product__main-info-description {
        color: #333;
        font-size: 1.4rem;
        margin: 1.2rem 0;
    }

    .product__main-info-cart {
        display: flex;
        align-items: center;
    }

    .product__main-info-cart-quantity {
        font-size: 1.4rem;
        margin-right: 4rem;
    }

    .product__main-info-cart-quantity-minus {
        width: 2rem;
        height: 3rem;
        outline: none;
    }

    .product__main-info-cart-quantity-total {
        width: 3rem;
        height: 3rem;
        margin-left: -0.5rem;
        outline: none;
        text-align: center;

    }

    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    input[type=number] {
        -moz-appearance: textfield;
    }

    .product__main-info-cart-quantity-plus {
        width: 2rem;
        height: 3rem;
        margin-left: -0.5rem;
        outline: none;
    }

    .product__main-info-cart-btn-wrap {

    }

    .product__main-info-cart-btn {
        width: 16.6rem;
        height: 3rem;
        background: #ff0000;
        color: var(--white-color);
        border-radius: 0.2rem;
        outline: none;
        font-size: 1.5rem;
        border: none;
        cursor: pointer;
    }

    .product__main-info-contact {
        margin: 3rem 0;
        display: flex;
        justify-content: space-between;
    }

    .product__main-info-contact-fb {
        font-size: 1.6rem;
        text-transform: uppercase;
        background: #1e73be;
        color: var(--white-color);
        height: 5rem;
        border-radius: 0.2rem;
        width: 46%;
        font-weight: 500;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .product__main-info-contact-fb:hover{
        color: var(--white-color);
        text-decoration: none;
        opacity: 0.9;
    }

    .product__main-info-contact-fb i{
        font-size: 2.2rem;
        color: var(--white-color);
        margin-right: 1rem;
    }

    .product__main-info-contact-phone-wrap {
        width: 48%;
        text-align: center;

        background: #f00;
        color: var(--white-color);
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 0.2rem;
    }

    .product__main-info-contact-phone-icon i{
        font-size: 2.2rem;
        color: var(--white-color);
        margin-right: 1rem;
    }

    .product__main-info-contact-phone {

    }

    .product__main-info-contact-phone-title {
        font-size: 1.6rem;
        font-weight: 500;
    }

    .product__main-info-contact-phone-number {
        font-size: 1.4rem;
    }

    /**/

    .product__main-tab{
        height: 4rem;
        background: #efefef;
        margin-top: 4rem;
        padding: 0;
    }

    .product__main-tab-link {
        font-size: 1.6rem;
        font-weight: bold;
        display: inline-block;
        padding: 0.8rem 2.6rem;
        color: var(--text-color);
    }

    .product__main-tab-link:hover{
        color: var(--text-color);
        text-decoration: none;
        opacity: 0.9;
    }


    .product__main-tab-link--active{
        background: #ff0000;
        color: var(--white-color);
    }

    .product__main-tab-link--active:hover{
        opacity: 0.9;
        color: var(--white-color);
    }

    .product__main-content-wrap{
        padding-top: 2rem;
    }

    .product__main-content-heading{
        font-size: 2.2rem;
        color: var(--primary-color);
        text-align: center;
        margin-bottom: 2.2rem;
    }

    .product__main-content-wrap p{
        font-size: 1.5rem;
        color: #666;
        line-height: 2.2rem;
        word-spacing: 0.1rem;
        margin-bottom: 2rem;
    }

    .product__main-content-wrap h3{
        font-size: 1.8rem;
        color: var(--primary-color);
        text-align: center;
        margin-top: 3.2rem;
        margin-bottom: 1.8rem;
    }

    .product__main-content-wrap span{
        color: var(--primary-color);
        font-size: 1.4rem;
        font-weight: 500;
    }



    /*aside*/

    .product__aside {

    }

    .product__aside-top {

    }

    .product__aside-top-item {
        display: flex;
        align-items: center;
        margin: 2rem 0 4rem;
    }

    .product__aside-top-item img {
        margin-right: 1rem;
    }

    .product__aside-top-item-text {

    }

    .product__aside-top-item-text p {
        font-size: 1.8rem;
        color: var(--text-color);
        margin: 0;
        font-weight: 500;
    }

    .product__aside-top-item-text span {
        font-size: 1.6rem;
        color: var(--text-color);
    }

    /*aside bottom*/
    /*post aside*/

    .product__aside {

    }

    .product__aside-top {

    }

    .product__aside-title {

    }

    .product__aside-heading {

    }

    .product__aside-list {
        margin: 1.4rem 0;
    }

    .product__aside-item {
        display: flex;
        justify-content: center;
        align-items: center;
        /*margin-bottom: 2.4rem;

    }*/
        padding: 1rem 0;
        border-bottom: 1px solid #EFEFF1;
    }

    .product__aside-item--no-border{
        border: none;
        padding: 0;
        margin-bottom: 2rem;
    }

    .product__aside-img-wrap {
        width: 30%;
    }

    .product__aside-img {
        max-width: 80%;
    }

    .product__aside-title {
        flex: 1;
    }

    .product__aside-link {
        font-size: 1.5rem;
        color: var(--text-color);
        text-decoration: none;
        display: block;
        margin-bottom: 1.4rem;
        height: 3.6rem;
        align-items: center;
        transition: 0.2s;
    }

    .product__aside-link:hover{
        color: var(--black-color);
        text-decoration: none;
    }

    .product__aside-link-heading {
        font-weight: 400;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        text-overflow: ellipsis;
        overflow: hidden;
        transition: 0.2s;
        height: 3.6rem;
    }

    /**/
    .product__aside-rate-wrap {

    }

    .product__aside-rate {
        font-size: 1rem;
        color: var(--primary-color);
        margin-bottom: 0.6rem;
    }

    .product__aside-price {

    }

    .product__aside-price-current {
        font-size: 1.6rem;
        color: var(--primary-color);
        font-weight: 500;
    }


    /*product love*/
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

    .product__love .row{
        background: var(--white-color);
        margin: 0 -2rem;
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

    }

    .product__panel-img-wrap{
        width: 100%;
        height: 16.8rem;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .product__panel-img{
        max-width: 100%;
    }

    .product__panel-heading {

    }

    .product__panel-link {
        font-size: 1.5rem;
        color: var(--text-color);
        text-decoration: none;
        font-weight: 400;
        display: block;
        margin-top: 1.5rem;
        transition: 0.2s;

    }

    .product__panel-link:hover{
        color: var(--black-color);
        text-decoration: none;
    }
    .product__panel-rate-wrap {

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



    .pc{
        position: relative;
    }

    .menu__nav{
        position: absolute;
        top: -3rem;
        left: 0;
        z-index: 10;
        box-shadow: 1px 1px 5px 1px #ccc;
        display: none;
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
        width: 1.6rem;
        height: 1.6rem;
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
        display: block;
        padding: 1rem 2.8rem;
        text-decoration: none;
        border-top: 1px solid #eff0f3;
        background: var(--white-color);
        background-clip: padding-box;
        display: flex;
        align-items: center;
    }

    @media (max-width:992px){
        .product__aside{
            display: none;
        }

    }

    @media (max-width:768px){
        .hide-on-mobile{
            display: none;
        }
    }

    @media (min-width:768px){

    }


    /* Phần thông tin chi tiết*/
    .thongtin{

    }
    .table-responsive{

        overflow-x: auto;
    }
    .table {
        color: #333;
        width: 100%;
        max-width: 100%;
        background-color: transparent;
        border-spacing: 0;
        border-collapse: collapse;
        box-sizing: border-box;
    }
    .table-bordered{
        border-width: 0px;
        border-style: initial;
        border-color: initial;
        border-image: initial;
        font-size: 1.5rem;
        font-weight: 400;
    }
    .table-bordered td{
        padding: 8px;
        font-size: 1.5rem;

    }
    .table-bordered th{
        padding: 8px;
        font-size: 1.5rem;
    }

    /* Phần đánh giá khách hàng*/
    .customer-reviews{
        font-size: 1.5rem;
    }
    .customer-reviews__heading{
        font-size: 1.6rem;
        font-weight: 500;
        color: var(--primary-color);
    }
    .jyDngn {
        padding: 32px 48px;
        display: flex;
        border-top: 1px solid rgb(242, 242, 242);
    }
    .customer-reviews{
        background-color: rgb(255, 255, 255);
        margin-top: 10px;
        display: block;
    }
    .customer-reviews h3 {
        color: var(--primary-color);
    }
    .customer-reviews  button{
        height: 28.75px;
        width: 41.2px;

        border: none;
        display: inline-block;
        font-weight: 400;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        padding: 0.375rem 0.75rem;
        font-size: 1.5rem;
        line-height: 1.5;
        border-radius: 0.25rem;
    }
    .form-group{
        margin-bottom: 1rem;
        font-size: 2.0rem;
        font-weight: 500;
        color: #333;
    }
    .form-group label{
        font-size: 1.5rem;
    }
    button, input {
        overflow: visible;
    }
    .form-control {
        transition: none;
        display: block;
        width: 100%;
        height: calc(2.5rem + 2px);
        padding: 0.375rem 0.75rem;
        font-size: 1.5rem;
        line-height: 1.5;
        color: #495057;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #ced4da;
        border-radius: 0.25rem;
    }
    .product-comment{
        background-color: rgb(255, 255, 255);
        margin-top: 10px;
        display: block;

    }
    ol, ul, dl {
        margin-top: 0;
        margin-bottom: 1rem;
    }
    .comment-item b{

        font-size: 1.9rem;
        font-weight: 500;

    }
    .comment-item-user{
        align-items: center;
        display: flex;
    }
    .comment-item-user-img{
        width: 48px;
        height: 48px;
        border-radius: 50%;
    }
    .comment-item-user li b {
        margin: 10px;
    }
    .comment-item li{
        list-style: none;
        font-size: 1.5rem;
        font-weight: 300;
        font-size: 1.5rem;
        color: #666;
        line-height: 2.2rem;

    }
    .comment-item h4{
        font-size: 1.5rem;
        color: #666;
        line-height: 2.2rem;
        word-spacing: 0.1rem;
        margin-bottom: 2rem;
        font-weight:400 ;

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

                    <a href="/gio-hang/hien-thi" class="col-lg-1 col-md-1 col-sm-0 header__cart">
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
            </div>
        </div>
    </section>
    <!-- end slide menu list -->
    <!-- score-top-->

    <div class="row container" style="margin-top: 30px">

        <div class="product__main-img col-lg-4 col-md-4 col-sm-12">
            <div class="product__main-img-primary">
                <img style="width: 75%;margin-left: 90px;" src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/a/o/ao-polo-nam-10s23pol063_evegreen_3__1.jpg">
            </div>

        </div>

        <div class="product__main-info col-lg-8 col-md-8 col-sm-12">
            <div class="product__main-info-breadcrumb">
                Trang chủ / Sản phẩm
            </div>

            <div class="product__main-info-rate-wrap">
                <i class="fas fa-star product__main-info-rate"></i>
                <i class="fas fa-star product__main-info-rate"></i>
                <i class="fas fa-star product__main-info-rate"></i>
                <i class="fas fa-star product__main-info-rate"></i>
                <i class="fas fa-star product__main-info-rate"></i>
            </div>

            <div class="product__main-info-price">
                                <span class="product__main-info-price-current" style="color: black;font-size: medium">
                                   Tên Sản Phẩm: ${ctsp.sanPham.ten}-${ctsp.sanPham.ma}
                                </span>
            </div>

            <br>
            <br>
            <div class="product__main-info-price">
                                <span class="product__main-info-price-current" >
                                  ${ctsp.giaBan}đ
                                </span>
            </div>

            <br> <br>
            <div class="product__main-info-price">
                                <span class="product__main-info-price-current" style="color: black;font-size: medium">
                                   Chất Liệu: ${ctsp.chatLieu.ten}
                                </span>
            </div>
            <br>
            <div class="product__main-info-price">
                                <span class="product__main-info-price-current" style="color: black;font-size: medium">
                                  Form Dáng: ${ctsp.formDang.ten}
                                </span>
            </div>

            <br>

            <div class="product__main-info-price">
                <label style="font-weight: 500;
    font-size: 16px;" for="size">Size:</label>
                <select style="font-size: 17px" id="size" name="size">
                    <option value="small">Small</option>
                    <option value="medium">Medium</option>
                    <option value="large">Large</option>
                </select>
            </div>

            <br>

            <div class="product__main-info-price">
                <label  style="font-weight: 500;
    font-size: 16px;" for="quantity">Số lượng:</label>
                <input type="number" style="font-size: 17px" id="quantity" name="quantity" min="1" max="100">
            </div>

            <br>




            <div class="product__main-info-cart" style="display: flex">

                <a href="/add-to-cart/${ctsp.id}" class="product__main-info-cart-btn-wrap">
                    <button class="product__main-info-cart-btn">
                        Thêm vào giỏ hàng
                    </button>
                </a>
            </div>

            <div class="product__main-info-contact">
                <a href="#" class="product__main-info-contact-fb">
                    <i class="fab fa-facebook-f"></i>
                    Chat Facebook
                </a>
                <div class="product__main-info-contact-phone-wrap">
                    <div class="product__main-info-contact-phone-icon">
                        <i class="fas fa-phone-alt "></i>
                    </div>

                    <div class="product__main-info-contact-phone">
                        <div class="product__main-info-contact-phone-title">
                            Gọi điện tư vấn
                        </div>
                        <div class="product__main-info-contact-phone-number">
                            ( 0352.860.701)
                        </div>
                    </div>

                </div>

            </div>
            <div class="product__main-info-contact" >
                <ul class="product-info-feature" style="display: flex">
                    <li>
                        <div class="icon"><img src="https://routine.vn/static/version1687799448/frontend/Magenest/routine/vi_VN/images/ghn.png" alt="Giao hàng nhanh"></div>
                        <div class="text"><strong>Giao hàng nhanh</strong>
                            <p>Từ 2 - 5 ngày</p>
                        </div>
                    </li>
                    <li>
                        <div class="icon"><img src="https://routine.vn/static/version1687799448/frontend/Magenest/routine/vi_VN/images/free.png" alt="Freeship toàn quốc từ 399k"></div>
                        <div class="text"><strong>Miễn phí vận chuyển</strong>
                            <p>Đơn hàng từ 399K</p>
                        </div>
                    </li>
                    <li>
                        <div class="icon"><img src="https://routine.vn/static/version1687799448/frontend/Magenest/routine/vi_VN/images/order.png" alt="Theo dõi đơn hàng dễ dàng"></div>
                        <div class="text"><strong>Theo dõi đơn hàng <br>một cách dễ dàng</strong></div>
                    </li>
                    <li>
                        <div class="icon"><img src="https://routine.vn/static/version1687799448/frontend/Magenest/routine/vi_VN/images/returns.png" alt="Đổi trả tận nơi"></div>
                        <div class="text"><strong>Đổi trả linh hoạt</strong>Với sản phẩm sale &lt; 30%</div>
                    </li>
                    <li>
                        <div class="icon"><img src="https://routine.vn/static/version1687799448/frontend/Magenest/routine/vi_VN/images/pay.png" alt="Thanh toán dễ dàng"></div>
                        <div class="text"><strong>Thanh toán dễ dàng <br>nhiều hình thức</strong></div>
                    </li>
                    <li>
                        <div class="icon"><img src="https://routine.vn/static/version1687799448/frontend/Magenest/routine/vi_VN/images/hotline.png" alt="Hotline hỗ trợ Routine"></div>
                        <div class="text"><strong>Hotline hỗ trợ</strong>
                            <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">039 9999 365</font></font></h3>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

    </div>
    <!--end product -->

    <!-- product love -->
    <%--    <section class="product__love">--%>
    <%--        <div class="container">--%>
    <%--            <div class="row bg-white">--%>
    <%--                <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">--%>
    <%--                    <h2 class="product__love-heading">--%>
    <%--                        Có thể bạn thích--%>
    <%--                    </h2>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--            <div class="row bg-white">--%>
    <%--                <c:forEach items="${lstCTSP}" var="ctsp">--%>
    <%--                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">--%>
    <%--                    <div class="product__panel-img-wrap">--%>
    <%--                        <img src="https://routine.vn/media/catalog/product/cache/d0cf4470db45e8932c69fc124d711a7e/1/0/10f20dpa100cr2_black-quan-jean-nam_7__1.jpg" alt="" class="product__panel-img">--%>
    <%--                    </div>--%>
    <%--                    <h3 class="product__panel-heading">--%>
    <%--                        <a href="#" class="product__panel-link">${ctsp.sanPham.ten}</a>--%>
    <%--                    </h3>--%>
    <%--                    <div class="product__panel-rate-wrap">--%>
    <%--                        <i class="fas fa-star product__panel-rate"></i>--%>
    <%--                        <i class="fas fa-star product__panel-rate"></i>--%>
    <%--                        <i class="fas fa-star product__panel-rate"></i>--%>
    <%--                        <i class="fas fa-star product__panel-rate"></i>--%>
    <%--                        <i class="fas fa-star product__panel-rate"></i>--%>
    <%--                    </div>--%>

    <%--                    <div class="product__panel-price">--%>
    <%--                        <span class="product__panel-price-old product__panel-price-old-hide">--%>
    <%--                                ${ctsp.giaBan}đ--%>
    <%--                        </span>--%>
    <%--                        <span class="product__panel-price-current">--%>
    <%--                                   ${ctsp.giaNhap}đ--%>
    <%--                        </span>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--                </c:forEach>--%>
    <%--    </section>--%>
    <!--end product love -->

    <!-- post -->

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