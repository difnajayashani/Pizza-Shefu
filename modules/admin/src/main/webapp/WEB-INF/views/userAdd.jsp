<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
  <!--include common CSS, fonts and js-->
  <jsp:include page="adminTop.jsp"/>

  <spring:url value="/themes/hsenid/css/userMgt.css" var="css1"/>
  <spring:url value="/themes/hsenid/css/form-elements.css" var="css2"/>

  <link href="${css1}" rel="stylesheet">
  <link href="${css2}" rel="stylesheet">


  <spring:url value="/themes/hsenid/js/userMgt.js" var="js2"/>
  <!--include the jQuery toaster plugin's script-->
  <spring:url value="/themes/hsenid/js/jquery.toaster.js" var="js3"/>
  <spring:url value="/themes/hsenid/js/toaster.js" var="js4"/>


  <script src="${js2}"></script>
  <script src="${js3}"></script>
  <script src="${js4}"></script>

<%--<spring:url value="/themes/hsenid/js/simpleToastMessage.js" var="js3"/>--%>



</head>
<body>

<jsp:include page="header.jsp"/>

<div class="brand">
  <div style="position: relative; left: -50%;">
    User Management
  </div>
</div>
<br>
<br>
<div class="breadcrumbPosition">
  <div style="position: relative; left: -50%;">
    <ul class="breadcrumb breadcrumb-menu" >
      <li><a href="https://localhost:8443/admin/users/list">Home</a></li>
      <li><a href="https://localhost:8443/admin/users/list">User Management</a></li>
      <li class="active"><a href="https://localhost:8443/admin/users/add">Add User</a></li>
    </ul>
  </div>
</div>

