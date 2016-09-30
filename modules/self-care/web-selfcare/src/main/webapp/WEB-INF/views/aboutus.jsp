<!DOCTYPE html>
<html>
<head>
    <title>About us</title>
    <%@include file="include.jsp" %>

</head>
<body style="overflow: visible">
<div class="loader-anim"></div>
<%@include file="NewHeader.jsp" %>
<div class="col-sm-12"></div>

<div class="brand"></div>
<div class="inner-bg">
    <div class="container">
        <div class="col-sm-12" style="height: 60px"></div>


        <div>
            <div class="panel panel-success col-sm-2" style="width: 700px">
                <div class="panel-heading" style="height: 50px">
                    <p style="font-size: xx-large;text-align: left"><fmt:message key="aboutus" bundle="${lang}"/></p>
                </div>
                <div class="panel-body">
                    <form role="form" id="adduser_form" action="" method="post" class="form-horizontal">
                        <p style="font-size: x-large">
                            <fmt:message key="aboutus.content" bundle="${lang}"/>
                        </p>

                    </form>

                </div>

            </div>
            <div class="col-sm-4" style="width: 100px"></div>
            <img src="<c:url value="/resources/images/pizza_hut_eabout2.png"/>"  style="width: 330px;height: 250px">
        </div>
    </div>
</div>

<a href="http://gazpo.com/downloads/tutorials/jquery/scrolltop/#" class="scrollup" style="display: none;">Scroll</a>

<%@include file="loginload.jsp" %>
<%@include file="signupmodal.jsp" %>
</body>
</html>
