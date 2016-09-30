<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Item</title>
    <!-- include common CSS, fonts and js -->
    <jsp:include page="adminTop.jsp"/>

    <%-- Other css --%>
    <spring:url value="/themes/hsenid/css/itemMgt.css" var="cssItem"/>
    <link href="${cssItem}" rel="stylesheet">

    <%--  other javascripts --%>
    <spring:url value="/themes/hsenid/js/itemMgt.js" var="itemJs"/>
    <spring:url value="/themes/hsenid/js/myAlerts.js" var="myAlerts"/>
    <spring:url value="/themes/hsenid/js/tableItems.js" var="tblViewItm"/>

    <script src="${itemJs}"></script>
    <script src="${myAlerts}"></script>
    <script src="${tblViewItm}"></script>


</head>
<body>

<jsp:include page="header.jsp"/>

<div class="brand">
    <div style="position: relative; left: -50%;">
        Item Management
    </div>
</div>
<br>

<div>
    <div id="add-item-breadcrumb-position">
        <ul class="breadcrumb breadcrumb-menu">
            <li><a href="https://localhost:8443/admin/users/list">Home</a></li>
            <li><a href="#">Item Management</a></li>
            <li class="active"><a href="#">Edit Item</a></li>
        </ul>
    </div>
</div>

