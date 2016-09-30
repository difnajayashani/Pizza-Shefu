<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head lang="en">

    <meta charset="UTF-8">
    <title>Add new package</title>
    <!-- include common CSS, fonts and js -->
    <jsp:include page="adminTop.jsp"/>

    <%-- Other css --%>
    <spring:url value="/themes/hsenid/css/itemMgt.css" var="cssItem"/>
    <link href="${cssItem}" rel="stylesheet">

    <%--  other javascripts --%>

    <spring:url value="/themes/hsenid/js/itemMgt.js" var="itemJs"/>
    <spring:url value="/themes/hsenid/js/myAlerts.js" var="myAlerts"/>

    <script src="${itemJs}"></script>
    <script src="${myAlerts}"></script>
</head>
<body>


<jsp:include page="header.jsp"/>

<div class="brand">
    <div style="position: relative; left: -50%;">
        Edit Package
    </div>
</div>
<br>

<div>
    <div id="add-pkg-breadcrumb-position">
        <ul class="breadcrumb breadcrumb-menu">
            <li><a href="https://localhost:8443/admin/users/list">Home</a></li>
            <li><a href="#">Package Management</a></li>
            <li class="active"><a href="#">Edit Package</a></li>
        </ul>
    </div>
</div>

<div class="form-box" id="edit-pkg-form-box">
    <div class="panel panel-default">
        <div class="panel-heading common-form-headings">
            <h3 class="default-panel-headings">Edit Package</h3>
        </div>
        <div class="panel-body">

            <form:form class="form-horizontal" role="form" id="frmEditPkg" commandName="editPackage" modelAttribute="editPackage" action="/edit_package">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">(*) Edit relevant fields</legend>

                    <div class="form-group">

                        <div class="row">
                            <div class="col-xs-4" align="right">
                                <label id="lblEditPkgId">Package ID : * </label>
                            </div>
                            <div class="col-xs-5">
                                <input type="text" class="form-control" readonly="true"/>
                            </div>
                            <div class="col-xs-3" align="center">
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-xs-4" align="right">
                                <label id="lblEditPkgNm">Package Name : </label>
                            </div>
                            <div class="col-xs-5">
                                <form:input class="form-control" type="text" path="packName"/>
                            </div>
                            <div class="col-xs-3">
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col-xs-4" align="right">
                                <label path="lblpkgcont">Package Content : </label>
                            </div>
                            <div class="col-xs-5">
                                <form:textarea class="form-control" id="editPkgCont" path="content"/>
                            </div>
                            <div class="col-xs-3" align="left">
                                <label id="lblEditPkgCont" onclick=""> <span
                                        class="badge edit-pkg-Badges glyphicon glyphicon-edit"><a href="#" id="lnkModalView">
                                    Edit</a></span>
                                </label>
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col-xs-4" align="right">
                                <label> Package Images : </label>
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
                                    <label>Package Price : </label>
                                </div>
                                <div class="col-xs-5">
                                    <form:input type="text" class="form-control price" id="editPkgPrice" placeholder="LKR 0.00" path="price"/>
                                </div>
                                <div class="col-xs-3" align="center">
                                </div>
                            </div>
                        </div>
