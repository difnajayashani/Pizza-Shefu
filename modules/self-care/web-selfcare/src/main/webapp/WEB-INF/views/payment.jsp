<!DOCTYPE html>
<html>
<head lang="en">
    <%@include file="include.jsp" %>
    <title><fmt:message key="delivery.payment" bundle="${lang}"/></title>
    <link rel="shortcut icon" href="">


    <link rel="stylesheet" href="<c:url value="/resources/css/progress-wizard.min.css"/>" >
    <script src="<c:url value="/resources/js/payment-operations.js"/>" ></script>


</head>
<body>
<div class="loader-anim"></div>

<%@include file="NewHeader.jsp" %>

<div class="main-div">
    <div class="section">
        <div class="panel panel-default">
            <div class="panel-heading">
                <img class="icons" src="<c:url value="/resources/images/icons/payment-method.png"/>" >
                <h3 class="header-panel"><fmt:message key="payment.setup" bundle="${lang}"/></h3>
            </div>
            <div class="panel-body">
                <ul class="progress-indicator">
                    <li class="completed"><span class="bubble"></span><fmt:message key="delivery" bundle="${lang}"/></li>
                    <li class="active"><span class="bubble"></span><fmt:message key="delivery.payment" bundle="${lang}"/></li>
                    <li><span class="bubble"></span><fmt:message key="delivery.verify" bundle="${lang}"/></li>
                    <li><span class="bubble"></span><fmt:message key="delivery.success" bundle="${lang}"/></li>
                </ul>

                <div class="container" style="width:1000px;">
                    <div class="row">
                        <div class="col-md-6">
                            <h4>Sender details</h4>
                            <hr>
                            <div class="col-md-12">
                                <form role="form">
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"><fmt:message key="payment.same" bundle="${lang}"/></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label"><fmt:message key="delivery.first" bundle="${lang}"/></label>
                                        <input class="form-control" type="text">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label"><fmt:message key="signup.last.name" bundle="${lang}"/></label>
                                        <input class="form-control" type="text">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label"><fmt:message key="signup.email" bundle="${lang}"/></label>
                                        <input class="form-control" type="text">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label"><fmt:message key="delivery.contact" bundle="${lang}"/></label>
                                        <input class="form-control" type="text">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h4><fmt:message key="payment.prefer" bundle="${lang}"/></h4>
                            <hr>
                            <label><fmt:message key="payment.method" bundle="${lang}"/>&nbsp;</label>

                            <div class="radio">
                                <label>
                                    <input type="radio" name="paymentradio" id="radio-delivery" value="payondel"
                                           checked=""><fmt:message key="payment.on.delivery" bundle="${lang}"/></label>&nbsp;&nbsp;
                                <label>
                                    <input type="radio" name="paymentradio" id="radio-pickup" value="payonline"><fmt:message key="payment.onlin" bundle="${lang}"/></label>
                            </div>
                            <a class="btn btn-success btn-proceed-payment" id="btn-pay"><span class="glyphicon glyphicon-send"></span>&nbsp;&nbsp;<fmt:message key="payment.cont" bundle="${lang}"/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<a href="#" class="scrollup"></a>
</body>
</html>