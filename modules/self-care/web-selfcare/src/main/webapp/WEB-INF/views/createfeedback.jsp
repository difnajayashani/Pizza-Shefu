<!DOCTYPE html>
<html>
<head>
    <%@include file="include.jsp" %>
    <title><fmt:message key="feedback.title" bundle="${lang}"/></title>

    <script src="<c:url value="/resources/js/validate-inputs.js"/>" ></script>

    <script src="<c:url value="/resources/js/feedback.js"/>" type="text/javascript"></script>

</head>
<div class="loader-anim"></div>
<body>
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
                    <p style="font-size: xx-large;text-align: left"><fmt:message key="feedback.create" bundle="${lang}"/></p>
                </div>
                <div class="panel-body">
                    <form role="form" id="adduser_form" action="" method="post" class="form-horizontal">

                        <div class="form-group">

                            <label class="col-sm-4 control-label">
                                <fmt:message key="feedback.your" bundle="${lang}"/></label>

                            <div class="col-sm-6">

                                <textarea class="form-control" id="txt-inquirymsg" type="text"
                                          placeholder="Tell how you feel about us" required></textarea>
                                <label id="inquirymsg_error" class="error-labels"></label>

                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-sm-11">
                                <label class="radio">
                                    <input type="radio" name="optradio"><fmt:message key="feedback.display" bundle="${lang}"/>
                                </label></div>
                            <div class="col-sm-11">

                                <label class="radio">
                                    <input type="radio" name="optradio"><fmt:message key="feedback.dont" bundle="${lang}"/>
                                </label>

                            </div>
                        </div>
                        <div class="form-group">

                            <label class="col-sm-4 control-label">
                                <fmt:message key="feedback.name" bundle="${lang}"/></label>

                            <div class="col-sm-6">

                                <input class="form-control" id="txt-fname" type="text" placeholder="<fmt:message key="feedback.shown" bundle="${lang}"/>"
                                       required>
                                <label id="fname_error" class="error-labels"></label>

                            </div>
                        </div>

                        <div class="form-group" style="width: 200px">
                            <button id="btn-proceed-submit" type="submit" class="btn btn-success" onclick="api_type('success')"><fmt:message key="feedback.send" bundle="${lang}"/></button>
                        </div>


                    </form>

                </div>

            </div>
        </div>
    </div>
    <a href="http://gazpo.com/downloads/tutorials/jquery/scrolltop/#" class="scrollup" style="display: none;"><fmt:message key="location.scroll" bundle="${lang}"/></a>

</center>
</body>
</html>
