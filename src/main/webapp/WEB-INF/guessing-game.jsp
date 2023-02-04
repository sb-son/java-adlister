<%--
  Created by IntelliJ IDEA.
  User: shawn
  Date: 2/3/23
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guessing Game</title>
</head>
<body>
    <h1>Pick a number</h1>
    <form action="/guess" method="post">
        <button name="guess" value="1">1</button>
        <button name="guess" value="2">2</button>
        <button name="guess" value="3">3</button>
    </form>
</body>
</html>
