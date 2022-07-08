<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
                    <div class="left-sidebar">
                        <h2><spring:message code="title.category"/></h2>
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
                    </div>
                    <div class="left-sidebar">
                        <h2><spring:message code="title.brand"/></h2>
                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                            <c:forEach items="${danhsachBrand}" var="br">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a
                                                <c:if test="${brand != null && br.id == brand.id}">style="color: red"
                                        </c:if>
                                                href="/brand/${br.id}">${br.name}</a></h4>
                                    </div>
                                </div>
                            </c:forEach>
                        </div><!--/category-products-->
                    </div>
                </div>
                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
                        <c:if test="${category == null}">
                            <h2 class="title text-center"><spring:message code="title.features_items"/></h2>
                        </c:if>
                        <c:if test="${category != null}">
                            <h2 class="title text-center">${category.name} </h2>
                        </c:if>
<%--                        <c:if test="${brand == null}">--%>
<%--                            <h2 class="title text-center"><spring:message code="title.features_items"/></h2>--%>
<%--                        </c:if>--%>
                        <c:if test="${brand != null}">
                            <h2 class="title text-center">${brand.name} </h2>
                        </c:if>
                        <div class="row" >
                            <c:forEach items="${product}" var="p">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <a href="/product/${p.id}"><img src="/image/${p.image}"width="100px" height="100px"  alt=""/></a>
                                                <h2><fmt:formatNumber value = "${p.price}" type = "currency" currencySymbol="Đ" maxFractionDigits="0"/>
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
                </div>
            </div>
        </div>
    </section>
</div>
<!-- end products -->
<!--  footer -->
<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<!-- end footer -->
<!-- Javascript files-->
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>

