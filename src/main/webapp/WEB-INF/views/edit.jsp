<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 01-Apr-19
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sửa thông tin sinh viên</title>
    <link href="<c:url value='/resources/css/edit.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/javascript/edit.js' /> "></script>
</head>
<body>
    <h1>Sửa thông tin sinh viên</h1>
    <form:form name="edit_form" action="edit?id=${student.getId()}" method="post" onsubmit="return validateForm()" modelAttribute="studentForm">
        <table align="center">
            <tr>
                <td><b>ID</b></td>
                <td>${student.getId()}</td>
            </tr>
            <tr>
                <td><b>Tên</b></td>
                <td><input type="text" name="name" value="${student.getName()}"></td>
            </tr>
            <tr>
                <td><b>Tuổi</b></td>
                <td><input type="text" name="age" value="${student.getAge()}"></td>
            </tr>
            <tr>
                <td><b>Địa chỉ</b></td>
                <td><input type="text" name="address" value="${student.getAddress()}"></td>
            </tr>
            <tr>
                <td><b>Giới tính</b></td>
                <td>
                    <c:if test="${student.getSex()==1}">
                        <input type="radio" name="sex" value="1" checked>Nam
                        <input type="radio" name="sex" value="0" style="margin-left: 50px">Nữ
                    </c:if>
                    <c:if test="${student.getSex()==0}">
                        <input type="radio" name="sex" value="1">Nam
                        <input type="radio" name="sex" value="0" checked style="margin-left: 50px">Nữ
                    </c:if>
                </td>
            </tr>
            <tr>
                <td><b>Lớp</b></td>
                <td><input type="text" name="mclass" value="${student.getMclass()}"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center"><input type="submit" value="Sửa"></td>
            </tr>
        </table>
    </form:form>
</body>
</html>
