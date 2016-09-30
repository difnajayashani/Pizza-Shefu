<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <spring:url value="/themes/hsenid/js/staff_table.js" var="js1"/>
    <script src="${js1}"></script>

</head>
<body>

<div  id="toolbar">
    <div class="col-sm-1"></div>
    <div class="col-sm-10">
        <fieldset class="scheduler-border">
            <legend class="scheduler-border" id="searchCriteria"></legend>

            <div class="form-group">
                <div class="row">
                    <div class="col-xs-8" style="width: 64%">
                        <div class="col-xs-2">
                            <label class=" control-label">
                                Filter By:
                            </label>
                        </div>
                        <!--checkboxes to select-->
                        <div class="col-xs-10" id="checkboxDiv">
                            <label class="checkbox-inline">
                                <input type="checkbox" value="1" id="desigCheck" onchange="showMe()">Designation
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" value="3" id="depCheck" onchange="showMe()">Department
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" value="3" id="branchCheck" onchange="showMe()">Branch
                            </label>
                        </div>
                    </div>

                    <div class="col-xs-4" style="width: 36%">
                        <div class="col-xs-8">
                            <input class="form-control"  placeholder=" Name" type="text" id="cname" >

                        </div>
                        <div class="col-xs-1">
                            <button type="button" class="btn btn-success">
                                <span class="glyphicon glyphicon-search"></span> Search
                            </button>
                        </div>
                        <div class="col-xs-2"></div>
                    </div>
                </div>
            </div>

            <!--filter by elements selected by checboxes are defined here-->
            <div class="form-group">
                <div class="row">
                    <!--designation -->
                    <div class="col-xs-4" id="designation"  style="display: none">
                        <div class="col-xs-4">
                            <label class=" control-label">
                                Designation
                            </label>
                        </div>
                        <div class="col-xs-8">
                            <select class="form-control" >
                                <option>System Admin</option>
                                <option>CustomerCare Manager</option>
                                <option>Customer Care</option>
                            </select>
                        </div>
                    </div>
                    <!--department-->
                    <div class="col-xs-4"  id="department"  style="display: none">
                        <div class="col-xs-4">
                            <label class=" control-label">
                                Department
                            </label>
                        </div>
                        <div class="col-xs-8">
                            <select class="form-control">
                                <option>Finance</option>
                                <option>Administration</option>
                                <option>Customer Service</option>
                            </select>
                        </div>
                    </div>
                    <!--branch-->
                    <div class="col-xs-4" id="branch" style="display: none">
                        <div class="col-xs-4">
                            <label class=" control-label">
                                Branch
                            </label>
                        </div>
                        <div class="col-xs-8">
                            <select class="form-control"  >
                                <option>Colombo</option>
                                <option>Gampaha</option>
                                <option>Ja-Ela</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>
    <div class="col-sm-1"></div>
</div>

<!--staff detail table is included -->
<table  id="tableStaff">
</table>


<!--modelto appear when banning a Customer or Staff user -->
<div class="modal fade" id="removeStaffModal">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header deleteuser-modal-header-style">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                        class="glyphicon glyphicon-remove"></span></button>
                <div align="center"><span class="glyphicon glyphicon-trash"></span> Block Staff User
                </div>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label id="lblBlockStaffMsg">Do you really want to block this User ?</label><br><br>

                    <div align="center">
                        <label id="lblBlockStaffId">Username : xxxxxx </label><br>
                        <label id="lblBlockStaffName">Name : yyyyyy </label><br>
                    </div>
                </div>
            </div>
            <div class="modal-footer" align="right">
                <button class="btn btn-success" type="button" value="Yes" id="btnBlockStaff">Yes
                </button>
                <button class="btn btn-success" type="button" value="cancel" id="btnCnclBlockStaff">
                    No
                </button>
            </div>
        </div>
    </div>
</div>

</body>
</html>