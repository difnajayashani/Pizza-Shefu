<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head lang="en">

    <meta charset="UTF-8">
    <title>View Package</title>

    <!--include common CSS, fonts and js-->
    <link rel="import" href="adminTop.html">

    <link href="../css/itemMgt.css" rel="stylesheet">
    <script src="../js/jquery.toaster.js"></script>
    <script src="../js/itemMgt.js"></script>
    <script src="../js/tablePackges.js"></script>
    <script src="../js/myAlerts.js"></script>

</head>

<body>

<object width="100%" data="header.html"></object>

<div class="brand">
    <div style="position: relative; left: -50%;">
        Package Management
    </div>
</div>
<br>

<div class="breadcrumbPosition">
    <div style="position: relative; left: -50%;">
        <ul class="breadcrumb breadcrumb-menu">
            <li><a href="home.html">Home</a></li>
            <li><a href="#">Package Management</a></li>
            <li class="active"><a href="#">View Package</a></li>
        </ul>
    </div>
</div>

<div class="form-box" id="view-pkg-form-box">
    <div class="panel panel-default">
        <div class="panel-heading  common-form-headings">
            <h3 class="default-panel-headings">View Package</h3>
        </div>

        <div class="panel-body">

            <div class="row itemSearchBar">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <form:label class="control-label" style="float: right;" path="lblpkgnmVw">
                        Package Name :
                    </form:label>

                </div>
                <div class="col-sm-4">
                    <form:input class="form-control" id="txtViewSearchPkg" type="text" path="txtpkgsrchVw"></form:input>
                </div>
                <div class="col-sm-3">
                    <form:button type="button" class="btn btn-success" id="btnViewSearchPkg"><span
                            class="glyphicon glyphicon-search"></span> Search
                    </form:button>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br>

            <form:form class="form-horizontal" role="form" id="frmViewPkg" action="/view_package" method="post">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">Available Packages</legend>

                    <!--table of package details-->
                    <table id="tblPackages">

                    </table>

                </fieldset>

                <br>

                <div class="row" align="left">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-success bckToHome" id="btnViewPkgBack"><span
                                class="glyphicon glyphicon-chevron-left"></span> Back to home
                        </button>
                    </div>
                </div>
                <br>
            </form:form>
        </div>

    </div>
</div>

<!--Modal for delete package-->
<div class="modal fade" id="pkgDeleteModal">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header item-modal-header-style">
                <form:button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                        class="glyphicon glyphicon-remove"></span></form:button>
                <div align="center"><span class="glyphicon glyphicon-trash"></span> Delete Package
                </div>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <form:label id="lblDeltPkgMsg" path="lblpkgdltmsg">Do you really want to delete this Package ?</form:label><br><br>

                    <div align="center">
                        <form:label id="lblDeltPkgId" path="lblpkgdltID">Package ID : xxxxxx </form:label><br>
                        <form:label id="lblDeltPkgName" path="lblpkgDltNm">Pacakge Name : yyyyyy </form:label><br>
                    </div>
                </div>
            </div>
            <div class="modal-footer" align="right">
                <form:button class="btn btn-success" type="button" value="Yes" id="btnDeltPkg">Yes
                </form:button>
                <form:button class="btn btn-success" type="button" value="cancel" id="btnCnclDeltPkg">
                    No
                </form:button>
            </div>
        </div>
    </div>
</div>


