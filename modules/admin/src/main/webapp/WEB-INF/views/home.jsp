<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <!--include common CSS, fonts and js-->
  <jsp:include page="adminTop.jsp"/>
  <spring:url value="/themes/hsenid/css/form-elements.css" var="css2"/>
  <link href="${css2}" rel="stylesheet">

</head>
<body>
<jsp:include page="header.jsp"/>


<%--<spring:url value="header.jsp" var="page1"/>
<link href="${page1}" rel="import">--%>


<div class="home-title">Control Panel</div>
<div class="address-bar">3481 Pizza Shefu | Ward Place, Colombo 07 | 123.456.7890</div>

<center>
  <div class="container">
    <div class="panel-group" id="accordion">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h2 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Item Management</a>
          </h2>
        </div>
        <div id="collapseOne" class="panel-collapse collapse ">
          <div class="panel-body">
            <ul class="nav navbar-nav">
              <li>
                <a href="https://localhost:8443/admin/items/view_item" class="panel-sub-menu1">View Item</a>
              </li>
              <li>
                <a href="https://localhost:8443/admin/items/add" class="panel-sub-menu1">Add Item</a>
              </li>
              <li>
                <a href="https://localhost:8443/admin/items/edit_item" class="panel-sub-menu1">Edit Item</a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Package Management</a>
          </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse">
          <div class="panel-body">
            <ul class="nav navbar-nav">
              <li>
                <a href="https://localhost:8443/admin/packages/view_package" class="panel-sub-menu1">View Package</a>
              </li>
              <li>
                <a href="https://localhost:8443/admin/packages/add_package" class="panel-sub-menu1">Add Package</a>
              </li>
              <li>
                <a href="https://localhost:8443/admin/packages/edit_package" class="panel-sub-menu1">Edit Package</a>
              </li>
            </ul>
          </div>
        </div>
      </div>


      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Category Management</a>
          </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse">
          <div class="panel-body">
            <ul class="nav navbar-nav">
              <li>
                <a href="https://localhost:8443/admin/category/add_category" class="panel-sub-menu2">Add Category</a>
              </li>
              <li>
                <a href="view_categories.html" class="panel-sub-menu2">View Category</a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">User Management</a>
          </h4>
        </div>
        <div id="collapseFour" class="panel-collapse collapse">
          <div class="panel-body">
            <ul class="nav navbar-nav">
              <li>
                <a href="https://localhost:8443/admin/users/add" class="panel-sub-menu1">Add Users</a>
              </li>
              <li>
                <a href="https://localhost:8443/admin/users/view" class="panel-sub-menu1">View Users</a>
              </li>
              <li>
                <a href="https://localhost:8443/admin/users/viewBlocked" class="panel-sub-menu1">Blocked Users</a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">Notifications Management</a>
          </h4>
        </div>
        <div id="collapseFive" class="panel-collapse collapse">
          <div class="panel-body">
            <ul class="nav navbar-nav">
              <li>
                <a href="pendingcomments.html" class="panel-sub-menu2">Pending Comments</a>
              </li>
              <li>
                <a href="pendingrating.html" class="panel-sub-menu2">Pending Ratings</a>
              </li>
            </ul>
          </div>
        </div>
      </div>

    </div>
  </div>
</center>
</body>
</html>
