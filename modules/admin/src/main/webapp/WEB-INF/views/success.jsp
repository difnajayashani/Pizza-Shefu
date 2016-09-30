<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<fmt:bundle basename="messages">
  <div class="container">
    <div class="success">
      <fmt:message ><c:out value='${model.successMessage}'/></fmt:message>
    </div>
    <c:url var="Back" value="${model.redirectUrl}"/>

      <%--<a href="<c:url value="${validator.redirectUrl}" />">--%>
      <%----%>
      <%--</a>--%>

    <input id="btn" class="button" type="submit" value="Back" onclick="window.location='${Back}';" />

      <%--<input type="button" class="button_left_most" value="Cancel" onclick="window.location='${cancel}';" />--%>

  </div>
  </body>
</fmt:bundle>