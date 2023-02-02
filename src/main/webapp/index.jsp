<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adlister</title>
</head>
<body>
<%--    <%@include file="partials/navbar.jsp" %>--%>
    <jsp:include page="partials/navbar.jsp" />
    <h1>Welcome to AdLister</h1>
    <hr />
    <%! int counter = 0; %>
    <% counter += 1; %>
    <%= counter %>
    <%--  Comments!  --%>
<%--    <p>${counter}</p>--%>
    <% request.setAttribute("counter", counter); %>
    <c:choose>
        <c:when test="${counter == 1}">
        <h1>You are the first visitor to this page!</h1>
        </c:when>
        <c:otherwise>
            <h1>You are viewer number: ${counter}</h1>
        </c:otherwise>
    </c:choose>
<%--    <% out.println("welcome to jsp"); %>--%>

<%--    <h1>Howdy, <%= request.getParameter("name") %>!</h1>--%>
<%--    <c:choose>--%>
<%--        <c:when test="${param.name != null}">--%>
<%--            <h1>Howdy, ${param.name}!</h1>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <h1>Howdy!</h1>--%>
<%--        </c:otherwise>--%>
<%--    </c:choose>--%>

    <c:if test="${param.name != null}">
        <h1>Howdy, ${param.name}</h1>
    </c:if>
    <c:if test="${param.name == null}">
        <h1>Howdy!</h1>
    </c:if>

<%-- Another way of accessing the request parameter above using expression language --%>
<%--    <h1>Howdy, ${param.name}!</h1>--%>


    <% request.setAttribute("numbers", new int[]{1, 2, 3, 4, 5, 6, 7}); %>
    <ul>
        <c:forEach items="${numbers}" var="n">
            <li>${n}</li>
        </c:forEach>
    </ul>


</body>
</html>
