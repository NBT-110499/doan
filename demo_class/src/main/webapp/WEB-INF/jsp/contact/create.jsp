<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include><!--/head-->

<body>
<jsp:include page="/WEB-INF/jsp/backend/common/header.jsp"></jsp:include><!--/header-->

<div id="contact-page" class="container">
    <div class="bg">
<%--        <div class="row">--%>
<%--            <div class="col-sm-12">--%>
<%--                <h2 class="title text-center">Contact <strong>Us</strong></h2>--%>
<%--                <div id="gmap" class="contact-map">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="row">
            <div class="col-sm-8">
                <div class="contact-form">
                    <h2 class="title text-center">Get In Touch</h2>
                    <div class="status alert alert-success" style="display: none"></div>
                    <form id="main-contact-form" action="/contact/contact-form" class="contact-form row" name="contact-form" method="post">
                        <div class="form-group col-md-6">
                            <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6">
                            <input type="email" name="email" class="form-control" required="required" placeholder="Email">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="text" name="phone" class="form-control" required="required" placeholder="Phone">
                        </div>
                        <div class="form-group col-md-12">
                            <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-info">
                    <h2 class="title text-center">Contact Info</h2>
                    <address>
                        <p>E-Shopper Inc.</p>
                        <p>163. Cầu Diễn, Minh Khai,HN</p>
                        <p>HaNoi VietNam</p>
                        <p>Mobile: +2346 17 38 93</p>
                        <p>Fax: 1-714-252-0026</p>
                        <p>Email: mbt@gmai,com</p>
                    </address>
                    <div class="social-networks">
                        <h2 class="title text-center">Social Networking</h2>
                        <ul>
                            <li>
                                <a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-youtube"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--/#contact-page-->

<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include><!--/Footer-->



<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>