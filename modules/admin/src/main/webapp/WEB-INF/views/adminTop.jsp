<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!-- CSS -->
<spring:url value="../themes/hsenid/bootstrap/css/bootstrap.min.css" var="css1"/>
<spring:url value="../themes/hsenid/css/business-casual.css" var="css2"/>

<link href="${css1}" rel="stylesheet">
<link href="${css2}" rel="stylesheet">


<!-- Javascript -->
<spring:url value="/themes/hsenid/bootstrap/js/jquery-3.1.0.min.js" var="js1"/>
<spring:url value="/themes/hsenid/bootstrap/js/bootstrap.min.js" var="js2"/>

<script src="${js1}"></script>
<script src="${js2}"></script>


<!-- Fonts -->
<spring:url value="/themes/hsenid/bootstrap/css/fonts.css" var="css4"/>
<link href="${css4}" rel="stylesheet">

<!--bootstrap table-->
<spring:url value="/themes/hsenid/bootstrap/css/bootstrap-table.min.css" var="css1"/>
<link href="${css1}" rel="stylesheet">

<spring:url value="/themes/hsenid/bootstrap/js/bootstrap-table.min.js" var="js3"/>
<script src="${js3}"></script>

<%--jquery toaster--%>
<spring:url value="/themes/hsenid/js/jquery.toaster.js" var="jsToast"/>
<script src="${jsToast}"></script>





