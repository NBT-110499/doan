<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/jsp/backend/common/nav.jsp"></jsp:include>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1>Danh sách message</h1>
                <p style="color: red">${message}</p>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Tên </th>
                        <th scope="col">email</th>
                        <th scope="col">phone</th>
                        <th scope="col">message</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="stt" value="1"></c:set>
                    <c:forEach items="${list.data}" var="contact">
                        <tr>
                            <th scope="row">${stt}</th>
                            <td>${contact.name}</td>
                            <td>${contact.email}</td>
                            <td>${contact.phone}</td>
                            <td>${contact.message}</td>
                            <c:set var="stt" value="${stt + 1}"></c:set>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>

            <jsp:include page="/WEB-INF/jsp/backend/common/pagingUser.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>

