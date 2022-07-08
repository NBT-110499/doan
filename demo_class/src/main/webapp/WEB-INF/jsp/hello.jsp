<%@page pageEncoding="UTF-8" %>

<h1>Xin chào t3h 123 456</h1>
<!DOCTYPE html>
<h2>CHÚC MỘT NGÀY TỐT LÀNH</h2>
<div class="products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Our Products</h2>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="our_products">
                <div class="row">
                    <c:forEach items="${product_view}" var="pv">
                        <div class="col-md-4 margin_bottom1">
                            <div class="product_box">
                                <figure><img src="/images/${pv.image}" alt="#"/></figure>
                                <h3>${pv.name}</h3>
                                <a>${pv.price}</a>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <a class="read_more" href="#">See More</a>
            </div>
        </div>