<br><br>
                        <div style="text-align: center; z-index: 50000; width: 50%; margin: auto;" id="toaster"></div>
                        <br>

                        <div class="row">
                            <div class="col-xs-3">
                            </div>
                            <div class="col-xs-3" align="right">
                            <form:button class="btn btn-success" type="button" value="Yes" id="btnUpdtPkgDelt">Update package details
                            </form:button>
                                </div>
                            <div class="col-xs-3" align="center">
                            <button class="btn btn-success" type="button" value="cancel" id="btnPkgBack">Back
                            </button>
                                </div>
                            <div class="col-xs-3" align="left">
                            <button class="btn btn-success" type="button" value="cancel" id="btnPkgCancel">Cancel
                            </button>
                        </div>
                    </div>
                    </div>
                </fieldset>
            </form:form>
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

                <!--Package content-->
                <div id="editModalContent">
                    <form:form class="form-horizontal" role="form" id="frmEditPkg" action="/edit_package" method="post" modelAttribute="editPackage" commandName="editPackage">
                        <fieldset class="scheduler-border">
                            <legend class="scheduler-border"> Edit Package Content</legend>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-xs-3 control-label">
                                        Package Detail :
                                    </label>
                                </div>
                                <br>

                                <div class="row"  style="margin: auto;">

                                    <div class="col-xs-12">

                                        <div class="row item-tbl-row item-tbl-hdr">
                                            <div class="col-xs-3">
                                                <strong>Content</strong>
                                            </div>
                                            <div class="col-xs-4">
                                                <strong>Name</strong>
                                            </div>
                                            <div class="col-xs-2">
                                                <strong>Qty</strong>
                                            </div>
                                            <div class="col-xs-3">
                                                <strong>Status</strong>
                                            </div>
                                        </div>

                                        <div class="row item-tbl-row">
                                            <div class="col-xs-3">
                                                <label class="checkbox-inline">
                                                    <form:checkbox value="pizza" class="checkbox" path="content"/>
                                                    Pizza
                                                </label>
                                            </div>
                                            <div class="col-xs-4">
                                                <form:input type="text" class="form-control price" path="price"/>
                                            </div>
                                            <div class="col-xs-2">
                                                <form:input class="qty-spinner" type="number" value="0" path="content"/>
                                            </div>
                                            <div class="col-xs-3">
                                                <form:button type="button" value="" class="btn btn-success btnAddItmPkg"
                                                             id="btnAddPkgPizza">
                                                    <span class="glyphicon glyphicon-plus"></span>Add
                                                </form:button>
                                            </div>
                                        </div>
                                        <div class="row item-tbl-row">
                                            <div class="col-xs-3">
                                                <label class="checkbox-inline">
                                                    <form:checkbox value="pasta" class="checkbox" path="content"/>
                                                    Pasta/Appetizer
                                                </label>
                                            </div>
                                            <div class="col-xs-4">
                                                <form:input type="text" class="form-control price" path="price"/>
                                            </div>
                                            <div class="col-xs-2">
                                                <form:input class="qty-spinner" type="number" value="0" path="content"/>
                                            </div>
                                            <div class="col-xs-3">
                                                <form:button type="button" value="" class="btn btn-success btnAddItmPkg"
                                                             id="btnAddPkgPasta">
                                                    <span class="glyphicon glyphicon-plus"></span>Add
                                                </form:button>
                                            </div>
                                        </div>

                                        <div class="row item-tbl-row">
                                            <div class="col-xs-3">
                                                <label class="checkbox-inline">
                                                    <form:checkbox class="checkbox" path="content" value="bevrg"/>
                                                    Bevarage
                                                </label>
                                            </div>
                                            <div class="col-xs-4">
                                                <form:input type="text" value="" class="form-control price" path="price"/>
                                            </div>
                                            <div class="col-xs-2">
                                                <form:input class="qty-spinner" type="number" value="0" path="content"/>
                                            </div>
                                            <div class="col-xs-3">
                                                <form:button type="button" value="" class="btn btn-success btnAddItmPkg"
                                                             id="btnAddPkgBvrg">
                                                    <span class="glyphicon glyphicon-plus"></span>Add
                                                </form:button>
                                            </div>
                                        </div>

                                        <div class="row item-tbl-row">
                                            <div class="col-xs-3">
                                                <label class="checkbox-inline">
                                                    <form:checkbox value="salad" class="checkbox" path="content"/>
                                                    Salad
                                                </label>
                                            </div>
                                            <div class="col-xs-4">
                                                <form:input type="text" class="form-control price" path="price"/>
                                            </div>
                                            <div class="col-xs-2">
                                                <form:input class="qty-spinner" type="number" value="0" path="content"/>
                                            </div>
                                            <div class="col-xs-3">
                                                <form:button type="button" value="" class="btn btn-success btnAddItmPkg"
                                                             id="btnAddPkgSalad">
                                                    <span class="glyphicon glyphicon-plus"></span>Add
                                                </form:button>
                                            </div>
                                        </div>

                                        <div class="row item-tbl-row">
                                            <div class="col-xs-3">
                                                <label class="checkbox-inline">
                                                    <form:checkbox value="dessert" class="checkbox" path="content"/>
                                                    Dessert
                                                </label>
                                            </div>
                                            <div class="col-xs-4">
                                                <form:input type="text" class="form-control price" path="price"/>
                                            </div>
                                            <div class="col-xs-2">
                                                <form:input class="qty-spinner" type="number" value="0" path="content"/>
                                            </div>
                                            <div class="col-xs-3">
                                                <form:button type="button" class="btn btn-success btnAddItmPkg"
                                                             id="btnAddPkgDssrt">
                                                    <span class="glyphicon glyphicon-plus"></span>Add
                                                </form:button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form:form>

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