<!--Modal for edit package-->
<div class="modal fade" id="pkgEditModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header item-modal-header-style">
                <form:button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                        class="glyphicon glyphicon-remove"></span></form:button>
                <div align="center"><span class="glyphicon glyphicon-pencil"></span> Edit Package
                </div>
            </div>
            <div class="modal-body">

                <form:form class="form-horizontal" role="form" id="frmEditPkg" action="/edit_package">
                    <fieldset class="scheduler-border">
                        <legend class="scheduler-border">(*) Edit relevant fields</legend>

                        <div class="form-group">

                            <div class="row">
                                <div class="col-xs-4" align="right">
                                    <form:label id="lblEditPkgId" path="lblpkgEdtId">Package ID : * </form:label>
                                </div>
                                <div class="col-xs-5">
                                    <form:input type="text" id="txtEditPkgId" class="form-control" readonly="true" path="txtedtPkgID"></form:input>
                                </div>
                                <div class="col-xs-3" align="center">
                                </div>
                            </div>
                            <br>

                            <div class="row">
                                <div class="col-xs-4" align="right">
                                    <form:label id="lblEditPkgNm" path="lblpkgEDtNm">Package Name : </form:label>
                                </div>
                                <div class="col-xs-5">
                                    <form:input class="form-control" type="text" id="txtEditPkgNm" path="txtedtpkgNm"></form:input>
                                </div>
                                <div class="col-xs-3">
                                </div>
                            </div>

                            <br>

                            <div class="row">
                                <div class="col-xs-4" align="right">
                                    <form:label path="lblpkgCont">Package Content : </form:label>
                                </div>
                                <div class="col-xs-5">
                                    <form:textarea class="form-control" id="editPkgCont" path="txtareapkgCont"></form:textarea>
                                </div>
                                <div class="col-xs-3" align="left">
                                    <form:label id="lblEditPkgCont" onclick="" path="lbledtpkgCont"> <span
                                            class="badge edit-pkg-Badges edt glyphicon glyphicon-edit"><a href="#" id="lnkModalView"> Edit</a></span>
                                    </form:label>
                                </div>
                            </div>

                            <br>

                            <div class="row">
                                <div class="col-xs-4" align="right">
                                    <form:label path="lblpkgImgEdt"> Package Images : </form:label>
                                </div>
                                <div class="col-xs-5">
                            <div class="list-group row" style="margin:auto; padding: 5px;">

                                <ul class="list-group">
                                    <li class="list-group-item">image 1.png
                                <span class="badge">
                                  <div class="itemList">
                                    <span class="glyphicon glyphicon-remove">
                                    </span> <a href="">Remove</a>
                                  </div>
                                </span>
                                    </li>
                                    <li class="list-group-item">image 1.png
                                <span class="badge">
                                  <div class="itemList">
                                    <span class="glyphicon glyphicon-remove">
                                    </span> <a href="">Remove</a>
                                  </div>
                                </span>
                                    </li>
                                    <li class="list-group-item">image 1.png
                                <span class="badge">
                                  <div class="itemList">
                                    <span class="glyphicon glyphicon-remove">
                                    </span> <a href="">Remove</a>
                                  </div>
                                </span>
                                    </li>

                                    <li class="list-group-item">&nbsp;
                                <span class="badge">
                                  <div class="edit-pkg-Badges">
                                    <span class="glyphicon glyphicon-plus">
                                    </span> <a href="">Add New</a>
                                  </div>
                                </span>
                                    </li>
                                </ul>
                            </div>
</div>
                            <br>

                            <div class="row">
                                <div class="col-xs-4" align="right">
                                    <form:label path="lblpkgPrcEdt">Package Price : </form:label>
                                </div>
                                <div class="col-xs-5">
                                    <form:input type="text" class="form-control price" id="editPkgPrice" placeholder="LKR 0.00" path="txtedtpkgPrc"></form:input>
                                </div>
                                <div class="col-xs-3" align="center">
                                </div>
                            </div>

                        </div>
                            </div>
                    </fieldset>
                </form:form>

            </div>
            <div style="text-align: center; z-index: 50000; width: 50%; margin: auto;" id="toaster"></div>
            <div class="modal-footer" align="right">
                <form:button class="btn btn-success" type="button" value="Yes" id="btnUpdtPkgDelt">Update package details
                </form:button>
                <form:button class="btn btn-success" type="button" value="cancel" id="btnPkgBack">Back
                </form:button>
                <form:button class="btn btn-success" type="button" value="cancel" id="btnPkgCancel">Cancel
                </form:button>
            </div>
        </div>
    </div>
</div>


<!--Modal for edit package content -->
<div class="modal fade" id="pkgViewModal">
    <div class="modal-dialog modal-md">
        <div class="modal-content">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                        class="glyphicon glyphicon-remove"></span></button>
                <br>

                <div id="editModalContent">

                </div>

            </div>

            <div class="modal-footer" align="right">
                <button class="btn btn-success" type="button" value="Yes" id="btnSvEditPkgCont">Save edits
                </button>
                <button class="btn btn-success" type="button" value="cancel">Back
                </button>
                <button class="btn btn-success" type="button" value="clear">Clear
                </button>
            </div>
        </div>
    </div>
</div>

</body>
</html>