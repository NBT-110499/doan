<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<!-- laptop1 -->
<div class="laptop1">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="laptop1_img">
                    <figure><img src="images/leptop.jpg" alt="#"/></figure>
                </div>
            </div>
            <div class="col-md-5">
                <div class="titlepage">
                    <h2><spring:message code="title.laptop"></spring:message> </h2>
                    <p>Cũng như chiếc xe máy của bạn, đi một thời gian phải thay săm lốp, nhông xích, dầu mỡ thì máy tính cũng vậy. Mỗi năm bạn sẽ phải bỏ ra một khoản chi phí nhỏ để thay thế các bộ phận hao mòn như bàn phím, pin, ổ cứng…Thấu hiểu điều đó, chúng tôi đưa ra chương trình hỗ trợ:
                        Tặng 28% phí sửa chữa lần đầu tiên sau khi đã hết thời hạn bảo hành tại hệ thống Cla
                        Tặng 18% phí sửa chữa những lần tiếp theo trong 88 tháng tại hệ thống CLA</p>
                    <a class="read_more" href="/product">Sản Phẩm</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end laptop1 -->
<!--  footer -->
<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<!-- end footer -->
<!-- Javascript files-->
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>

