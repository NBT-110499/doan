<%@page pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Ninth navbar example">
    <div class="container-xl">
        <a class="navbar-brand" href="/home">Trang chủ</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07XL"
                aria-controls="navbarsExample07XL" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample07XL">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <%--                <li class="nav-item">--%>
                <%--                    <a class="nav-link" href="#">Link</a>--%>
                <%--                </li>--%>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown07XL" data-bs-toggle="dropdown"
                       aria-expanded="false">Tài khoản</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown07XL">
                        <li><a class="dropdown-item" href="/user/create">Tạo mới</a></li>
                        <li><a class="dropdown-item" href="/user/list">Danh sách</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown07XL" data-bs-toggle="dropdown"
                       aria-expanded="false">Thông tin</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown07XL">
                        <%--                        <li><a class="dropdown-item" href="#"><sec:authentication property="principal.fullName"></sec:authentication></a></li>--%>
                        <li><a class="dropdown-item" href="/user/change-pass">Đổi mật khẩu</a></li>
                        <li><a class="dropdown-item" href="/contact/list">phản hồi</a></li>
                        <li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown07XL" data-bs-toggle="dropdown"
                       aria-expanded="false">sản phẩm</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown07XL">
                        <%--                        <li><a class="dropdown-item" href="#"><sec:authentication property="principal.fullName"></sec:authentication></a></li>--%>
                        <li><a class="dropdown-item" href="/backend/product/list">danh sách sản phẩm</a></li>
                        <li><a class="dropdown-item" href="/backend/product/create2">đăng sản phẩm</a></li>
                    </ul>
                </li>
            </ul>
            <%--            <form>--%>
            <%--                &lt;%&ndash;                <a class="form-control" href="/logout" >Đăng xuất</a>&ndash;%&gt;--%>
            <%--                <ul class="dropdown-menu" aria-labelledby="dropdown07XL">--%>
            <%--                    <li><a class="dropdown-item" href="#"><sec:authentication property="principal.fullName"></sec:authentication></a></li>--%>
            <%--                    <li><a class="dropdown-item" href="/user/change-pass">Đổi mật khẩu</a></li>--%>
            <%--                    <li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>--%>
            <%--                </ul>--%>
            <%--            </form>--%>
        </div>
    </div>
</nav>
