<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 01-Apr-19
  Time: 8:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thông tin chi tiết</title>
    <link href="<c:url value='/resources/css/detail.css' />" rel="stylesheet">
</head>
<body>
    <h1>Thông tin chi tiết</h1>
    <table align="center">
        <tr>
            <td><b>ID</b></td>
            <td>${student.getId()}</td>
        </tr>
        <tr>
            <td><b>Tên</b></td>
            <td>${student.getName()}</td>
        </tr>
        <tr>
            <td><b>Tuổi</b></td>
            <td>${student.getAge()}</td>
        </tr>
        <tr>
            <td><b>Địa chỉ</b></td>
            <td>${student.getAddress()}</td>
        </tr>
        <tr>
            <td><b>Giới tính</b></td>
            <td>
                <c:if test="${student.getSex()==1}">Nam</c:if>
                <c:if test="${student.getSex()==0}">Nữ</c:if>
            </td>
        </tr>
        <tr>
            <td><b>Lớp</b></td>
            <td>${student.getMclass()}</td>
        </tr>
    </table>
</body>
</html>
