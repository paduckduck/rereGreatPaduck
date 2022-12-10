<%--
  Created by IntelliJ IDEA.
  User: yongwon_seo
  Date: 2022/12/02
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addpostform</title>
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
<form action="addok" method="post">
  <table id="edit">
    <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
    <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>내용</td><td><textarea col="50" row="5" name="content"></textarea></td></tr>
  </table>
  <button type="button" onclick="location.href='list'">목록보기</button>
  <button type="submit">등록하기</button>
</form>
</body>
</html>
