<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/jsp/backend/common/nav.jsp"></jsp:include>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1>Cập nhật tài khoản</h1>
                <p style="color: red">${message}</p>
                <form action="/user/edit1-form" method="post">
                    <div class="row">
                        <input name="id" value="${user.id}" hidden>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>
                                <input type="text" name="userName" value="${user.userName}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary">Tạo mới</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
