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
    <tr><td>메이커</td><td><input type="text" name="maker"/></td></tr>
    <tr><td>모델명</td><td><input type="text" name="model"/></td></tr>
    <tr><td>사이즈</td><td><select name="size"><option value="90">90</option><option value="95"></option><option value="100">100</option><option value="105">105</option><option value="110">110</option></select></td></tr>
    <tr><td>갯수</td><td><input type="number" name="price"/></td></tr>
    <tr><td>가격</td><td><input type="number" name="price"/></td></tr>
    <tr><td>사용가능한 쿠폰</td>
      <td><input type="radio" name="coupon" value="0%"/>0%<input type="radio" name="coupon" value="5%"/>5%<input type="radio" name="coupon" value="10%"/>10%<input type="radio" name="coupon" value="15%"/>15%</td></tr>
    <tr><td>색상</td><td><input type="color" name="color" value=#ffffff"/></td></tr>
    <tr><td>판매량</td><td><input type="number" name="sales"/></td></tr>
    <tr><td>설명</td><td><textarea col="50" row="5" name="text"></textarea></td></tr>
  </table>
  <button type="button" onclick="location.href='list'">목록보기</button>
  <button type="submit">등록하기</button>
</form>
</body>
</html>