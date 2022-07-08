<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="/vendor2/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="/vendor2/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="v/endor2/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/vendor2/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/css2/main.css" rel="stylesheet" media="all">
</head>

<body>
<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
    <div class="wrapper wrapper--w680">
        <div class="card card-4">
            <div class="card-body">
                <h2 class="title">Registration Form</h2>
                <p style="color: red">${message}</p>
                <form action="/user/create-form" method="post">
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">tên đăng nhập</label>
                                <input class="input--style-4" type="text" name="userName">
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">Họ Và Tên</label>
                                <input class="input--style-4" type="text" name="fullName">
                            </div>
                        </div>
                    </div>
                    <div class="row row-space">
                        <%--                        <div class="col-2">--%>
                        <%--                            <div class="input-group">--%>
                        <%--                                <label class="label">Birthday</label>--%>
                        <%--                                <div class="input-group-icon">--%>
                        <%--                                    <input class="input--style-4 js-datepicker" type="text" name="birthday">--%>
                        <%--                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">email</label>
                                <input class="input--style-4" type="email" name="email">
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">giới tính</label>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">Male
                                        <input type="radio" checked="checked" name="gender" value="1">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">Female
                                        <input type="radio" name="gender" value="2">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row row-space">
                        <script src="/js/jsrepass.js"></script>
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">mật khẩu</label>
                                <input class="input--style-4" type="password" id="password" name="password" onkeyup='check();' />
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">nhập lại mật khẩu</label>
                                <input class="input--style-4" type="password" id="repassword" name="repassword" onkeyup='check();' />
                                <span id='message'></span>
                            </div>
                        </div>
                    </div>
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">số điện thoại</label>
                                <input class="input--style-4" type="text" name="phone">
                            </div>
                        </div>

                    </div>
                    <div class="input-group">
                        <label class="label">quyền</label>
                        <div class="rs-select2 js-select-simple select--no-search">
                            <select name="role">
                                <option disabled="disabled" selected="selected">Choose option</option>
                                <option value="ADMIN">ADMIN</option>
                                <option value="CUSTOMER">CUSTOMER</option>
                            </select>
                            <div class="select-dropdown"></div>
                        </div>
                    </div>
                    <div class="input-group">
                        <label class="label">Trạng Thái</label>
                        <div class="rs-select2 js-select-simple select--no-search">
                            <select name="status">
                                <option disabled="disabled" selected="selected">Choose option</option>
                                <option value="1">KIch Hoạt</option>
                                <option value="0">Không Kích Hoạt</option>
                            </select>
                            <div class="select-dropdown"></div>
                        </div>
                    </div>
                    <div class="p-t-15">
                        <button class="btn btn--radius-2 btn--blue" type="submit">tạo mới</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Jquery JS-->
<script src="/vendor2/jquery/jquery.min.js"></script>
<!-- Vendor JS-->
<script src="/vendor2/select2/select2.min.js"></script>
<script src="/vendor2/datepicker/moment.min.js"></script>
<script src="/vendor2/datepicker/daterangepicker.js"></script>

<!-- Main JS-->
<script src="/js2/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
<script>

    $(document).ready(function () {// sẽ chay sau khi web tải xong html và css
        $("#pass-form").validate({
            rules: {
                userName: {
                    required: true,
                    minlength: 6,

                }
                fullName: {
                    required: true,
                    minlength: 6,

                }
                phone: {
                    required: true,
                    minlength: 6,

                }
            },
            messages: {
                userName: {
                    required: "Vui lòng nhập ",
                    minlength: jQuery.validator.format("phải có ít nhất {6} ký tự")
                }
                fullName: {
                    required: "Vui lòng nhập ",
                    minlength: jQuery.validator.format("phải có ít nhất {6} ký tự")
                }
                phone: {
                    required: "Vui lòng nhập ",
                    minlength: jQuery.validator.format("phải có ít nhất {6} ký tự")
                }
            }
        });
    });
</script>