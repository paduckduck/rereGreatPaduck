<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: yongwon_seo
  Date: 2022/12/02
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>editform</title>
  <style>
    #edit {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    #edit td, #edit th {
      border: 1px solid #ddd;
      padding: 8px;
      text-align:center;
    }
    #edit tr:nth-child(even){background-color: #f2f2f2;}
    #edit tr:hover {background-color: #ddd;}
    #edit th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      background-color: #006bb3;
      color: white;
    }
  </style>
</head>
<body>
<form:form modelAttribute="u" method="POST" action="../editok">
  <form:hidden path="seq"/>
  <table id="edit">
    <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
    <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>내용</td><td><textarea col="50" row="5" name="content"></textarea></td></tr>
  </table>
  <input type="submit" value="수정하기"/>
  <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>