<div class="form-box" id="edit-item-form-box">
    <div class="panel panel-default">
        <div class="panel-heading common-form-headings">
            <h3 class="default-panel-headings"><span class="glyphicon glyphicon-pencil"></span> Edit Item</h3>
        </div>

        <div class="panel-body">

            <div class="row itemSearchBar">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <label class="control-label" style="float: right;" path="lblItmNm">
                        Item Name :
                    </label>

                </div>
                <div class="col-sm-4">
                    <input class="form-control" id="txtSearchItem" type="text"> </input>
                </div>
                <div class="col-sm-3">
                    <button type="button" class="btn btn-success" id="btnSearchItem"><span
                            class="glyphicon glyphicon-search"></span> Search</button>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br>

            <form:form class="form-horizontal" role="form" id="frmEditItem" action="/edit_item" method="post" commandName="editItem" modelAttribute="editItem">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">(*) Fields are read only</legend>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="col-xs-4">
                                    <label class="control-label" style="float:right;">
                                        Item ID : &nbsp; *
                                    </label>
                                </div>
                                <div class="col-xs-8">
                                    <form:input class="form-control" id="txtEditID" type="text" readonly="true" path="itemId"/>
                                </div>

                            </div>
                            <div class="col-xs-6">
                                <div class="col-xs-3">
                                    <label class="control-label">
                                        Name :
                                    </label>
                                </div>
                                <div class="col-xs-9">
                                    <form:input class="form-control" id="txtEditName" type="text" path="itemName"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="col-xs-4">
                                    <label class="control-label" style="float:right;">
                                        Category :
                                    </label>
                                </div>
                                <div class="col-xs-8">
                                    <%--<form:select class="form-control" id="editSlctCat" path="">
                                        <form:option value="Pizza">Pizza</form:option>
                                        <form:option value="Pasta">Pasta</form:option>
                                        <form:option value="Salad">Salad / Appetizer</form:option>
                                        <form:option value="Dessert">Dessert</form:option>
                                        <form:option value="Topping">Topping</form:option>
                                        <form:option value="Crust">Crust</form:option>
                                    </form:select>--%>

                                        <select class="form-control" id="selectCat">
                                            <option value="0">--Select Category--</option>
                                            <option value="pizza">Pizza</option>
                                            <option value="pasta">Pasta</option>
                                            <option value="salad">Salad / Appetizer</option>
                                            <option value="dessert">Dessert</option>
                                            <option value="topping">Topping</option>
                                            <option value="crust">Crust</option>
                                        </select>
                                </div>

                            </div>
                            <div class="col-xs-6">
                                <div class="col-xs-4">
                                    <label class="control-label" style="float: left;">
                                        Item Type :
                                    </label>
                                </div>
                                <div class="col-xs-8">
                                    <label class="radio-inline">
                                        <form:radiobutton name="optEditType" value="V" id="radioVeg" path="type"/> Veg
                                    </label>
                                    <label class="radio-inline">
                                        <form:radiobutton name="optEditType" value="N" id="radioNveg" path="type"/> Non-veg
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="col-xs-4">
                                    <label class="control-label" style="float: right">
                                        Sub-category :
                                    </label>
                                </div>
                                <div class="col-xs-8">
                                    <form:select class="form-control" id="slctEditSubCat" path="subCategoryName">
                                        <form:option value="Deepdish">Deep dish Pizza</form:option>
                                        <form:option value="Italiano">Italiano Pizza</form:option>
                                        <form:option value="Gourmet">Gourmet</form:option>
                                        <form:option value="NY">NY Thin crust</form:option>
                                        <form:option value="BigP">Big Pizza</form:option>
                                    </form:select>
                                </div>

                            </div>
                            <div class="col-xs-6">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="col-xs-4">
                                    <label class="control-label" style="float: right">
                                        Item Price :
                                    </label>
                                </div>

                                <div class="col-xs-8">
                                    <div class="row item-tbl-row item-tbl-hdr">
                                        <div class="col-xs-5">
                                            <strong>Size</strong>
                                        </div>
                                        <div class="col-xs-7">
                                            <strong>Price</strong>
                                        </div>
                                    </div>

                                    <div class="row item-tbl-row" id="edtItmChkbxReg">

                                        <div class="col-xs-5">
                                            <label class="checkbox-inline">
                                                <form:checkbox value="regular" class="checkbox" path="size"/> Regular
                                            </label>
                                        </div>
                                        <div class="col-xs-7">
                                            <form:input type="text" class="form-control price" path="price"/>
                                        </div>
                                    </div>

                                    <div class="row item-tbl-row" id="edtItmChkbxMed">

                                        <div class="col-xs-5">
                                            <label class="checkbox-inline">
                                            <form:checkbox value="medium" class="checkbox" path="size"/> Medium
                                            </label>
                                        </div>
                                        <div class="col-xs-7">
                                            <form:input type="text" class="form-control price" path="price"/>
                                        </div>
                                    </div>

                                    <div class="row item-tbl-row" id="edtItmChkbxLrg">

                                        <div class="col-xs-5">
                                            <label class="checkbox-inline">
                                            <form:checkbox value="large" class="checkbox" path="size"/> Large

                                            </label>
                                        </div>
                                        <div class="col-xs-7">
                                            <form:input type="text" class="form-control price" path="price"/>
                                        </div>
                                    </div>

                                    <div class="row item-tbl-row" id="edtItmChkbxOthr">
                                        <div class="col-xs-5">
                                            <label class="checkbox-inline">
                                            <form:checkbox value="other" class="checkbox" path="size"/> Other

                                            </label>
                                        </div>
                                        <div class="col-xs-7">
                                            <form:input type="text" value="" class="form-control price" path="price"/>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="col-xs-4">
                                    <label class="control-label">
                                        Item Images :
                                    </label>
                                </div>

                                <div class="col-xs-8">
                                    <form:button type="button" class="btn btn-success" id="btnEditImage"><span
                                            class="glyphicon glyphicon-open"></span> Browse to Upload Images
                                    </form:button>
                                    <br><br>

                                    <div class="col-xs-8">
                                        <table class="table table-hover table-bordered table-condensed" id="">
                                            <tbody>
                                            <tr>
                                                <td>Image</td>
                                                <td><input type="button" value="Update" class="form-control"></td>
                                                <td><input type="button" value="X" class="form-control"></td>
                                            </tr>
                                            <tr>
                                                <td>Image</td>
                                                <td><input type="button" value="Update" class="form-control"></td>
                                                <td><input type="button" value="X" class="form-control"></td>
                                            </tr>
                                            <tr>
                                                <td>Image</td>
                                                <td><input type="button" value="Update" class="form-control"></td>
                                                <td><input type="button" value="X" class="form-control"></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="col-xs-4">
                                    <label for="txtEditDesc" class="control-label">
                                        Description
                                    </label>
                                </div>

                                <div class="col-xs-8">
                                    <form:textarea class="form-control" rows="5" id="txtEditDesc" path="description"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br>

                    <div style="text-align: center; z-index: 50000; width: 50%; margin: auto;" id="toaster"></div>

                    <div class="row" align="center">
                        <div class="col-xs-3">
                        </div>
                        <div class="col-xs-3" align="right">
                            <form:button type="button" class="btn btn-success bckToHome" id="btnEditBack"><span class="glyphicon glyphicon-chevron-left"></span> Back to home
                            </form:button>
                        </div>
                        <div class="col-xs-3" align="center">
                            <form:button type="button" class="btn btn-success btn-group-xs" id="btnEditItem"><span class="glyphicon glyphicon-ok"></span> Save edits
                            </form:button>
                        </div>
                        <div class="col-xs-3" align="left">
                            <form:button type="button" class="btn btn-success" id="btnEditClear" onclick="this.form.reset();"><span class="glyphicon glyphicon-remove"></span> Clear All
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
