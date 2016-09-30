<!DOCTYPE html>
<html>
<head lang="en">
    <%@include file="include.jsp" %>
    <title><fmt:message key="delivery.payment" bundle="${lang}"/>Payment</title>

    <link rel="shortcut icon" href="">



    <link rel="stylesheet" href="<c:url value="/resources/css/progress-wizard.min.css"/>" >
    <script src="<c:url value="/resources/js/payment-operations.js"/>" ></script>
    <script src="<c:url value="/resources/js/validate-pay.js"/>" ></script>

</head>
<body>

<div class="loader-anim"></div>

<%@include file="NewHeader.jsp" %>

<div class="main-div">
    <div class="section">
        <div class="panel panel-default">
            <div class="panel-heading">
                <img class="icons" src="<c:url value="/resources/images/icons/pay.png"/>" >
                <h3 class="header-panel"><fmt:message key="pay" bundle="${lang}"/></h3>
            </div>
            <div class="panel-body">
                <ul class="progress-indicator">
                    <li class="completed"><span class="bubble"></span><fmt:message key="delivery" bundle="${lang}"/></li>
                    <li class="completed"><span class="bubble"></span><fmt:message key="delivery.payment" bundle="${lang}"/> Payment</li>
                    <li class="active"><span class="bubble"></span><fmt:message key="delivery.verify" bundle="${lang}"/></li>
                    <li><span class="bubble"></span> <fmt:message key="delivery.success" bundle="${lang}"/></li>
                </ul>
                <div style="text-align: center; margin-top: 40px;">
                    <img src="<c:url value="/resources/images/payment/visa.png"/>" >
                    <img src="<c:url value="/resources/images/payment/master.png"/>" >
                </div>
                <div class="container" style="width:800px;;">
                    <div class="row">
                        <div class="col-md-6">
                            <form role="form">
                                <h4><strong><fmt:message key="pay.total" bundle="${lang}"/> 2000.00</strong></h4>

                                <div class="form-group">
                                    <label class="control-label" for="txt-card-name"><fmt:message key="pay.name.on" bundle="${lang}"/></label>
                                    <label id="cardname_error" class="error-labels"></label>
                                    <input class="form-control" id="txt-card-name"
                                           placeholder="Enter name as appeared on the card" type="text">
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txt-card-no"><fmt:message key="pay.card" bundle="${lang}"/></label>
                                    <label id="cardno_error" class="error-labels"></label>
                                    <input class="form-control" id="txt-card-no"
                                           placeholder="XXXX-XXXX-XXXX-XXXX" type="text">
                                </div>
                                <div>
                                    <label class="control-label"><fmt:message key="pay.expire" bundle="${lang}"/></label>
                                </div>
                                <label for="month"><fmt:message key="pay.month" bundle="${lang}"/></label>

                                <div class="form-group" style="display:inline-block;">
                                    <select class="form-control" id="month">
                                        <option><fmt:message key="pay.jan" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.feb" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.mar" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.apr" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.may" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.jun" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.jul" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.aug" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.sep" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.oct" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.nov" bundle="${lang}"/></option>
                                        <option><fmt:message key="pay.dec" bundle="${lang}"/></option>
                                    </select>
                                </div>
                                <label for="year"><fmt:message key="pay.year" bundle="${lang}"/></label>

                                <div class="form-group" style="display:inline-block;">
                                    <select class="form-control" id="year">
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txt-cvv-no"><fmt:message key="pay.security" bundle="${lang}"/></label>
                                    <label id="cvv_error" class="error-labels"></label>
                                    <input class="form-control" id="txt-cvv-no"
                                           placeholder="XXXX" type="text" size="3" style="width: 70px;">
                                </div>
                                <div style="text-align: right;">
                                    <a class="btn btn-success btn-proceed-payment" id="btn-confirm-pay"
                                       style="width: 45%; margin-left: 25%;"><span class="glyphicon glyphicon-send"></span>&nbsp;&nbsp;<fmt:message key="pay.amount" bundle="${lang}"/> 2000.00)</a>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6" style="margin-top: 10%;">
                            <img src="<c:url value="/resources/images/payment/Credit-Card-Security-Code-Locations.jpg"/>" width="100%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="confirm-payment-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <img class="icons" src="<c:url value="/resources/images/icons/pay-confirm.png"/>" >
                <h4 class="modal-title header-panel"><fmt:message key="pay.confirm" bundle="${lang}"/></h4>
            </div>
            <div class="modal-body">
                <fmt:message key="pay.msg" bundle="${lang}"/>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default" id="btn-pay-cancel" data-dismiss="modal"><fmt:message key="pay.cancel" bundle="${lang}"/>\</a>
                <a class="btn btn-success" id="btn-pay-popup">Pay</a>
            </div>
        </div>
    </div>
</div>

<!-- Payment details incorrect popup -->
<div id="pay-validation-error-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title"><img src="<c:url value="/resources/images/icons/error.png"/>" width="100px" height="100px">&nbsp;&nbsp;<fmt:message key="pay.vali.err" bundle="${lang}"/></h2>
            </div>
            <div class="modal-body">
                <p style="font-size: medium;"><fmt:message key="pay.error" bundle="${lang}"/>
                </p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default" data-dismiss="modal"><fmt:message key="pay.msg" bundle="${lang}"/><fmt:message key="pay.ok" bundle="${lang}"/></a>
            </div>
        </div>
    </div>
</div>
<a href="#" class="scrollup"></a>
</body>
</html>