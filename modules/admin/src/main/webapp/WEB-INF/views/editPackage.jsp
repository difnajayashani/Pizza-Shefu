<%--
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!--
modal content for edit Package content
-->
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
<script src="../js/itemMgt.js"></script>--%>
