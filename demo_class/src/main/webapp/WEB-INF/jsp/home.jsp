<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include>

<body>
<jsp:include page="/WEB-INF/jsp/backend/common/header.jsp"></jsp:include>

<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2><spring:message code="title.slogan1"/></h2>
                                <p><spring:message code="title.content1"></spring:message> </p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="/images/pc1.jfif" style="width: 484px; height: 441px" class="girl img-responsive" alt="" />
                                <img src="/images/home/pricing.png"  class="pricing" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2><spring:message code="title.slogan2"/></h2>
                                <p<spring:message code="title.content1"></spring:message></p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="/images/pct.png" style="width: 484px; height: 441px" class="girl img-responsive" alt="" />
                                <img src="/images/home/pricing.png"  class="pricing" alt="" />
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2><spring:message code="title.slogan3"/></h2>
                                <p><spring:message code="title.content1"></spring:message> </p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="/images/pc2.jpg" style="width: 484px; height: 441px" class="girl img-responsive" alt="" />
                                <img src="/images/home/pricing.png" class="pricing" alt="" />
                            </div>
                        </div>

                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Category</h2>
                    <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                        <c:forEach items="${danhsachCategory}" var="cat">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a
                                            <c:if test="${category != null && cat.id == category.id}">style="color: red" </c:if>
                                            href="/category/${cat.id}">${cat.name}</a></h4>
                                </div>
                            </div>
                        </c:forEach>
                    </div><!--/category-products-->

                    <div class="brands_products"><!--brands_products-->
                        <h2>Brands</h2>
                        <div class="panel-group category-products" id="accordian">
                        <c:forEach items="${danhsachBrand}" var="br">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a
                                            <c:if test="${brand != null && br.id == brand.id}">style="color: red" </c:if>
                                            href="/brand/${br.id}">${br.name}</a></h4>
                                </div>
                            </div>
                        </c:forEach>
                        </div>
                    </div><!--/brands_products-->

<%--                    <div class="price-range"><!--price-range-->--%>
<%--                        <h2>Price Range</h2>--%>
<%--                        <div class="well text-center">--%>
<%--                            <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />--%>
<%--                            <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>--%>
<%--                        </div>--%>
<%--                    </div><!--/price-range-->--%>

<%--                    <div class="shipping text-center"><!--shipping-->--%>
<%--                        <img src="/images/home/shipping.jpg" alt="" />--%>
<%--                    </div><!--/shipping-->--%>

                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Features Items</h2>
                    <div class="row">
                        <c:forEach items="${product}" var="p">
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <a href="/product/${p.id}"><img src="/image/${p.image}" style="width: 200px;height: 200px" alt=""/></a>
                                            <h2><fmt:formatNumber value = "${p.price}" type = "currency" currencySymbol="Đ" maxFractionDigits="0"/>
                                            </h2>
                                            <p>${p.name}</p>
                                            <a href="/product/${p.id}" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i><spring:message
                                                    code="title.Addtocart"/></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div><!--features_items-->
<%--                <div class="recommended_items"><!--recommended_items-->--%>
<%--                    <h2 class="title text-center">recommended items</h2>--%>
<%--                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">--%>
<%--                        <div class="carousel-inner">--%>
<%--                            <div class="item active">--%>
<%--                                <div class="col-sm-4">--%>
<%--                                    <div class="product-image-wrapper">--%>
<%--                                        <div class="single-products">--%>
<%--                                            <div class="productinfo text-center">--%>
<%--                                                <img src="/images/home/recommend1.jpg" alt="" />--%>
<%--                                                <h2>$56</h2>--%>
<%--                                                <p>Easy Polo Black Edition</p>--%>
<%--                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
<%--                                            </div>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-sm-4">--%>
<%--                                    <div class="product-image-wrapper">--%>
<%--                                        <div class="single-products">--%>
<%--                                            <div class="productinfo text-center">--%>
<%--                                                <img src="/images/home/recommend2.jpg" alt="" />--%>
<%--                                                <h2>$56</h2>--%>
<%--                                                <p>Easy Polo Black Edition</p>--%>
<%--                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
<%--                                            </div>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-sm-4">--%>
<%--                                    <div class="product-image-wrapper">--%>
<%--                                        <div class="single-products">--%>
<%--                                            <div class="productinfo text-center">--%>
<%--                                                <img src="/images/home/recommend3.jpg" alt="" />--%>
<%--                                                <h2>$56</h2>--%>
<%--                                                <p>Easy Polo Black Edition</p>--%>
<%--                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
<%--                                            </div>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="item">--%>
<%--                                <div class="col-sm-4">--%>
<%--                                    <div class="product-image-wrapper">--%>
<%--                                        <div class="single-products">--%>
<%--                                            <div class="productinfo text-center">--%>
<%--                                                <img src="/images/home/recommend1.jpg" alt="" />--%>
<%--                                                <h2>$56</h2>--%>
<%--                                                <p>Easy Polo Black Edition</p>--%>
<%--                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
<%--                                            </div>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-sm-4">--%>
<%--                                    <div class="product-image-wrapper">--%>
<%--                                        <div class="single-products">--%>
<%--                                            <div class="productinfo text-center">--%>
<%--                                                <img src="/images/home/recommend2.jpg" alt="" />--%>
<%--                                                <h2>$56</h2>--%>
<%--                                                <p>Easy Polo Black Edition</p>--%>
<%--                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
<%--                                            </div>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-sm-4">--%>
<%--                                    <div class="product-image-wrapper">--%>
<%--                                        <div class="single-products">--%>
<%--                                            <div class="productinfo text-center">--%>
<%--                                                <img src="/images/home/recommend3.jpg" alt="" />--%>
<%--                                                <h2>$56</h2>--%>
<%--                                                <p>Easy Polo Black Edition</p>--%>
<%--                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
<%--                                            </div>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">--%>
<%--                            <i class="fa fa-angle-left"></i>--%>
<%--                        </a>--%>
<%--                        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">--%>
<%--                            <i class="fa fa-angle-right"></i>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div><!--/recommended_items-->--%>

            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include><!--/Footer-->



<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>