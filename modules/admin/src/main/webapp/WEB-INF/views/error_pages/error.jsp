<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<fmt:bundle basename="messages">
  <div class="container">
    <div class="error">
      <fmt:message ><c:out value='${model.errorMessage}'/></fmt:message>
    </div>
    <c:url var="Back" value="${model.redirectUrl}"/>
    <input id="btn" class="button" type="submit" value="Back" onclick="window.location='${Back}';"/>
    </a>
  </div>
  </body>
</fmt:bundle>