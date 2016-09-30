<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:bundle basename="messages">

    <fmt:message key="footer.copy.right"/>
    <fmt:message var="companyURL" key="footer.m1.url"/>
        <a target="_blank" href="${companyURL}"><fmt:message key="footer.m1.name"/></a><fmt:message key="footer.comma"/>

    <fmt:message var="companyURL" key="footer.comapany.url"/>
    <a target="_blank" href="${companyURL}"><fmt:message key="footer.company.name"/></a>
    <fmt:message key="footer.all.rights.reserved"/>
</fmt:bundle>