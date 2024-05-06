<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh Sach Ban Hang</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        h1 {
            text-align: center;
        }
        .thTable th {
            text-align: center;
        }
    </style>
</head>
<body>

<h1>Danh Sach Khach Hang</h1>
<table class="table table-bordered">
    <thead>
    <tr class="thTable">
        <th scope="col">Họ và tên</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Hình ảnh</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${listKH}" var="kh">
            <tr>
                <td style="text-align: center">${kh.name}</td>
                <td style="text-align: center">${kh.birthday}</td>
                <td style="text-align: center">${kh.address}</td>
                <td style="text-align: center">
                    <img src="${kh.imgURL}" alt="" width="50" height="50">
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>