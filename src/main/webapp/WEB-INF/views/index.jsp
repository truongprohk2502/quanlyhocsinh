<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách sinh viên</title>
    <link href="<c:url value='/resources/css/index.css' />" rel="stylesheet">
</head>
<body>
    <h1>Danh sách sinh viên</h1>
    <form method="post" action="/find">
        <table align="center">
            <tr>
                <td><b>Tìm kiếm</b></td>
                <td><input type="text" name="find_text"></td>
                <td><input type="submit" value="Tìm kiếm"></td>
                <td>
                    <select name="find_type">
                        <option value="1">Theo ID</option>
                        <option value="2">Theo tên</option>
                        <option value="3">Theo tuổi</option>
                        <option value="4">Theo địa chỉ</option>
                        <option value="5">Theo lớp</option>
                    </select>
                </td>
            </tr>
        </table>
    </form>
    <form method="post">
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
            <c:forEach items="${requestScope['students']}" var="student">
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
    </form>

    <form method="get" action="/add">
        <input type="submit" value="Thêm mới">
    </form>
</body>
</html>
