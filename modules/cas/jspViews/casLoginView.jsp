<jsp:directive.include file="includes/top.jsp"/>

<c:if test="${not pageContext.request.secure}">
    <div id="msg" class="errors">
        <h2><spring:message code="screen.nonsecure.title"/></h2>

        <p><spring:message code="screen.nonsecure.message"/></p>
    </div>
</c:if>

<div id="cookiesDisabled" class="errors" style="display:none;">
    <h2><spring:message code="screen.cookies.disabled.title"/></h2>

    <p><spring:message code="screen.cookies.disabled.message"/></p>
</div>


<c:if test="${not empty registeredService}">
    <c:set var="registeredServiceLogo" value="images/webapp.png"/>
    <c:set var="registeredServiceName" value="${registeredService.name}"/>
    <c:set var="registeredServiceDescription" value="${registeredService.description}"/>

    <c:choose>
        <c:when test="${not empty mduiContext}">
            <c:if test="${not empty mduiContext.logoUrl}">
                <c:set var="registeredServiceLogo" value="${mduiContext.logoUrl}"/>
            </c:if>
            <c:set var="registeredServiceName" value="${mduiContext.displayName}"/>
            <c:set var="registeredServiceDescription" value="${mduiContext.description}"/>
        </c:when>
        <c:when test="${not empty registeredService.logo}">
            <c:set var="registeredServiceLogo" value="${registeredService.logo}"/>
        </c:when>
    </c:choose>

    <div id="serviceui" class="serviceinfo">
        <table>
            <tr>
                <td><img src="${registeredServiceLogo}"></td>
                <td id="servicedesc">
                    <h1>${fn:escapeXml(registeredServiceName)}</h1>

                    <p>${fn:escapeXml(registeredServiceDescription)}</p>
                </td>
            </tr>
        </table>
    </div>
    <p/>
</c:if>

<div class="box">
    <form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true">

        <h2><spring:message code="screen.welcome.instructions"/></h2>

        <form:errors path="*" id="msg" cssClass="errors" element="div" htmlEscape="false"/>
        <br>
        <section class="row" id="row1">
            <label for="username"><spring:message code="screen.welcome.label.netid"/></label>
            <c:choose>
                <c:when test="${not empty sessionScope.openIdLocalId}">
                    <strong><c:out value="${sessionScope.openIdLocalId}"/></strong>
                    <input type="hidden" id="username" name="username"
                           value="<c:out value="${sessionScope.openIdLocalId}" />" />
                </c:when>
                <c:otherwise>
                    <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey"/>
                    <form:input cssClass="required" cssErrorClass="error" id="username" size="25" tabindex="1"
                                accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true"/>
                </c:otherwise>
            </c:choose>
        </section>

        <section class="row" id="row2">
            <label for="password"><spring:message code="screen.welcome.label.password"/></label>
            <%--
            NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
            "autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
            information, see the following web page:
            http://www.technofundo.com/tech/web/ie_autocomplete.html
            --%>
            <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey"/>
            <form:password cssClass="required" cssErrorClass="error" id="password" size="25" tabindex="2"
                           path="password" accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off"/>
            <span id="capslock-on" style="display:none;"><p><img src="images/warning.png" valign="top"> <spring:message
                    code="screen.capslock.on"/></p></span>
        </section>

        <!--
        <section class="row check">
        <p>
        <input id="warn" name="warn" value="true" tabindex="3" accesskey="<spring:message code="screen.welcome.label.warn.accesskey" />" type="checkbox" />
        <label for="warn"><spring:message code="screen.welcome.label.warn" /></label>
        <br/>
        <input id="publicWorkstation" name="publicWorkstation" value="false" tabindex="4" type="checkbox" />
        <label for="publicWorkstation"><spring:message code="screen.welcome.label.publicstation" /></label>
        <br/>
        <input type="checkbox" name="rememberMe" id="rememberMe" value="true" tabindex="5"  />
        <label for="rememberMe"><spring:message code="screen.rememberme.checkbox.title" /></label>
        </p>
        </section>
        -->

        <section class="row btn-row">
            <input type="hidden" name="lt" value="${loginTicket}"/>
            <input type="hidden" name="execution" value="${flowExecutionKey}"/>
            <input type="hidden" name="_eventId" value="submit"/> </section>
            <section class="row btn-row">
            <input class="btn-submit login-pg-button" name="submit" accesskey="l" value="Login" tabindex="6" type="submit" />
            <input class="btn-reset login-pg-button" name="reset" accesskey="c" value="Clear" tabindex="7" type="reset" />
        </section>
    </form:form>
</div>

<jsp:directive.include file="includes/bottom.jsp"/>