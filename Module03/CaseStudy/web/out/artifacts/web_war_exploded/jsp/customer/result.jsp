<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/22/2021
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="assert/css/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assert/css/style.css">
</head>
<body>

<table class="table table-secondary resultList">
    <tr class="table-dark">
        <th>ID</th>
        <th>Name</th>
        <th>Type Customer</th>
        <th>Information</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${customerDTOList}" var="customerDTO">
        <tr>
            <td>${customerDTO.id}</td>
            <td>${customerDTO.name}</td>
            <td>${customerDTO.nameTypeCustomer}</td>
            <td><a class="btn btn-outline-info btn-sm" role="button" aria-pressed="true" href="customer?action=view&id=${customerDTO.id}">Information</a></td>
            <td><a class="btn btn-outline-warning btn-sm" role="button" aria-pressed="true" href="customer?action=edit&id=${customerDTO.id}">Edit</a></td>
            <td><a class="btn btn-outline-danger btn-sm" role="button" aria-pressed="true" href="customer?action=delete&id=${customerDTO.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<script type="text/javascript" src="assert/Jquery/jquery.js"></script>
<script type="text/javascript" src="assert/js/search.js"></script>
<script type="text/javascript" src="assert/css/bootstrap/js//bootstrap.js"></script>
</body>
</html>
