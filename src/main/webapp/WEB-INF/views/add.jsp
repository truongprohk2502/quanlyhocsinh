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
    <title>Thêm mới sinh viên</title>
    <link href="<c:url value='/resources/css/add.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/javascript/add.js' /> "></script>
</head>
<body>
    <h1>Thêm mới sinh viên</h1>
    <c:if test="${id_existed==1}">
        <h3>ID đã tồn tại</h3>
    </c:if>
    <form:form name="add_form" action="add" method="post" onsubmit="return validateForm()" modelAttribute="studentForm">
        <table align="center">
            <tr>
                <td><b>ID</b></td>
                <td><input type="text" name="id" value="${student.getId()}"></td>
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
                    <input type="radio" name="sex" value="1" <c:if test="${student.getSex()==1}">checked</c:if>>Nam
                    <input type="radio" name="sex" value="0" <c:if test="${student.getSex()==0}">checked</c:if> style="margin-left: 50px">Nữ
                </td>
            </tr>
            <tr>
                <td><b>Lớp</b></td>
                <td><input type="text" name="mclass" value="${student.getMclass()}"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center"><input type="submit" value="Thêm mới"></td>
            </tr>
        </table>
    </form:form>
</body>
</html>
