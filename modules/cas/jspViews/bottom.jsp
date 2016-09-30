
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</div> <!-- END #content -->

<footer>
    <div id="copyright">
        <p><spring:message code="copyright" /></p>
        <p id="footer-sub-msg">Powered by <a href="http://www.apereo.org/cas">Apereo Central Authentication Service <%=org.jasig.cas.CasVersion.getVersion()%></a>
        <br>hSenid Software International- 2016</p>
    </div>
</footer>

</div> <!-- END #container -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/headjs/1.0.3/head.min.js"></script>
<spring:theme code="cas.javascript.file" var="casJavascriptFile" text="" />
<script type="text/javascript" src="<c:url value="${casJavascriptFile}" />"></script>
</body>
</html>

