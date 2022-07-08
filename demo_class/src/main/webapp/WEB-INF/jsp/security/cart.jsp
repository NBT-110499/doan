<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%--<tbody>--%>
<%--<c:forEach  items="${cart}" var="c" >--%>
<%--    <tr>--%>
<%--        <td class="cart_product">--%>
<%--            <img src="/image/${c.productEntity.image}" height="120" width="120" alt="">--%>
<%--        </td>--%>
<%--        <td class="cart_description">--%>
<%--            <h4><a href="">${c.quantity}</a></h4>--%>
<%--        </td>--%>
<%--        <td class="cart_price">--%>
<%--            <p>$${c.productEntity.price}</p>--%>
<%--        </td>--%>
<%--        <td class="cart_quantity">--%>
<%--            <div class="cart_quantity_button">--%>
<%--                <a class="cart_quantity_up" href=""> + </a>--%>
<%--                <input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">--%>
<%--                <a class="cart_quantity_down" href=""> - </a>--%>
<%--            </div>--%>
<%--        </td>--%>
<%--        <td class="cart_total">--%>
<%--            <p class="cart_total_price">${c.quantity}</p>--%>
<%--        </td>--%>
<%--        <td class="cart_delete">--%>
<%--            <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--</c:forEach>--%>
<%--</tbody>--%>
<div class="table-responsive cart_info" style="border: 1px ;margin-bottom: 50px;box-sizing: border-box">
    <table class="table table-condensed" style="width: 100%;margin-bottom: 20px;max-width: 100%;background-color: transparent;border-collapse: collapse;border-spacing: 0;display: table;border-color: gray">
        <thead>
        <tr class="cart_menu">
            <td class="image">Item</td>
            <td class="description"></td>
            <td class="price">Price</td>
            <td class="quantity">Quantity</td>
            <td class="total">Total</td>
            <td></td>
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${cart}" var="c" >
        <tr>
            <td class="cart_product">
                <img src="/image/${c.productEntity.image}" height="120" width="120" alt="">
            </td>
            <td class="cart_description">
                <h4><a href="">${c.productEntity.name}</a></h4>
                <p>Web ID: 1089772</p>
            </td>
            <td class="cart_price">
                <p>${c.productEntity.price}</p>
            </td>
            <td class="cart_quantity">
                <div class="cart_quantity_button">
<%--                    <a class="cart_quantity_up" href=""> + </a>--%>
                    <h4><a href="">${c.quantity}</a></h4>
<%--                    <a class="cart_quantity_down" href=""> - </a>--%>
                </div>
            </td>
            <td class="cart_total">
                <p class="cart_total_price">${c.total1}</p>
            </td>
            <td class="cart_delete">
                <a class="cart_quantity_delete" href="/sercurity/delete/${c.userEntity.id}/${c.productEntity.id}"><i class="fa fa-times"></i></a>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<section id="do_action">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="total_area" style="border 1px solid #E6E4DF;color: #696763;padding: 30px 25px 30px 0;margin-bottom: 80px">
                    <ul style="display: block;list-style-type: 1em;margin-block-end: 1em;margin-inline-start: 0px;margin-inline-end: 0px;padding-inline-start: 0px; ">
                        <li>Phí Vận Chuyển <span>Free</span></li>
                        <h2><li>Tổng giá <span>${totalmoney}</span></li></h2>
                    </ul>
                    <a class="btn btn-default check_out" style="color: #0f69c6;background-color: red" href="/checkout/${userId}/${totalmoney}">Check Out</a>
                </div>
            </div>
        </div>
    </div>
</section>
<div>
</div>

<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>