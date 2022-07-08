<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include>
<!-- body -->
<body class="main-layout inner_posituong">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="/images/loading.gif" alt="#" /></div>
</div>
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
                    </div>
                    <div class="left-sidebar">
                        <h2><spring:message code="title.brand"/></h2>
                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                            <c:forEach items="${danhsachBrand}" var="br">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a
                                                <c:if test="${brand != null && br.id == brand.id}">style="color: red" </c:if>
                                                href="/category/${br.id}">${br.name}</a></h4>
                                    </div>
                                </div>
                            </c:forEach>
                        </div><!--/category-products-->
                    </div>
                </div>
                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
                        <c:if test="${brand == null}">
                            <h2 class="title text-center"><spring:message code="title.features_items"/></h2>
                        </c:if>
                        <c:if test="${brand != null}">
                            <h2 class="title text-center">${brand.name} </h2>
                        </c:if>
                        <div class="row">
                            <c:forEach items="${product}" var="p">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <a href="/product/${p.id}"><img src="/image/${p.image}" alt=""/></a>
                                                <h2>${p.price}</h2>
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
</div>
<!-- end products -->
<!--  footer -->
<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<!-- end footer -->
<!-- Javascript files-->
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>

