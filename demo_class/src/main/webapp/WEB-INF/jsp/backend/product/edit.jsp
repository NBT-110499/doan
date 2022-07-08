<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/jsp/backend/common/nav.jsp"></jsp:include>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1>Cập nhật Sản phẩm</h1>
                <p style="color: red">${message}</p>
                <form action="/backend/product/edit-form" method="post">
                    <input name="id" value="${product.id}" hidden>
                    <div class="row">
                        <div class="col-6">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Tên sản phẩm</label>
                            <input type="text" name="name" class="form-control" id="exampleInputEmail1"
                                   aria-describedby="emailHelp">
                        </div>
                        </div>

                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Giá</label>
                                <input type="number" name="price" class="form-control" id="exampleInputPassword1">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Mô tả</label>
                                <input type="text" name="description" class="form-control" id="exampleInputEmail1"
                                       aria-describedby="emailHelp">
                            </div>
                        </div>

                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">hãng</label>
                                <select name="brandId" class="form-select" aria-label="Default select example">
                                    <option value="1">DELL</option>
                                    <option value="2">MAC</option>
                                    <option value="3">VIVOng</option>
                                    <option value="4">HP</option>
                                    <option value="5">ASUS</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">loai</label>
                                <select name="categoryId" class="form-select" aria-label="Default select example">
                                    <option value="1">may vi tinh</option>
                                    <option value="2">may tinh sach tay</option>
                                    <option value="3">may tinh bang</option>
                                    <option value="4">phu kien</option>
                                    <option value="5">cao cap</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">RAM</label>
                                <select name="ram" class="form-select" aria-label="Default select example">
                                    <option value="2GB">2GB</option>
                                    <option value="4GB">4GB</option>
                                    <option value="8GB">8GB</option>
                                    <option value="16GB">16GB</option>
                                    <option value="32GB">32GB</option>
                                </select>
                            </div>
                        </div>

                        <%--                        <div class="col-6">--%>
                        <%--                            <div class="mb-3">--%>
                        <%--                                <label for="exampleInputEmail1" class="form-label">người tạo</label>--%>
                        <%--                                <input type="text" name="createBy" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>

                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CPU</label>
                                <input type="text" name="cpu" class="form-control" id="exampleInputEmail1"
                                       aria-describedby="emailHelp">
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">MÀN HÌNH</label>
                                <input type="text" name="display" class="form-control" id="exampleInputPassword1">
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="fileUploadId" class="form-label">Tải ảnh</label>
                                <input type="file" class="form-control" id="fileUploadId" aria-describedby="emailHelp">
                            </div>
                        </div>
                        <div class="col-6">
                            <img id="outputImage" width="100px"></img>
                            <div class="mb-3">
                                <input hidden type="text" name="image" class="form-control" id="fileUploadName">
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
