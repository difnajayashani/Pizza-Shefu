<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <spring:url value="/themes/hsenid/js/bannedStaff_table.js" var="js1"/>
    <script src="${js1}"></script>

    <script>
        //datepicker
        $(document).ready(function() {
            $("#fromDate").datepicker({
                "changeMonth":true,
                "changeYear":true

            });

            $("#toDate").datepicker({
                "changeMonth":true,
                "changeYear":true
            });
        });
    </script>

</head>
<body>

<!--<div  id="toolbar">-->
<div class="col-sm-1"></div>
<div class="col-sm-10">
    <fieldset class="scheduler-border">
        <legend class="scheduler-border" id="searchCriteria"></legend>

        <div class="form-group">
            <div class="row">
                <div class="col-xs-8" style="width: 64%  ">
                    <div class="col-xs-2">
                        <label class=" control-label" >
                            Filter By:
                        </label>
                    </div>
                    <!--checkboxes to select-->
                    <div class="col-xs-10" id="checkboxDiv">
                        <div class="col-xs-5">
                            <label class="checkbox-inline">
                                <input type="checkbox" value="1" id="blockCheck" onchange="showMeBlocked()">Blocked Date
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="checkbox-inline">
                                <input  type="checkbox" value="2" id="bsCheck" onchange="showMeBlocked()" checked>Name
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label class="checkbox-inline">
                                <input type="checkbox" value="3" id="branchCheck" onchange="showMeBlocked()">Branch
                            </label>
                        </div>
                    </div>
                    <!--<div class="col-xs-2"></div>-->
                </div>

                <div class="col-xs-4" style="width: 36%">
                    <div class="col-xs-8">
                        <input class="form-control"  placeholder=" Name" type="text" id="bsname"  >
                    </div>
                    <div class="col-xs-1">
                        <button type="button" class="btn btn-success" >
                            <span class="glyphicon glyphicon-search"></span> Search
                        </button>
                    </div>
                    <div class="col-xs-4"></div>
                </div>
            </div>
        </div>

        <!--Filtering elements to be displayed as checkbox is checked     -->
        <div class="form-group">
            <div class="row">
                <div class="col-xs-8" id="blockPeriod"style="display: none; width: 64%" >
                    <div class="col-xs-2"  style="text-align: right">
                        <label class=" control-label">
                            From:
                        </label>
                    </div>
                    <div class="col-xs-10">
                        <div class="col-xs-4">
                            <input class="form-control" id="fromDate" type="text"
                                   placeholder="Click on me" style="width: 130px">
                        </div>
                        <div class="col-xs-1">
                            <label class=" control-label">
                                To:
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <input class="form-control" id="toDate" placeholder="Click on me"
                                   type="text" style="width: 130px">
                        </div>
                    </div>
                </div>

                <!--next half-->
                <!--name form-group-->
                <div class="col-xs-4" style="width: 36%">
                    <div class="col-xs-8">
                        <select class="form-control" id="branch"  style="display: none;">
                            <option>Colombo</option>
                            <option>Gampaha</option>
                            <option>Ja-Ela</option>
                        </select>
                    </div>
                    <div class="col-xs-4"></div>
                </div>
            </div>
        </div>
    </fieldset>
</div>
<div class="col-sm-1"></div>

<table  id="tableBannedstaff">
</table>



<!--modelto appear when viewing the details of the blocked user (STAFF) -->
<div class="modal fade" id="blockedStaffModal">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header deleteuser-modal-header-style">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                        class="glyphicon glyphicon-remove"></span></button>
                <div align="center">Blocked User #Username Details
                </div>
            </div>
            <div class="modal-body">


                <br> <div class="form-box">
                <div class="form-group">
                    <br>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class=" control-label">User type</label>
                        </div>
                        <div class="col-sm-4">
                            <input type="text" id="userType" placeholder="Customer" style="border-color: transparent" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class=" control-label">Name</label>
                        </div>
                        <div class="col-sm-4">
                            <input type="text"  placeholder="Name" style="border-color: transparent" id="name" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">Username</label>
                        </div>
                        <div class="col-sm-4">
                            <input type="text"  placeholder="Username" style="border-color: transparent" id="uname" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class=" control-label">Telephone No:</label>
                        </div>
                        <div class="col-sm-4">
                            <input type="text"  placeholder="07756890432" style="border-color: transparent" id="telno" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class=" control-label">E-mail</label>
                        </div>
                        <div class="col-sm-4">
                            <input type="text"  placeholder="customer@gmail.com" style="border-color: transparent" id="email" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class=" control-label">Address</label>
                        </div>
                        <div class="col-sm-4">
                            <input type="text"  placeholder="No:20" style="border-color: transparent" id="address1" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class=" control-label"> </label>
                        </div>
                        <div class="col-sm-4">
                            <input type="text"  placeholder="Meegahapara" style="border-color: transparent" id="address2" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class=" control-label"> </label>
                        </div>
                        <div class="col-sm-4">
                            <input type="text"  placeholder="Kolllupitiya" style="border-color: transparent" id="address3" readonly>
                        </div>
                    </div>


                </div>
            </div>

            </div>
            <div class="modal-footer" align="right">
                <button class="btn btn-success" type="button" value="cancel" id="btn" data-dismiss="modal" aria-hidden="true">
                    OK
                </button>
            </div>
        </div>
    </div>
</div>

</body>
</html>