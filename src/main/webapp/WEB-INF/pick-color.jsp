<%--
  Created by IntelliJ IDEA.
  User: shawn
  Date: 2/3/23
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color picker</title>
</head>
<body>
    <h1>Pick your favorite color</h1>
    <form action="view-color" method="post">
        <label for="color">Select your favorite color:</label>
        <input type="color" id="color" name="color"><br><br>
        <input type="submit">
    </form>
</body>
</html>
