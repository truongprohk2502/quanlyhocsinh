<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 02-Apr-19
  Time: 4:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách tìm kiếm sinh viên</title>
    <link href="<c:url value='/resources/css/find.css' />" rel="stylesheet">
</head>
<body>
    <h1>Danh sách tìm kiếm sinh viên</h1>
    <c:if test="${status == 1}">
        <table align="center">
            <tr>
                <td class="header_td">ID</td>
                <td class="header_td">Tên</td>
                <td class="header_td">Tuổi</td>
                <td class="header_td">Địa chỉ</td>
                <td class="header_td">Giới tính</td>
                <td class="header_td">Lớp</td>
                <td class="header_td">Chi tiết</td>
                <td class="header_td">Sửa</td>
                <td class="header_td">Xóa</td>
            </tr>
            <c:forEach items="${requestScope['find_students']}" var="student">
                <tr>
                    <td class="center_td">${student.getId()}</td>
                    <td>${student.getName()}</td>
                    <td class="center_td">${student.getAge()}</td>
                    <td>${student.getAddress()}</td>
                    <td class="center_td">
                        <c:if test="${student.getSex()==1}">Nam</c:if>
                        <c:if test="${student.getSex()==0}">Nữ</c:if>
                    </td>
                    <td class="center_td">${student.getMclass()}</td>
                    <td class="center_td"><a href="/detail?id=${student.getId()}">Xem</a></td>
                    <td class="center_td"><a href="/edit?id=${student.getId()}">Sửa</a></td>
                    <td class="center_td"><a href="/delete?id=${student.getId()}">Xóa</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <c:if test="${status != 1}">
        <h3>Không tìm thấy sinh viên nào</h3>
    </c:if>
</body>
</html>
