<%@page pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<%--<jsp:include page="/WEB-INF/jsp/backend/common/nav.jsp"></jsp:include>--%>
<style>
    .error {
        color: red;
    }
</style>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1>Đổi mật khẩu</h1>
                <p style="color: red">${message}</p>
                <form action="/user/change-pass" method="post" id="pass-form">
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Mật khẩu cũ</label>
                                <input type="password" name="oldPass" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                        </div>
                    </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Mật khẩu mới</label>
                                <input type="password" name="newPass" class="form-control" id="password" aria-describedby="emailHelp"  onkeyup='check();' />
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">xac nhan Mật khẩu mới </label>
                                <input type="password" name="rePass" class="form-control" id="repassword" aria-describedby="emailHelp" onkeyup='check();' />
                                <span id='message'></span>
                            </div>
                        </div>


                    <button type="submit" class="btn btn-primary">Đổi mật khẩu</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script src="/js/jsrepass.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script>
    $(document).ready(function () {// sẽ chay sau khi web tải xong html và css
        $("#pass-form").validate({
            rules: {
                newPass: {
                    required: true,
                    minlength: 2,

                }
            },
            messages: {
                newPass: {
                    required: "Vui lòng nhập mat khau",
                    minlength: jQuery.validator.format("mật khẩu có ít nhất {2} ký tự")
                }
            }
        });
    });
</script>