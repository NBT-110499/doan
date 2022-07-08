<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include>
<!-- body -->
<body class="main-layout inner_posituong">
<!-- loader  -->

<!-- end loader -->
<!-- header -->
<jsp:include page="/WEB-INF/jsp/backend/common/header.jsp"></jsp:include>

<!-- end header inner -->
<!-- end header -->
<!-- products -->
<div  class="products">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
<%--                    <div class="left-sidebar">--%>
<%--                        <h2><spring:message code="title.category"/></h2>--%>
<%--                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->--%>
<%--                            <c:forEach items="${danhsachCategory}" var="cat">--%>
<%--                                <div class="panel panel-default">--%>
<%--                                    <div class="panel-heading">--%>
<%--                                        <h4 class="panel-title"><a--%>
<%--                                                <c:if test="${category != null && cat.id == category.id}">style="color: red" </c:if>--%>
<%--                                                href="/category/${cat.id}">${cat.name}</a></h4>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </c:forEach>--%>
<%--                        </div><!--/category-products-->--%>
<%--                        <div class="shipping text-center"><!--shipping-->--%>
<%--                            <img src="/images/home/shipping.jpg" alt=""/>--%>
<%--                        </div><!--/shipping-->--%>
<%--                    </div>--%>
                </div>
                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
                        <c:if test="${category == null}">
                            <h2 class="title text-center">Kết Quẩ Tìm Kiếm</h2>
                        </c:if>
                        <c:if test="${category != null}">
                            <h2 class="title text-center">${category.name} </h2>
                        </c:if>
                        <div class="row">
                            <c:forEach items="${listProduct}" var="p">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <a href="/product/${p.id}"><img src="/image/${p.image}" style="width: 200px; height: 200px" alt=""/></a>
                                                <h2>${p.price}Đ</h2>
                                                <p>${p.name}</p>
                                                <a href="/product/${p.id}" class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i><spring:message
                                                        code="title.Addtocart"/></a>
                                            </div>
                                                <%--                                            <div class="product-overlay">--%>
                                                <%--                                                <div class="overlay-content">--%>
                                                <%--                                                    <h2>${p.price}</h2>--%>
                                                <%--                                                    <p>${p.name}</p>--%>
                                                <%--                                                    <a href="#" class="btn btn-default add-to-cart"><i--%>
                                                <%--                                                            class="fa fa-shopping-cart"></i><spring:message--%>
                                                <%--                                                            code="title.Addtocart"></spring:message></a>--%>
                                                <%--                                                </div>--%>
                                                <%--                                            </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div><!--features_items-->
                </div>
            </div>
        </div>
    </section>
    <%--    <div class="container">--%>
    <%--        <div class="row">--%>
    <%--            <div class="col-md-12">--%>
    <%--                <div class="titlepage">--%>
    <%--                    <h2>Our Products</h2>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--        <div class="row">--%>
    <%--            <div class="col-md-12">--%>
    <%--                <div class="our_products">--%>
    <%--                    <div class="row">--%>
    <%--                        <div class="col-md-4 margin_bottom1">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product1.png" alt="#"/></figure>--%>
    <%--                                <h3>Computer</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-4 margin_bottom1">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product2.png" alt="#"/></figure>--%>
    <%--                                <h3>Laptop</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-4 margin_bottom1">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product3.png" alt="#"/></figure>--%>
    <%--                                <h3>Tablet</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-4 margin_bottom1">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product4.png" alt="#"/></figure>--%>
    <%--                                <h3>Speakers</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-4 margin_bottom1">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product5.png" alt="#"/></figure>--%>
    <%--                                <h3>internet</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-4 margin_bottom1">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product6.png" alt="#"/></figure>--%>
    <%--                                <h3>Hardisk</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-4">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product7.png" alt="#"/></figure>--%>
    <%--                                <h3>Rams</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-4">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product8.png" alt="#"/></figure>--%>
    <%--                                <h3>Bettery</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-4">--%>
    <%--                            <div class="product_box">--%>
    <%--                                <figure><img src="/images/product9.png" alt="#"/></figure>--%>
    <%--                                <h3>Drive</h3>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                        <div class="col-md-12">--%>
    <%--                            <a class="read_more" href="#">See More</a>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
</div>
<!-- end products -->
<!--  footer -->
<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<!-- end footer -->
<!-- Javascript files-->
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>

