<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include>
<!-- body -->
<body class="main-layout inner_posituong computer_page">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="images/loading.gif" alt="#" /></div>
</div>
<!-- end loader -->
<!-- header -->
<jsp:include page="/WEB-INF/jsp/backend/common/header.jsp"></jsp:include>
<!-- end header inner -->
<!-- end header -->
<!-- about section -->
<div class="computer">
    <div class="container">
        <div class="row d_flex">
            <div class="col-md-5">
                <div class="titlepage">
                    <h2><spring:message code="title.computer"/></h2>
                    <p>mang đến cho bạn nhũng chiêc máy tính khủng nhất</p>
                </div>
            </div>
            <div class="col-md-7">
                <div class="about_img">
                    <figure><img src="images/about.jpg" alt="#"/></figure>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- end about section -->
<!--  footer -->
<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<!-- end footer -->
<!-- Javascript files-->
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>

