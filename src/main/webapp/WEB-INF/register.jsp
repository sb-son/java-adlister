<%--
  Created by IntelliJ IDEA.
  User: shawn
  Date: 2/9/23
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form action="/register" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email">
    <label for="password">Password:</label>
    <input type="password" id="password" name="password">
    <button type="submit">Sign Up</button>
</form>
</body>
</html>
