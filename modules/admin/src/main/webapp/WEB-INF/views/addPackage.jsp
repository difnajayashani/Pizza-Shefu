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
        Add New Package
    </div>
</div>
<br>

<div>
    <div id="add-pkg-breadcrumb-position">
        <ul class="breadcrumb breadcrumb-menu">
            <li><a href="https://localhost:8443/admin/users/list">Home</a></li>
            <li><a href="#">Package Management</a></li>
            <li class="active"><a href="#">Add New Package</a></li>
        </ul>
    </div>
</div>

<div class="form-box" id="add-pkg-form-box">
    <div class="panel panel-default">
        <div class="panel-heading common-form-headings">
            <h3 class="default-panel-headings">Add New Package</h3>
        </div>
        <div class="panel-body">

            <form:form class="form-horizontal" role="form" id="frmAddPkg" method="post" modelAttribute="addPackage" commandName="addPackage" action="/add_package">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">(*) Fields are read only</legend>


                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-7">
                                <label class="col-xs-5 control-label">
                                    Package ID : &nbsp; *
                                </label>

                                <div class="col-xs-7">
                                    <input class="form-control" type="text" id="txtAddPkgId" readonly="true"/>
                                </div>
                            </div>
                            <div class="col-xs-5">
                                <label class="col-xs-5 control-label">
                                    Price :
                                </label>

                                <div class="col-xs-7" align="right">
                                    <form:input class="form-control price" type="text" id="txtAddPkgPrice" path="price"/>
                                    <span id="pkgPriceErr" class="input-group-error" style="float: left"> </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-7">
                                <label class="col-xs-5 control-label">
                                    Name :
                                </label>

                                <div class="col-xs-7">
                                    <form:input class="form-control" type="text" id="txtAddPkgName" path="packName"/>
                                </div>
                                <span id="pkgNmErr" class="input-group-error"> </span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <label class="col-xs-3 control-label">
                                Package Detail :
                            </label>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-xs-2"></div>

                            <div class="col-xs-10">

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
                                        <form:button type="button" value="" class="btn btn-success btnAddItmPkg" id="btnAddPkgPizza">
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
                                        <form:button type="button" value="" class="btn btn-success btnAddItmPkg" id="btnAddPkgPasta">
                                            <span class="glyphicon glyphicon-plus"></span>Add
                                        </form:button>
                                    </div>
                                </div>

                                <div class="row item-tbl-row">
                                    <div class="col-xs-3">
                                        <label class="checkbox-inline">
                                        <form:checkbox value="bevrg" class="checkbox" path="content"/>
                                        Bevarage
                                        </label>
                                    </div>
                                    <div class="col-xs-4">
                                        <form:input type="text" class="form-control price" path="price"/>
                                    </div>
                                    <div class="col-xs-2">
                                        <form:input class="qty-spinner" type="number" value="0" path="content"/>
                                    </div>
                                    <div class="col-xs-3">
                                        <form:button type="button" value="" class="btn btn-success btnAddItmPkg" id="btnAddPkgBvrg">
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
                                        <form:button type="button" value="" class="btn btn-success btnAddItmPkg" id="btnAddPkgSalad">
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
                                        <form:button type="button" value="" class="btn btn-success btnAddItmPkg" id="btnAddPkgDssrt">
                                            <span class="glyphicon glyphicon-plus"></span>Add
                                        </form:button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <label class="col-xs-3 control-label">
                                Add Image/s :
                            </label>

                            <div class="col-xs-5">
                               <form:button type="button" class="btn btn-success" id="btnupldPkgImg"><span
                                        class="glyphicon glyphicon-open"></span> Browse to Upload
                                    Images
                                </form:button><%--<input type="file" value="fg">--%>
                                <span id="pkgImgErr" class="input-group-error"> </span>
                            </div>
                        </div>
                    </div>
                    <br>

                    <div class="list-group row" style="margin:auto; width:50%; border:2px solid black; padding: 10px;">
                        <label path="lblhidden"><h4>Hidden field</h4></label><br>
                        <label id="newPkgName" path="lblpkgNmNew"><strong>Pacakage Name</strong></label> <br>
                        <ul class="list-group">
                            <li class="list-group-item">Pkg item1
                                <span class="badge">
                                  <div class="itemList">
                                    <span class="glyphicon glyphicon-remove">
                                    </span> <a href="">Remove</a>
                                  </div>
                                </span>
                            </li>
                            <li class="list-group-item">Pkg item2
                                <span class="badge">
                                  <div class="itemList">
                                    <span class="glyphicon glyphicon-remove">
                                    </span> <a href="">Remove</a>
                                  </div>
                                </span>
                            </li>
                            <li class="list-group-item">Pkg item3
                                <span class="badge">
                                  <div class="itemList">
                                    <span class="glyphicon glyphicon-remove">
                                    </span> <a href="">Remove</a>
                                  </div>
                                </span>
                            </li>
                            <li class="list-group-item">Price
                                <span class="badge">
                                  <div class="itemList">
                                    <span class="glyphicon glyphicon-remove">
                                    </span> <a href="">Remove</a>
                                  </div>
                                </span>
                            </li>
                            <li class="list-group-item">Images
                                <span class="badge">
                                  <div class="itemList">
                                    <span class="glyphicon glyphicon-remove">
                                    </span> <a href="">Remove</a>
                                  </div>
                                </span>
                            </li>

                        </ul>
                    </div>
                    <br><br>

                    <div style="text-align: center; z-index: 50000; width: 50%; margin: auto;" id="toaster"></div>
                    <br>

                    <div class="row">
                        <div class="col-xs-4">
                        </div>
                        <div class="col-xs-4" align="right">
                            <form:button type="button" class="btn btn-success bckToHome" id="btnPkgCancel"><span
                                    class="glyphicon glyphicon-chevron-left"></span> Back to home
                            </form:button>
                        </div>
                        <div class="col-xs-4" align="left">
                            <form:button type="button" class="btn btn-success btn-group-xs" id="btnAddNewPkg">Add
                                Package
                            </form:button>
                        </div>
                    </div>
                </fieldset>
            </form:form>
        </div>

    </div>
</div>
</body>
</html>