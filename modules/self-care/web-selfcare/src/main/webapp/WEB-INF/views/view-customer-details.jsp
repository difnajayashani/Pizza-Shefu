<!DOCTYPE html>
<html>
<head>
    <%@include file="include.jsp" %>
    <title><fmt:message key="view.title" bundle="${lang}"/></title>

</head>

<body style="overflow: visible">
<div class="loader-anim"></div>
<%@include file="NewHeader.jsp" %>

<div class="brand"></div>
<center>
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">

                </div>
            </div>


            <p style="font-size: xx-large;text-align: left;color: #f5f5f5"><fmt:message key="view.my" bundle="${lang}"/></p>

            <div class="col-sm-12" style="height: 40px"></div>
            <div class="row">
                <div class="col-sm-9">
                    <form role="form" id="adduser_form" action="" method="post" class="form-horizontal"
                          style="width: 800px">

                        <fieldset style="border: groove;width: 700px;color: #985f0d">


                            <div style="height: 30px"></div>
                            <div class="form-group">

                                <label class="col-sm-2 control-label datalabel">
                                    <fmt:message key="signup.name" bundle="${lang}"/>
                                </label>

                                <div class="col-sm-4">
                                    <input class="form-control detailinput" id="fname" type="text" disabled>
                                </div>


                            </div>
                            <div class="form-group">

                                <label class="col-sm-2 control-label datalabel">
                                    <fmt:message key="signup.address" bundle="${lang}"/>

                                </label>

                                <div class="col-sm-4">
                                    <textarea class="form-control detailinput" id="address1" type="text" placeholder=""
                                              disabled></textarea>
                                </div>


                            </div>

                            <div class="form-group">


                                <label class="col-sm-2 control-label datalabel">
                                    <fmt:message key="view.birth" bundle="${lang}"/>
                                </label>

                                <div class='col-sm-4'>
                                    <input class="form-control detailinput" id="dob" type="text" disabled>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="mobileNo" class="col-sm-2 control-label datalabel">
                                    <fmt:message key="delivery.contact" bundle="${lang}"/>
                                </label>

                                <div class="col-sm-4">
                                    <input class="form-control detailinput" id="mobileNo" type="text" disabled>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="email" class="col-sm-2 control-label datalabel">
                                    <fmt:message key="signup.email" bundle="${lang}"/>
                                </label>

                                <div class="col-sm-4">
                                    <input class="form-control detailinput" id="email" type="text" disabled>
                                </div>
                            </div>
                            <div style="height: 20px"></div>

                        </fieldset>


                    </form>
                </div>
                <div class="col-sm-3">
                    <div class="col-sm-12" style="height: 45px"></div>

                    <div class="col-sm-12">
                        <button type="button" class="btn btn-lg btn-info">Edit Details</button>
                    </div>
                    <div class="col-sm-12" style="height: 45px"></div>
                    <div class="col-sm-12">
                        <button type="button" class="btn btn-lg btn-warning" data-toggle="modal"
                                data-target="#passwordModal">Reset Password
                        </button>
                    </div>
                    <div class="col-sm-12" style="height: 45px"></div>

                    <div class="col-sm-12">
                        <button type="button" class="btn btn-lg btn-primary">Cart History</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <a href="http://gazpo.com/downloads/tutorials/jquery/scrolltop/#" class="scrollup" style="display: none;">Scroll</a>

</center>

</body>

<%@include file="footer.jsp" %>

<!-------------------------------------- Modal--------------------------------- -->
<div id="passwordModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" style="background-color: #99b176">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" style="color:#ffffff;font-size: x-large">Change Password</h4>
            </div>
            <div class="modal-body">
                <div class="panel-body">
                    <form role="form" action="" method="post" class="form-horizontal">

                        <div class="form-group">

                            <label class="col-sm-4 control-label">
                                <fmt:message key="fgtpswd.new" bundle="${lang}"/>
                            </label>

                            <div class="col-sm-6">
                                <input class="form-control" id="passnew" type="text" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">

                            <label class="col-sm-4 control-label">
                                <fmt:message key="fgtpswd.re" bundle="${lang}"/>
                            </label>

                            <div class="col-sm-6">
                                <input class="form-control" id="repwd" type="text" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-5"></div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success"><fmt:message key="view.change" bundle="${lang}"/></button>
                        </div>


                    </form>

                </div>
            </div>

        </div>

    </div>
</div>
</html>

