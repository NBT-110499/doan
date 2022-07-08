<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include>
<body class="main-layout inner_posituong">
<%--<jsp:include page="/WEB-INF/jsp/backend/common/nav.jsp"></jsp:include>--%>
<%--<div class="loader_bg">--%>
<%--    <div class="loader"><img src="/images/loading.gif" alt="#" /></div>--%>
<%--</div>--%>
<jsp:include page="/WEB-INF/jsp/backend/common/header.jsp"></jsp:include>
<%----%>
<div class="container">
    <h2 style="color: red">DANH SACH SAN PHAM</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Image</th>
            <th></th>

        </tr>
        </thead>
        <tbody>

        <c:forEach items="${list.data}" var="product" >
            <c:set var="stt" value="1"></c:set>
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                    <%--                <td><a href="/backend/product/edit/${product.id}">${product.name}</a></td>--%>
                <td>${product.price}</td>
                <td>${product.description}</td>
                    <%--                <td>${product.category}</td>--%>
                <td width="100"><img alt="" src="/image/${product.image}" width="80" height="70"></td>
                <td><a class="btn btn-primary btn-sm" href="/backend/product/edit/${product.id}">Edit</a> | |
                    <a class="btn btn-danger btn-sm" href= "/backend/product/delete?Id=${product.id}"">Del</a></td>
                <c:set var="stt" value="${stt + 1}"></c:set>
            </tr>
            <%--        </c:forEach>--%>
        </c:forEach>
        </tbody>
    </table>
</div>

    <div>
        <jsp:include page="/WEB-INF/jsp/backend/common/paging.jsp"></jsp:include>
    </div>
    <div>
        <jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
        <jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
    </div>
</body>

</html>
<%--<script>--%>
<%--    $(document).ready(function () {// sẽ chay sau khi web tải xong html và css--%>

<%--        // $ <-> viết tắt Jquery--%>
<%--        // # lấy phần có id--%>
<%--        // . lấy phần tử class  $(".btn-primary")--%>
<%--        $("#fileUploadId").on("change",function (event) {--%>

<%--            var file = $(this)[0].files[0];// lấy file--%>
<%--            var reader = new FileReader();--%>
<%--            reader.onload = function(){--%>
<%--                var output = document.getElementById('outputImage');--%>
<%--                output.src = reader.result;--%>
<%--            };--%>
<%--            reader.readAsDataURL(file);--%>
<%--            var formData = new FormData();--%>

<%--            // add assoc key values, this will be posts values--%>
<%--            formData.append("file", file, file.name);--%>
<%--            formData.append("upload_file", true);--%>

<%--            $.ajax({// gọi api từ client (trình duyệt)--%>
<%--                type: "POST",--%>
<%--                enctype: 'multipart/form-data',--%>
<%--                url: "/backend/product/upload",--%>
<%--                data: formData,--%>
<%--                processData: false, //prevent jQuery from automatically transforming the data into a query string--%>
<%--                contentType: false,--%>
<%--                cache: false,--%>
<%--                timeout: 600000,--%>
<%--                success: function (data) {--%>
<%--                    $('#fileUploadName').val(data);--%>
<%--                    alert("upload thành công")--%>

<%--                },--%>
<%--                error: function (e) {--%>
<%--                    alert("upload thất bại")--%>

<%--                }--%>
<%--            });--%>

<%--        });--%>

<%--    });--%>

<%--</script>--%>


