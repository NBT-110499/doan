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
    <div class="loader"><img src="/images/loading.gif" alt="#"/></div>
</div>
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
                        <h2>hóa đơn</h2>
                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                            <form action="/checkout/checkout-form" method="post">

                                <input name="email" placeholder="Email*">
                                <input name="name" placeholder=" Name *">
                                <input name="address" placeholder="Address">
                                <input name="phone" placeholder="Phone *">
                                <input name="userId" value="${userId}" hidden>
                                <input name="money" value="${money}" >(ĐƠN VỊ: VNĐ)

                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="order-message">
                        <p>Lưu Ý khi vận chuyển</p>
                        <textarea name="notice" style="font-size: 12px;height: 355px;margin-bottom: 20px;padding: 15px 20px;background: #f0f0e9;border: 0;width: 100%;border-radius: 0;resize: none" placeholder="Notes about your order, Special Notes for Delivery"
                                  rows="16"></textarea>
                        <button type="submit" class="btn btn-primary">Hoàn tất</button>
                        </form>
                    </div>
                </div><!--features_items-->
            </div>
        </div>
    </section>
</div>


</div>
<!-- end products -->
<!--  footer -->
<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<!-- end footer -->
<!-- Javascript files-->
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>

