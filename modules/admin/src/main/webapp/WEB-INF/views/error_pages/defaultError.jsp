<%@ page import="org.slf4j.Logger" %>
<%@ page import="org.slf4j.LoggerFactory" %>
<%@ page session="false" isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%
  final Logger logger = LoggerFactory.getLogger("defaultError_jsp");
  logger.error("Error in web application", exception);
%>

<fmt:bundle basename="messages">
    <div class="container">
        <div class="error">
            <fmt:message key="cm.default.error.while.processing"/>
        </div>
    </div>
    </body>
</fmt:bundle>