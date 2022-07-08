<%@page pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/jsp/backend/common/nav.jsp"></jsp:include>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1>Tạo mới sản phẩm</h1>
                <p style="color: red">${message}</p>
                <form action="/backend/product/create-form" method="post">
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
                    <%--                    <div class="row">--%>
                    <%--                        <div class="col-12">--%>
                    <%--                            <div class="mb-3">--%>
                    <%--                                <label for="exampleInputEmail1" class="form-label">mã thương hiệu</label>--%>
                    <%--                                <input type="text" name="brandId" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>


                    <%--                    </div>--%>
                    <%--                    <div class="row">--%>
                    <%--                        <div class="col-12">--%>
                    <%--                            <div class="mb-3">--%>
                    <%--                                <label for="exampleInputEmail1" class="form-label">mã thể loạiả</label>--%>
                    <%--                                <select name="categoryId">--%>
                    <%--                                    <option value="1">Adidas</option>--%>
                    <%--                                    <option value="2">Nike</option>--%>
                    <%--                                </select>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>

                    <%--                    </div>--%>

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
                    <%--                    <div class="row">--%>
                    <%--                        <div class="col-12">--%>
                    <%--                            <div class="mb-3">--%>
                    <%--                                <label for="exampleInputEmail1" class="form-label">Người tạo</label>--%>
                    <%--                                <input type="text" name="createBy" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>

                    <%--                    </div>--%>
                    <%--                    <div class="row">--%>
                    <%--                        <div class="col-6">--%>
                    <%--                            <div class="mb-3">--%>
                    <%--                                <label for="exampleInputEmail1" class="form-label">Thương hiệu</label>--%>
                    <%--                                <select name="brand" class="form-select" aria-label="Default select example">--%>
                    <%--                                    <option value="1">ADIDAS</option>--%>
                    <%--                                    <option value="2">NIKE</option>--%>
                    <%--                                </select>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                        <div class="col-6">--%>
                    <%--                            <div class="mb-3">--%>
                    <%--                                <label for="exampleInputEmail1" class="form-label">Thể loại</label>--%>
                    <%--                                <select name="category" class="form-select" aria-label="Default select example">--%>
                    <%--                                    <option value="3">Quần </option>--%>
                    <%--                                    <option value="6">áo</option>--%>
                    <%--                                </select>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <button type="submit" class="btn btn-primary">Tạo mới</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(document).ready(function () {// sẽ chay sau khi web tải xong html và css

        // $ <-> viết tắt Jquery
        // # lấy phần có id
        // . lấy phần tử class  $(".btn-primary")
        $("#fileUploadId").on("change", function (event) {

            var file = $(this)[0].files[0];// lấy file
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('outputImage');
                output.src = reader.result;
            };
            reader.readAsDataURL(file);
            var formData = new FormData();

            // add assoc key values, this will be posts values
            formData.append("file", file, file.name);
            formData.append("upload_file", true);

            $.ajax({// gọi api từ client (trình duyệt)
                type: "POST",
                enctype: 'multipart/form-data',
                url: "/backend/product/upload",
                data: formData,
                processData: false, //prevent jQuery from automatically transforming the data into a query string
                contentType: false,
                cache: false,
                timeout: 600000,
                success: function (data) {
                    $('#fileUploadName').val(data);
                    alert("upload thành công")

                },
                error: function (e) {
                    alert("upload thất bại")

                }
            });

        });

    });

</script>
