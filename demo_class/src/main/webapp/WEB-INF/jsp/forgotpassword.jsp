<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1>Đăng nhập</h1>
                <h2 style="color: red">${message}</h2>
                <p style="color: red">${message}</p>
                <form action="/doForgot" method="post" >
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label class="form-label">Nhập email của bạn</label>
                                <input type="text" name="email" class="form-control" />
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label class="form-label">Nhập mật khẩu mới</label>
                                <input type="text" name="resetPassword" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Gửi thông tin</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>


