<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shawn
  Date: 2/2/23
  Time: 1:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form name="login-form" action="login.jsp" method="POST">
        <div>Username: </div>
        <input type="text" name="username"/>
        <br/>
        <div>Password: </div>
        <input type="password" name="password"/>
        <input type="submit" name="submit" value="submit"/>
    </form>

    <c:if test="${param.submit != null}">
        <c:choose>
            <c:when test="${param.username == 'admin' && param.password == 'password'}">
                <% response.sendRedirect("/profile.jsp"); %>
            </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp"> </c:redirect>
            </c:otherwise>
        </c:choose>
    </c:if>
</body>
</html>
