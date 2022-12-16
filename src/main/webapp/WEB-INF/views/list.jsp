<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page isELIgnored="false"%>
<%--
  Created by IntelliJ IDEA.
  User: yongwon_seo
  Date: 2022/12/02
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>신발등록</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<body>
<h1>신발등록</h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>maker</th>
        <th>model</th>
        <th>size</th>
        <th>number</th>
        <th>price</th>
        <th>coupon</th>
        <th>color</th>
        <th>누적판매량</th>
        <th>설명</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.maker}</td>
            <td>${u.model}</td>
            <td>${u.size}</td>
            <td>${u.number}</td>
            <td>${u.price}</td>
            <td>${u.coupon}</td>
            <td>${u.color}</td>
            <td>${u.sales}</td>
            <td>${u.text}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="deleteok/${u.seq}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새 신발 등록하기</button>
</body>
</html>
