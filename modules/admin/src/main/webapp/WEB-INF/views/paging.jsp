<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>

<pg:pager url="${myAppUrl}" export="currentPageNumber=pageNumber;" items="${dataListSize}" isOffset="true" >

    <pg:index>
        <pg:prev>&nbsp;<a href="<c:out value="${pageUrl}"/>">Prev</a></pg:prev>

        <pg:pages>
            <c:choose>
                <c:when test="${pageNumber == currentPageNumber}">
                    <span class="this-page"><c:out value="${pageNumber}"/></span>
                </c:when>
                <c:otherwise>
                    <a href="<c:out value="${pageUrl}"/>"><c:out value="${pageNumber}"/></a>
                </c:otherwise>
            </c:choose>
        </pg:pages>

        <pg:next>&nbsp;<a href="<c:out value="${pageUrl}"/>">Next</a></pg:next>
    </pg:index>
</pg:pager>