<!DOCTYPE html>
<html>
<head>
    <%@include file="include.jsp" %>

    <script src="<c:url value="/resources/js/contactus_validate.js"/>" ></script>
    <script src="<c:url value="/resources/js/validate-inputs.js"/>" ></script>
    <script src="<c:url value="/resources/js/fgtpswd.js"/>" type="text/javascript"></script>

</head>
<div class="loader-anim"></div>


<body style="overflow: visible">
<%@include file="NewHeader.jsp" %>

<div class="brand"></div>
<center>
    <div class="inner-bg">
        <div class="container">
            <div class="col-sm-12" style="height: 60px"></div>

            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">

                </div>
            </div>

            <div class="panel panel-success" style="width: 800px">
                <div class="panel-heading" style="height: 50px">
                    <p style="font-size: xx-large;text-align: left">Reset Password</p>
                </div>
                <div class="panel-body">
                    <form role="form" id="adduser_form" action="" method="post" class="form-horizontal">

                        <div class="form-group">

                            <label class="col-sm-4 control-label">
                                <fmt:message key="signup.email" bundle="${lang}"/>
                            </label>

                            <div class="col-sm-6">

                                <input class="form-control" id="txt-email" type="email" placeholder=""  required>
                                <label id="email_error" class="error-labels"></label>

                            </div>

                        </div>
                        <div class="form-group">

                            <label class="col-sm-4 control-label">
                                <fmt:message key="fgtpswd.new" bundle="${lang}"/>
                            </label>

                            <div class="col-sm-6">
                                <input class="form-control" id="passnew" type="text" placeholder="" required>
                            </div>
                        </div>
                        <div class="form-group">

                            <label class="col-sm-4 control-label">
                                <fmt:message key="fgtpswd.re" bundle="${lang}"/>
                            </label>

                            <div class="col-sm-6">
                                <input class="form-control" id="repwd" type="text" placeholder="" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <button id="btn-proceed-submit" type="submit" class="btn btn-success"  onclick="api_type('info')"><fmt:message key="fgtpswd.reset" bundle="${lang}"/></button>
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div>
</center>
<%@include file="loginload.jsp" %>
<%@include file="signupmodal.jsp" %>


</body>
<%@include file="footer.jsp" %>
</html>

