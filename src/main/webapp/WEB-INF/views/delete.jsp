<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 02-Apr-19
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Xóa sinh viên</title>
    <link href="<c:url value='/resources/css/delete.css' />" rel="stylesheet">
</head>
<body>
    <h1>Xóa sinh viên</h1>
    <h3>Bạn có chắc chắn muốn xóa sinh viên có ID là ${id}?</h3>
    <form method="post" action="/delete?id=${id}">
        <input type="submit" value="Có">
    </form>
</body>
</html>
