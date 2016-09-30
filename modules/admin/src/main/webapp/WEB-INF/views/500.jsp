<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<fmt:bundle basename="messages">
    <div class="container">
        <div class="error">
            <fmt:message>HTTP Error 500 - Internal server error</fmt:message>
        </div>
        <c:choose>
            <c:when test="${param.redirectUrl eq null or param.redirectUrl eq ''}">
                <c:url var="Back" value="/welcome.html"/>
            </c:when>
            <c:otherwise>
                <c:url var="Back" value="${param.redirectUrl}">
                    <c:param name="navi" value="${param.navi}"/>
                </c:url>
            </c:otherwise>
        </c:choose>
        <input id="btn" class="button" type="submit" value="Back" onclick="window.location='${Back}';"/>
    </div>
    </body>
</fmt:bundle>