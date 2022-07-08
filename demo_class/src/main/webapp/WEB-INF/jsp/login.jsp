<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1><spring:message code="label.title" /></h1>
                <p style="color: red">${message}</p>
                <form action="/doLogin" method="post" id="product-form" modelAttribute="category">
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label class="form-label"><spring:message code="label.userName" /></label>
                                <input type="text" name="username" class="form-control" />
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label class="form-label"><spring:message code="label.password" /></label>
                                <input type="password" name="password" class="form-control" />
                            </div>
                        </div>
                        <div class="text-right p-t-8 p-b-31">
                            <a href="forgotpassword">
                               quên mật khẩu
                            </a>
                        </div>

                    </div>
                    <button type="submit" class="btn btn-primary"><spring:message code="label.submit" /></button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>


