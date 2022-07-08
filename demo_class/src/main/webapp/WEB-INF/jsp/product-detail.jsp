<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<div class="products">
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
                                                <c:if test="${category != null && cat.id == category.id}"></c:if>
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
                                                    <c:if test="${brand != null && br.id == brand.id}"> </c:if>
                                                    href="/brand/${br.id}">${br.name}</a></h4>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div><!--/brands_products-->

<%--                        <div class="price-range"><!--price-range-->--%>
<%--                            <h2>Price Range</h2>--%>
<%--                            <div class="well text-center">--%>
<%--                                <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />--%>
<%--                                <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>--%>
<%--                            </div>--%>
<%--                        </div><!--/price-range-->--%>

<%--                        <div class="shipping text-center"><!--shipping-->--%>
<%--                            <img src="/images/home/shipping.jpg" alt="" />--%>
<%--                        </div><!--/shipping-->--%>

                    </div>
                </div>
                <div class="col-sm-9 padding-right">
                    <div class="product-details"><!--product-details-->
                        <div class="col-sm-5">
                            <div class="view-product">
                                <img src="/image/${product.image}" alt=""/>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="product-information"><!--/product-information-->
                                <%--                            <img src="/image/${product.image}" class="newarrival" alt="" />--%>
                                <h2>${product.name}</h2>
                                <p></p>
                                <span>
									<label>Số lượng mua: </label>
									<form action="/sercurity/addCart-form" method="post">
<%--                                        <ư> sffffgf ${user.email}</ư>--%>
                                        <input type="number" name="idUser" value="${user.id}" hidden/>
                                         <input type="number" name="idProduct" value="${product.id}" hidden/ >
                                         <input type="number" name="quantity"/>
                                         <button type="submit" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Thêm vào giỏ hàng
									</button>
                                        </form>
								    </span>
                                <p><b>Gía:</b><h2><fmt:formatNumber value = "${product.price}" type = "currency" currencySymbol="Đ" maxFractionDigits="0"/>
                                </p>
                                <p><b>chất lượng:</b> 99%</p>
                                <%--                                <p><b><spring:message code="title.category"/>:</b> </p>--%>
                                <%--                                <p><b><spring:message code="title.brand"/>: </b> </p>--%>
                                <h1></h1>
                                <a href=""><img src="image/${product.image}" class="share img-responsive"
                                                alt=""/></a>
                            </div><!--/product-information-->
                        </div>
                    </div><!--/product-details-->
                    <div class="category-tab shop-details-tab"><!--category-tab-->
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li><a href="#details" data-toggle="tab">Details</a></li>
                                <li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
                                <li><a href="#tag" data-toggle="tab">Tag</a></li>
                                <li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade" id="details" >
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery2.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery3.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery4.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="companyprofile" >
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery3.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery2.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery4.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="tag" >
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery1.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery2.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery3.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/gallery4.jpg" alt="" />
                                                <h2>$56</h2>
                                                <p>Easy Polo Black Edition</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade active in" id="reviews">
                                <div class="col-sm-12">
                                    <c:forEach items="${review}" var="re">
                                        <ul>
                                            <li><a href=""><i class="fa fa-user"></i>${re.name}</a></li>
                                        </ul>
                                        <p>${re.comment}</p>
                                    </c:forEach>
                                    <p><b>Viết Review của bạn</b></p>
                                    <form action="/review-form" method="post">
                                        <input name="idProduct" value="${product.id}" hidden>
                                        <span>
                                    <input type="text" name="name" placeholder="Your Name"/>
                                    <input type="email"  name="email"placeholder="Email Address"/>
                                </span>
                                        <br>
                                        <textarea name="comment" ></textarea>
                                        <br>
                                        <button type="submit" class="btn btn-primary">
                                            Submit
                                        </button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div><!--/category-tab-->
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
<script>
    var today = new Date();
    var date = today.getDate() + '-' + (today.getMonth() + 1) + '-' + today.getFullYear();
    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var dateTime = date + ' ' + time;

    document.getElementById("hvn").innerHTML = dateTime;
</script>