<center>
  <div class="form-box">
    <div class="panel panel-default">

      <div class="panel-heading common-form-headings">
        <h3 class="default-panel-headings ">Add New User</h3>
      </div>
      <div class="panel-body">
        <form:form role="form" id="admin_adduser_form"  method="POST" class="form-horizontal" action="/admin/users/addCustomer" onsubmit="doAjaxPost()" >

          <fieldset class="scheduler-border">
            <legend class="scheduler-border" id="legendHeading"></legend>

            <div class="form-group">
              <div class="col-sm-6">
                <div class="row">
                  <label  class="col-sm-4 control-label">
                    User Type
                  </label>
                  <div class="col-sm-3">
                    <label path="customer" class="radio-inline">
                      <input path="customerin" type="radio" name="optradio" id="customer" checked="checked"/>Customer
                    </label>
                  </div>
                  <div class="col-sm-4">
                    <label path="staff" class="radio-inline">
                      <input path="staffin" type="radio" name="optradio"  id="staff"/>Staff Member
                    </label>
                  </div>
                </div>
              </div>
            </div>

            <div class="form-group">
              <div class="col-sm-6">
                <div class="row">
                  <label  class="col-sm-4 control-label" id="fname">
                    Name
                  </label>
                  <div class="col-sm-2">
                    <form:select path="title" class="form-control" id="selectTitle" style="width: 65px">
                      <form:option value="mr">Mr</form:option>
                      <form:option value="mrs">Mrs</form:option>
                      <form:option value="miss">Miss</form:option>
                    </form:select>
                  </div>
                  <div class="col-sm-4">
                    <form:input path="firstName" class="form-control" id="fname" placeholder="First Name" type="text"  style="width: 190px"/>
                    <form:errors path="firstName" cssClass="error"/>
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="row">
                  <div class="col-sm-4">
                    <form:input path="lastName" class="form-control" id="lname" placeholder="Last Name" type="text"  style="width: 200px"/>
                  </div>
                </div>
              </div>
            </div> <br>

            <div class="form-group">
              <div class="col-sm-6">
                <div class="row">
                  <form:label path="mobile"  class="col-sm-4 control-label">
                    Phone No*
                  </form:label>
                  <div class="col-sm-8">
                    <form:input path="mobile" class="form-control" id="mobileNo" placeholder="+94XXXXXXXXX" type="text"/>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-6">
                <div class="row">
                  <form:label path="email" class="col-sm-4 control-label">
                    E-Mail
                  </form:label>
                  <div class="col-sm-8">
                    <form:input path="email" class="form-control" id="email" placeholder="myname@example.com" type="text"/>
                  </div>
                </div>
              </div>
            </div>

            <div class="form-group">
              <!--address-->
              <div class="col-sm-6">
                <br>
                <div class="row">
                  <form:label path="addressL1" class="col-sm-4 control-label">
                    Address
                  </form:label>
                  <div class="col-sm-8">
                    <form:input path="addressL1" class="form-control" id="addLine1" placeholder="Street Address" type="text"/> >
                  </div>
                </div>
                <div class="row"> <label class="control-label"></label>   </div>
                <div class="row">
                  <form:label path="addressL2" class="col-sm-4 control-label">
                  </form:label>
                  <div class="col-sm-8">
                    <form:input path="addressL2" class="form-control" id="addLine2" placeholder="Address Line 2" type="text" />
                  </div>
                </div>
                <div class="row"><label class="control-label"></label></div>
                <div class="row">
                  <form:label path="addressL3" class="col-sm-4 control-label">
                  </form:label>
                  <div class="col-sm-8">
                    <form:input path="addressL3" class="form-control" id="city" placeholder="City" type="text"/>
                  </div>
                </div>
                <div class="row"><label class="control-label"></label></div>
                <div class="row">
                  <label path="province" class="col-sm-4 control-label">
                  </label>
                  <div class="col-sm-8">
                    <input path="provincein" class="form-control" id="province" placeholder="Province" type="text"/>
                  </div>
                </div>
                <div class="row"><label class="control-label"></label></div>
              </div>

              <!--when the user is a customer-->
              <div class="col-sm-6">
                <br>
                <fieldset class="scheduler-border" id="staffDetail">
                  <legend class="scheduler-border" id="legendStaff">when the user is staff</legend>
                  <div class="row">
                    <form:label path="designation" class="col-sm-4 control-label">
                      Designation
                    </form:label>
                    <div class="col-sm-8">
                      <form:select path="designation" class="form-control" id="designation">
                        <form:option value="GROUP_SYS_ADMIN">System Admin</form:option>
                        <form:option value="GROUP_ADM_MANAGER">System Manager</form:option>
                        <form:option value="GROUP_CC_MANAGER">Customer Manager</form:option>
                        <form:option value="GROUP_CUSTOMERCARE">Cashier</form:option>
                        <form:option value="GROUP_CUSTOMERCARE">Main Chef</form:option>
                        <form:option value="GROUP_RPT_MANAGER">Reporting Manager</form:option>


                      </form:select>
                    </div>
                  </div>
                  <div class="row">  <label class=" control-label"></label></div>
                  <div class="row">
                    <form:label path="department" class="col-sm-4 control-label">
                      Department
                    </form:label>
                    <div class="col-sm-8">
                      <form:select path="department" class="form-control" id="department">
                        <form:option value="Finance">Finance</form:option>
                        <form:option value="Administration">Administration</form:option>
                        <form:option value="Logistic">Logistic</form:option>
                        <form:option value="Reporting">Reporting</form:option>

                      </form:select>
                    </div>
                  </div>
                  <div class="row">  <label class=" control-label"></label></div>
                  <div class="row">
                    <form:label path="branch" class="col-sm-4 control-label">
                      Branch
                    </form:label>
                    <div class="col-sm-8">
                      <form:select path="branch" class="form-control" id="branch">
                        <form:option value="Colombo">Colombo</form:option>
                        <form:option value="Gampaha">Gampaha</form:option>
                        <form:option value="Ja-Ela">Ja-Ela</form:option>
                        <form:option value="Kadana">Kadana</form:option>
                      </form:select>
                    </div>
                  </div>
                </fieldset>
              </div>
            </div>
            <!--login details-->
            <div class="form-group">
              <!--<div class="col-xs-1"></div>-->
              <div class="col-xs-12">
                <fieldset class="scheduler-border" id="loginInfo">
                  <legend class="scheduler-border" id="legendInfo">Login Credentials</legend>
                  <div class="row">
                    <form:label path="username" class="col-xs-4 control-label" style="text-align: left">
                      User Name
                    </form:label>
                    <form:label path="password" class="col-xs-4 control-label" style="text-align: left">
                      Password
                    </form:label>
                    <form:label path="password" class="col-xs-4 control-label" style="text-align: left">
                      Confirm Password
                    </form:label>
                  </div>
                  <div class="row">
                    <div class="col-xs-4">
                      <form:input path="username" class="form-control" id="username" placeholder="User Name" type="text"/> >
                    </div>
                    <div class="col-xs-4">
                      <form:input path="password" class="form-control" id="password" placeholder="Password" type="text" />
                    </div>
                    <div class="col-xs-4">
                      <form:input path="password" class="form-control" id="cpassword" placeholder="Password Confirm" type="text" />
                    </div>
                  </div>.
                </fieldset>
              </div>
              <!--<div class="col-xs-1"></div>-->

            </div>
            <!--<div id="toaster"></div>-->
            <div class="form-group">
              <div class="col-xs-3"></div>
              <div class="col-xs-8">
                <div class="col-xs-4">
                  <form:button type="reset" value="Reset" class="btn btn-success btnAddItem">Reset</form:button>
                </div>
                <div class="col-xs-4">
                  <button type="submit" class="btn btn-success btnAddItem" onclick="doAjaxPost()">Add User
                </div>
              </div>
              <div class="col-xs-1"></div>
            </div>
          </fieldset>
        </form:form>
      </div>
    </div>
  </div>
</center>



<!--modelto appear when banning a Customer or Staff user -->
<div class="modal fade" id="removeCustomerModal">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header deleteuser-modal-header-style">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                class="glyphicon glyphicon-remove"></span></button>
        <div align="center"><span class="glyphicon glyphicon-trash"></span> Block Customer User
        </div>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <label id="lblBlockCustomerMsg">Do you really want to block this User ?</label><br><br>


          <div align="center">
            <label id="lblBlockCustomerId">Username : ${newUser.username} </label><br>
            <label id="lblBlockCustomerName">Name : ${newUser.firstName}</label><br>
          </div>
        </div>
      </div>
      <div class="modal-footer" align="right">
        <button class="btn btn-success" type="button" value="Yes" id="btnBlockCustomer">Yes
        </button>
        <button class="btn btn-success" type="button" value="cancel" id="btnCnclBlockCustomer" >
          No
        </button>
      </div>
    </div>
  </div>
</div>




</body>
</html>