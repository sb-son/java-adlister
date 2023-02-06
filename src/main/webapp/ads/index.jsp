<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shawn
  Date: 2/6/23
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads</title>
</head>
<body>
<h1>Ads</h1>

<c:forEach var="ad" items="${ads}">
    <h3>${ad.title}</h3>
    <span>id:${ad.id} user ID: ${ad.userId}</span>
    <p>${ad.description}</p>
</c:forEach>



</body>
</html>
