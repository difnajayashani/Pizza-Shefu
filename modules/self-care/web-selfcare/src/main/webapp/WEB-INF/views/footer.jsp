
<link href="<c:url value="/resources/css/scroll_top.css"/>" rel="stylesheet" type="text/css">


<div id="footer" style="position: fixed;height: 42px;background-color: #cfc8c8">
    <!--<div style="height: 22px"></div>-->

    <div class="form-group row static">

        <label class="col-sm-4 control-label">
            <div style="height: 10px"></div>

            <p class="text-muted" style="color: #545454"><fmt:message key="footer.text" bundle="${lang}"/><a href="<c:url value="https://www.hsenidmobile.com/"/>"
                                                                        style="color:#313131 "><fmt:message key="company" bundle="${lang}"/></a></p>
        </label>

        <div class="col-sm-4">

            <label class="  ">
                <h5 style="color: #313131"><fmt:message key="footer.hotline" bundle="${lang}"/> <fmt:message key="footer.mobile" bundle="${lang}"/></h5>
            </label>
        </div>
        <div class="col-sm-4">

            <label class="radio-inline">
                <img style="width: 130px;height: 55px" src="<c:url value="/resources/images/google-play-store-button.png"/>" >
            </label>
        </div>
        <a href="<c:url value="http://gazpo.com/downloads/tutorials/jquery/scrolltop/#"/>" class="scrollup"
           style="display: none;"><fmt:message key="location.scroll" bundle="${lang}"/></a>


    </div>
    <ul class="nav pull-right scroll-top">
        <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
    </ul>
</div>
<script src="<c:url value="/resources/js/scroll_top.js"/>" ></script>