<!DOCTYPE html>
<html>
<head lang="en">
    <title>Order Success</title>
    <link rel="shortcut icon" href="">

    <%@include file="include.jsp" %>
    <link rel="stylesheet" href="<c:url value="/resources/css/progress-wizard.min.css"/>" >

</head>
<body>
<div class="loader-anim"></div>
<%@include file="NewHeader.jsp" %>
<div class="main-div">
    <div class="section">
        <div class="panel panel-default">
            <div class="panel-heading">
                <img class="icons" src="<c:url value="/resources/images/icons/list-correct.png"/>">
                <h3 class="header-panel">Order placed</h3>
            </div>
            <div class="panel-body">
                <ul class="progress-indicator">
                    <li class="completed"><span class="bubble"></span><fmt:message key="delivery" bundle="${lang}"/></li>
                    <li class="completed"><span class="bubble"></span><fmt:message key="delivery.payment" bundle="${lang}"/></li>
                    <li class="completed"><span class="bubble"></span><fmt:message key="delivery.verify" bundle="${lang}"/></li>
                    <li class="completed"><span class="bubble"></span><fmt:message key="delivery.success" bundle="${lang}"/></li>
                </ul>

                <div class="container" style="width:800px;;">
                    <div style="text-align: center;">
                        <img src="<c:url value="/resources/images/icons/success.png"/>"  width="100px" height="100px">

                        <h1><fmt:message key="success.thank" bundle="${lang}"/></h1>
                    </div>
                    <div>
                        <h4><fmt:message key="delivery.success" bundle="${lang}"/>Your order has placed successfully...Here are some details of your order.</h4>
                    </div>
                    <div><label><fmt:message key="success.id" bundle="${lang}"/></label></div>
                    <div><label><fmt:message key="success.date" bundle="${lang}"/></label></div>
                    <div><label><fmt:message key="shopping.total" bundle="${lang}"/>:</label></div>
                    <div><label><fmt:message key="success.type" bundle="${lang}"/></label></div>
                    <div><label><fmt:message key="success.status" bundle="${lang}"/></label></div>

                    <div>
                        <a href="home"><fmt:message key="success.click" bundle="${lang}"/></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<a href="#" class="scrollup"></a>
</body>
</html>