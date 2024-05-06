<%--
  Created by IntelliJ IDEA.
  User: DUONG
  Date: 5/6/2024
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/calculator" method="post">
    <label for="firstNum">First Number</label>
    <input type="text" id="firstNum" name="firstNum">
    <label for="Cal">Cal</label>
    <select name="cal" id="Cal">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <label for="secondNum">Second Number</label>
    <input type="text" id="secondNum" name="secondNum">
    <button type="submit">Submit</button>
</form>
</body>
</html>
