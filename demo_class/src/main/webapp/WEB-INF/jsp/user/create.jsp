<%@page pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/jsp/backend/common/nav.jsp"></jsp:include>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1>Tạo mới tài khoản</h1>
                <p style="color: red">${message}</p>
                <form action="/user/create-form" method="post" id="pass-form">
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>
                                <input type="text" name="userName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Họ và tên</label>
                                <input type="text" name="fullName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label  class="form-label">Mật khẩu</label>
                                <input type="password" name="password" class="form-control" id="password" onkeyup='check();' />
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label  class="form-label">Nhập lại mật khẩu</label>
                                <input type="password" name="repassword" class="form-control" id="repassword" onkeyup='check();' />
                                <span id='message'></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email</label>
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Số điện thoại</label>
                                <input type="text" name="phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Giới tính</label>
                                <select name="gender" class="form-select" aria-label="Default select example">
                                    <option value="1">Name</option>
                                    <option value="2">Nữ</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Trạng thái</label>
                                <select name="status" class="form-select" aria-label="Default select example">
                                    <option value="0">Tạm dừng</option>
                                    <option value="1">Kích hoạt</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Quyền</label>
                                <select name="role" class="form-select" aria-label="Default select example">
                                    <option value="CUSTOMER">CUSTOMER</option>
                                    <option value="ADMIN">ADMIN</option>
                                </select>
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
<script src="/js/jsrepass.js"></script>
<script>
    $(document).ready(function () {// sẽ chay sau khi web tải xong html và css
        $("#pass-form").validate({
            rules: {
                userName: {
                    required: true,
                    minlength: 2,

                }
            },
            messages: {
                userName: {
                    required: "Vui lòng nhập mat khau",
                    minlength: jQuery.validator.format("mật khẩu có ít nhất {2} ký tự")
                }
            }
        });
    });
</script>