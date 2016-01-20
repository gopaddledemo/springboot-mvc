<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<body>
<h1 align="center">Demo Application : Continuous Delivery using goPaddle</h1>
<h2><spring:message code="user.list"/></h2>
<ul  type="disc;" style="background: #ff9999;padding: 5px;">
    <%--@elvariable id="users" type="java.util.List"--%>
    <c:forEach items="${users}" var="user">
        <li style="background: #ffe5e5; padding: 5px; margin-left: 35px;">
            <c:out value="${user.getId()}"/>
        </li>
    </c:forEach>
</ul>

<a href="<spring:url value="/user_create.html" />"><spring:message code="user.create"/></a>
</body>
</html>
