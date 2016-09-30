<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Category</title>

  <!-- include common CSS, fonts and js -->
  <jsp:include page="adminTop.jsp"/>

  <%-- Other css --%>
  <spring:url value="/themes/hsenid/css/add-category" var="cssCateg"/>
  <link href="${cssCateg}" rel="stylesheet">

  <%--  other javascripts --%>
  <spring:url value="/themes/hsenid/js/myAlerts.js" var="myAlerts"/>
  <script src="${myAlerts}"></script>

</head>

<body>

<jsp:include page="header.jsp"/>

<div class="brand">
  <div style="position: relative; left: -50%;">
    <p>Category Management</p>
  </div>
</div>
<br>

<div class="breadcrumbPosition">
  <div style="position: relative; left: -50%;">
    <ul class="breadcrumb breadcrumb-menu">
      <li><a href="https://localhost:8443/users/list">Home</a></li>
      <li><a href="#">Category Management</a></li>
      <li class="active"><a href="#">Add New Category</a></li>
    </ul>
  </div>
</div>


<div class="categoryField center">
  <div class="panel panel-default">
    <div class="panel-heading common-form-headings" style="vertical-align:middle">
      <h3 class="default-panel-headings">Add New Category</h3>
      <br>
    </div>
    <div class="panel-body">

      <form:form class="form-horizontal" commandName="addCategory" modelAttribute="addCategory">
        <fieldset class="scheduler-border">
          <legend class="scheduler-border">(*) Fields are read only</legend>

          <div class="form-group">
            <label for="categoryid" class="control-label col-sm-3">Category Id : *</label>

            <div class="col-sm-9">
              <form:input path="category_id" type="text" class="form-control" id="categoryid"
                     readonly="true"/>

            </div>
          </div>

          <div class="form-group">
            <label for="categoryname" class="control-label col-sm-3">Category Name :</label>

            <div class="col-sm-9">
              <form:input type="text" class="form-control" id="categoryname" path="categoryName"
                     placeholder="Please Enter Category Name"/>

            </div>
          </div>

          <div class="form-group">
            <label for="categoryname" class="control-label col-sm-3">Category Description :</label>

            <div class="col-sm-9">
              <form:textarea path="description" type="text" class="form-control" id="" placeholder="Please Enter Category Description"/>

            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-3" style="text-align: right">
              <form:checkbox path="subCategoryName" name="vehicle" value="Bike"/>
              <label>
                Sub Category :
              </label>
            </div>

            <div class="col-sm-9">
              <form:select path="subCategoryName" style="width: 100%; height: 30px" class="selectpicker">
                <form:option value="pizza">Pizza</form:option>
                <form:option value="pasta">Pasta</form:option>
                <form:option value="salad">Salad</form:option>
                <form:option value="dessrt">Desserts</form:option>
              </form:select>
            </div>

          </div>

          <div class="form-group">
            <label for="subcategory" class="control-label col-sm-3">Sub Category Name : </label>

            <div class="col-sm-9">
              <form:input path="subCategoryName" type="text" class="form-control" id="subcategory" placeholder="Please Enter Sub Category Name"/>
            </div>
          </div>
          <br>
          <br>

          <div class="form-group" style="text-align: center">

            <div class="col-sm-3"></div>

            <div class="col-sm-2" >
              <form:button class="btn btn-success btn-lg" type="button" data-toggle="modal" data-target="#myModal">
                <span class="glyphicon glyphicon-ok"></span> Submit Category
              </form:button>
            </div>

            <div class="col-sm-2"></div>

            <div class="col-sm-2">
              <button class="btn btn-success btn-lg">
                <span class="glyphicon glyphicon-remove"></span> Cancel
              </button>
            </div>

            <div class="col-sm-3"></div>

          </div>
        </fieldset>
      </form:form>
    </div>
  </div>
</div>


<div id="myModal" class="modal fade" role="dialog" style="top: 25%; height: 70%">
  <div class="modal-dialog">

    <div class="modal-content">

      <div class="panel panel-default">
        <div class="panel-heading common-form-headings" style="vertical-align:middle">
          <h3 class="modal-title" style="text-align:center;"><span class="glyphicon glyphicon-ok"> </span>
            Category Successfully Submitted !!!</h3>

        </div>
      </div>

      <div class="modal-body" style="padding-bottom: 5%">
        <div class="row">
          <div class="col-xs-12">
            <h4>
              You have successfully submittted the category<br><br>
              What do you want to do next?<br>
            </h4>

          </div>
        </div>


        <div class="row" style="padding-top: 5%">
          <div class="col-sm-4" style="text-align: right">
            <button class="btn btn-success">Add New Category</button>
          </div>
          <div class="col-sm-4" style="text-align: center">
            <button class="btn btn-success">Home</button>
          </div>
          <div class="col-sm-4" style="text-align: left">
            <button class="btn btn-success">View Categories</button>
          </div>
        </div>

      </div>

    </div>

  </div>
</div>

<div class="footerposition">
  <jsp:include page="footer.jsp"/>

</div>

</body>
</html>
