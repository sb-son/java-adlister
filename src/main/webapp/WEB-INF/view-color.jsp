<%--
  Created by IntelliJ IDEA.
  User: shawn
  Date: 2/3/23
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View color</title>
</head>
<body>
    <h1>Here is your color: </h1>
    <div style="
        height: 100px;
        width: 100px;
        background-color: <%= request.getParameter("color") %>"></div>
</body>
</html>
