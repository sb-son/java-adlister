<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shawn
  Date: 2/4/23
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
    <c:choose>
        <c:when test="${result}">
            <h1>Congrats, you guessed correctly!</h1>
        </c:when>
        <c:otherwise>
            <h1>You guessed wrong!</h1>
        </c:otherwise>
    </c:choose>
    <a href="/guess">Want to play again?</a>
</body>
</html>
