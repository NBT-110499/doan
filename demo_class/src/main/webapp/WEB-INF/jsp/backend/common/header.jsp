<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" %>
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-md-4 clearfix">
                    <div class="logo pull-left">
                        <a href="/"><img src="/images/home/logo.png" alt="" /></a>
                    </div>
                    <div class="btn-group pull-right clearfix">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                <spring:message code="title.language"/>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="/home?lang=en">English</a></li>
                                <li><a href="/home?lang=vi">Tiếng Việt</a></li>
                            </ul>
                        </div>

<%--                        <div class="btn-group">--%>
<%--                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">--%>
<%--                                DOLLAR--%>
<%--                                <span class="caret"></span>--%>
<%--                            </button>--%>
<%--                            <ul class="dropdown-menu">--%>
<%--                                <li><a href="">Canadian Dollar</a></li>--%>
<%--                                <li><a href="">Pound</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
                    </div>
                </div>
                <div class="col-md-8 clearfix">
                    <div class="shop-menu clearfix pull-right">
                        <div class="btn-group">
                            <sec:authorize access="isAuthenticated()">
                                <button type="button" class="btn btn-default dropdown-toggle usa"
                                        data-toggle="dropdown">
                                    <sec:authentication
                                            property="principal.fullName"></sec:authentication>
                                    <span class="caret"></span>
                                </button>
                                <%--                                                <sec:authentication property="principal.fullName"></sec:authentication>--%>
                                <ul class="dropdown-menu" aria-labelledby="dropdown07XL">
                                    <li><a class="dropdown-item" href="/user/change-pass">Đổi mật
                                        khẩu</a></li>
                                    <li><a class="dropdown-item" href="/backend/product/create2">đăng sản phẩm</a></li>
                                    <li><a class="dropdown-item" href="/listproduct2">sản phẩm đã đăng</a></li>
                                    <li><form action="/sercurity/addCart-form" method="post">
                                            <%--                                        <ư> sffffgf ${user.email}</ư>--%>
                                        <input type="number" name="idUser" value="${user.id}" hidden />
                                        <button type="submit" class="btn btn-fefault cart" >
                                            <i class="fa fa-shopping-cart"></i>
                                            giỏ hàng
                                        </button>
                                    </form></li>
                                    <li><a class="dropdown-item" href="/user/list">danh sách tài khoản</a></li>
                                    <li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
                                </ul>
                            </sec:authorize>
                            <sec:authorize access="!isAuthenticated()">
                                <a class="nav-link" href="/login" style="color:red;"><spring:message
                                        code="title.login"/></a>
                            </sec:authorize>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="/" class="active"><spring:message code="title.home"/></a></li>
                            <li class="dropdown"><a href="#"><spring:message code="title.shop"/><i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="/product"><spring:message code="title.product"/></a></li>
<%--                                    <li><a href="product-details.html">Product Details</a></li>--%>
<%--                                    <li><a href="checkout.html">Checkout</a></li>--%>
<%--                                    <li><a href="cart.html">Cart</a></li>--%>
<%--                                    <li><a href="login.html">Login</a></li>--%>
                                </ul>
                            </li>
<%--                            <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>--%>
<%--                                <ul role="menu" class="sub-menu">--%>
<%--                                    <li><a href="blog.html">Blog List</a></li>--%>
<%--                                    <li><a href="blog-single.html">Blog Single</a></li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
<%--                            <li><a href="404.html">404</a></li>--%>
                            <li><a href="/contact/create"><spring:message code="title.contact"/></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <form action="/backend/product/list2">
                    <div class="search_box pull-right">
<%--                        <input type="text" placeholder="Search"/>--%>
                        <input type="text" name="keyword" id="keyword" size="50"
                               placeholder="Search"/>
                        <input type="submit" value="ok"/>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->