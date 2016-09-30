<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Image</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <fmt:setLocale value="en"/>

    <fmt:setBundle basename="messages" var="lang"/>
</head>
<body>
<h1>Form</h1>
<form th:action="@{/testt}" th:object="${greeting}">
  <p>Id: <input type="text" th:field="*{id}" /></p>
  <p>Message: <input type="text" th:field="*{content}" /></p>
  <p><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></p>
</form>
<p th:text="'id: ' + ${greeting.id}" />
<p th:text="'content: ' + ${greeting.content}" />
<a href="test">Submit another message</a>

<c:set var="balance" value="120000.2309" />
<p>Formatted Number (1): <fmt:formatNumber value="${balance}" type="currency"/></p>



<fmt:message key="login.title" bundle="${lang}"/>


</body>
</html>
