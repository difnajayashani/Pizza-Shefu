<!DOCTYPE html>
<html>
<head>
    <%@include file="include.jsp" %>
    <title><fmt:message key="shopping" bundle="${lang}"/></title>
    <link rel="shortcut icon" href="">

    <script src="<c:url value="/resources/js/cart-operations.js"/>" type="text/javascript"></script>

</head>
<body>
<div class="loader-anim"></div>
<%@include file="NewHeader.jsp" %>
<div class="main-div">
    <div class="section">
        <div class="panel panel-default">
            <div class="panel-heading">
                <img class="icons" src="<c:url value="/resources/images/icons/shopping-cart.png"/>" />

                <h3 class="header-panel"><fmt:message key="shopping" bundle="${lang}"/></h3>
            </div>
            <div class="panel-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <table class="table" id="table-cart">
                                <tbody>
                                <tr>
                                    <th><fmt:message key="summary.descrip" bundle="${lang}"/></th>
                                    <th><fmt:message key="summary.price" bundle="${lang}"/></th>
                                    <th><fmt:message key="summary.qty" bundle="${lang}"/></th>
                                    <th><fmt:message key="summary.total" bundle="${lang}"/></th>
                                    <th><fmt:message key="shopping.op" bundle="${lang}"/></th>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle; text-align: left;"><img
                                            src="<c:url value="/resources/images/gourmet-pizza-100x100.jpg"/>" "../"> Sample item 01
                                    </td>
                                    <td style="vertical-align: middle; text-align: center;">450.00</td>
                                    <td style="vertical-align: middle;"><input class="spin" type="number" min="1"
                                                                               max="100" value="1"></td>
                                    <td style="vertical-align: middle; text-align: center;" class="tot-price">450.00
                                    </td>
                                    <td style="vertical-align: middle;"><a class="mod"><i
                                            class="glyphicon glyphicon-edit"></i> Edit</a>&nbsp;
                                        <a class="del"><i class="glyphicon glyphicon-remove"></i> Remove</a>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle; text-align: left;"><img
                                            src="<c:url value="/resources/images/pizza-100x100.jpg"/>"> Sample item 02
                                    </td>
                                    <td style="vertical-align: middle; text-align: center;">650.00</td>
                                    <td style="vertical-align: middle;"><input class="spin" type="number" min="1"
                                                                               max="100" value="1"></td>
                                    <td style="vertical-align: middle; text-align: center;" class="tot-price">650.00
                                    </td>
                                    <td style="vertical-align: middle;"><a class="mod"><i
                                            class="glyphicon glyphicon-edit"></i> Edit</a>&nbsp;
                                        <a class="del"><i class="glyphicon glyphicon-remove"></i> Remove</a>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle; text-align: left;"><img
                                            src="<c:url value="/resources/images/Whole-Pizza-100x100.jpg"/>" > Sample item 03
                                    </td>
                                    <td style="vertical-align: middle; text-align: center;">450.00</td>
                                    <td style="vertical-align: middle;"><input class="spin" type="number" min="1"
                                                                               max="100" value="1"></td>
                                    <td style="vertical-align: middle; text-align: center;" class="tot-price">450.00
                                    </td>
                                    <td style="vertical-align: middle;"><a class="mod"><i
                                            class="glyphicon glyphicon-edit"></i> Edit</a>&nbsp;
                                        <a class="del"><i class="glyphicon glyphicon-remove"></i> Remove</a>
                                </tr>
                                </tbody>
                            </table>
                            <div class="col-md-12">
                                <ul class="pager">
                                    <li>Items per page: <input type="text" size="2" value="5"></li>
                                    <li>
                                        <a href="#">← Prev</a>
                                    </li>
                                    <li>
                                        <a href="#">Next →</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="login-card">
                                <img src="<c:url value="/resources/images/icons/invoice.png"/>", width="40px" height="40px"/>

                                <h2 style="display: inline;"><fmt:message key="shopping.total" bundle="${lang}"/></h2>
                                <hr>
                                <h5><fmt:message key="shopping.apply" bundle="${lang}"/></h5>

                                <div id="coupon-alert-div" class="alert alert-danger" hidden="">
                                    <p id="coupon-validate-msg"></p>
                                </div>
                                <div>
                                    <input type="text" id="txt-coupon" size="25" class="form-control">
                                    <br>
                                </div>
                                <div id="div-submit">
                                    <input type="submit" id="coupon-submit" value="validate"
                                           class="btn btn-primary btn-xs">
                                </div>
                                <div style="margin-top: 30px;">
                                    <label><strong><fmt:message key="pay.total" bundle="${lang}"/> <label
                                            id="label-tot">0.00</label></strong></label><br>
                                    <label><strong><fmt:message key="shopping.discount" bundle="${lang}"/> <label id="label-dis">0.00</label></strong></label>
                                </div>
                                <hr>
                                <div>
                                    <label><strong><fmt:message key="shopping.discount.total" bundle="${lang}"/> <label
                                            id="label-distot">0.00</label></strong></label><br>
                                    <label><strong><fmt:message key="shopping.service" bundle="${lang}"/> <label
                                            id="label-serv">5</label></strong></label>
                                </div>
                                <div style="margin-top: 10px; border: groove; border-color: #62c462; border-width: thin;">
                                    <p id="net-amount-text"><strong><fmt:message key="shopping.net" bundle="${lang}"/></strong></p>

                                    <p id="net-amount-field">0.00</p>
                                </div>
                                <div style="margin-top: 5px;">
                                    <button type="submit" class="btn btn-success" id="checkoutButton"
                                            style="width: 100%;">
                                        <span class="glyphicon glyphicon-send"></span>&nbsp;&nbsp;<fmt:message key="shopping.proceed" bundle="${lang}"/>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start-Suggestions image slider -->
        <div class="container">
            <div class="col-md-12">
                <h3><fmt:message key="shopping.you" bundle="${lang}"/></h3>

                <div class="well">
                    <div id="myCarousel" class="carousel slide">
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="row">
                                    <div class="col-sm-3"><a href="#x"><img src="<c:url value="/resources/images/pizzas/02.jpg"/>" class="img-responsive"></a>
                                        <h4>Item title</h4>
                                        <p>Item description</p>
                                    </div>
                                    <div class="col-sm-3"><a href="#x"><img src="<c:url value="/resources/images/desserts/cake%2003.jpg"/>" class="img-responsive"></a>
                                        <h4>Item title</h4>
                                        <p>Item description</p>
                                    </div>
                                    <div class="col-sm-3"><a href="#x"><img src="<c:url value="/resources/images/desserts/ice-cream%2002.jpg"/>" class="img-responsive"></a>
                                        <h4>Item title</h4>
                                        <p>Item description</p>
                                    </div>
                                    <div class="col-sm-3"><a href="#x"><img src="<c:url value="/resources/images/pizzas/22.png"/>" class="img-responsive"></a>
                                        <h4>Item title</h4>
                                        <p>Item description</p>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="row">
                                    <div class="col-sm-3"><a href="#x"><img src="<c:url value="/resources/images/beverages/coffee%2003.jpg"/>"
                                                                            class="img-responsive"></a>
                                        <h4>Item title</h4>

                                        <p>Item description</p>
                                    </div>
                                    <div class="col-sm-3"><a href="#x"><img src="<c:url value="/resources/images/desserts/pudding%2003.jpg"/>"
                                                                            class="img-responsive"></a>
                                        <h4>Item title</h4>

                                        <p>Item description</p>
                                    </div>
                                    <div class="col-sm-3"><a href="#x"><img src="<c:url value="/resources/images/pizzas/21.jpg"/>"
                                                                            class="img-responsive"></a>
                                        <h4>Item title</h4>

                                        <p>Item description</p>
                                    </div>
                                    <div class="col-sm-3"><a href="#x"><img src="<c:url value="/resources/images/pizzas/12.jpg"/>"
                                                                            class="img-responsive"></a>
                                        <h4>Item title</h4>

                                        <p>Item description</p>
                                    </div>
                                </div>
                                <!--/row-->
                            </div>
                        </div>
                        <!--/carousel-inner-->
                        <a class="left carousel-control cart-carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                        <a class="right carousel-control cart-carousel-control" href="#myCarousel" data-slide="next">›</a>
                    </div>
                    <!--/myCarousel-->
                </div>
                <!--/well-->
            </div>
        </div>
        <!-- End-Suggessions image slider -->
    </div>
</div>

<!-- Cart proceed to checkout popup -->
<div id="proceed-checkout-confirm" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 class="modal-title" id="myModalLabel" contenteditable="true"><fmt:message key="shopping.proceed" bundle="${lang}"/></h3>
            </div>
            <div class="modal-body">
                <p><fmt:message key="shopping.login.reg" bundle="${lang}"/>
                    <br>
                    <br>
                </p>

                <div style="text-align:center">
                    <div style="padding:5px;">
                        <a class="btn btn-primary" style="width:300px;"><fmt:message key="shopping.login.system" bundle="${lang}"/></a>
                    </div>
                    <div style="padding:5px;">
                        <a class="btn btn-primary" style="width:300px;"><fmt:message key="shopping.create" bundle="${lang}"/></a>
                    </div>
                    <div style="padding:5px;">
                        <a class="btn btn-primary" style="width:300px;" href="delivery.html"><fmt:message key="shopping.guest" bundle="${lang}"/></a>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default" data-dismiss="modal"><fmt:message key="shopping.close" bundle="${lang}"/></a>
            </div>
        </div>
    </div>
</div>

<!-- Cart item remove confirmation popup -->
<div id="delete-confirm-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <img class="icons" src="<c:url value="/resources/images/icons/shopping-cart-remove.png"/>" >
                <h4 class="modal-title header-panel"><fmt:message key="shopping.remove" bundle="${lang}"/></h4>
            </div>
            <div class="modal-body">
                <p><fmt:message key="shopping.do.you" bundle="${lang}"/></p>

                <div class="thumbnail"
                     style="height:auto; border: none;">
                    <img src="<c:url value="/resources/images/Whole-Pizza-100x100.jpg"/>" class="img-responsive" align="left">

                    <div class="caption">
                        <h4>&nbsp;Thumbnail label</h4>

                        <p>&nbsp;Some description about the item.</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default btn-sm" data-dismiss="modal" style="width:70px;">No</button>
                <button id="removeOk" class="btn btn-danger btn-sm" style="width:70px;">Yes</button>
            </div>
        </div>
    </div>
</div>

<!-- Cart item modify popup -->
<div id="modify-item-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <img class="icons" src="<c:url value="/resources/images/icons/shopping-cart-modify.png"/>" >
                <h4 class="modal-title header-panel"><fmt:message key="shopping.modify" bundle="${lang}"/></h4>
            </div>
            <div class="modal-body">
                <p><fmt:message key="shopping.customize" bundle="${lang}"/></p>

                <div class="thumbnail" style="height:120px; border: none;">
                    <img src="<c:url value="/resources/images/Whole-Pizza-100x100.jpg"/>"
                         class="img-responsive" align="left">

                    <div class="caption">
                        <h4>&nbsp; Item Title</h4>
                        <p>&nbsp; Some description about the item.</p>
                    </div>
                </div>
                <form role="form" style="margin-top:-20px;">
                    <div class="form-group">
                        <div class="col-sm-6" style="display:inline-block;">
                            <label class="control-label">Crust</label>
                            <select class="form-control">
                                <option>Sausage</option>
                                <option>Topping 02</option>
                            </select>
                        </div>
                        <div class="col-sm-6" style="display:inline-block;">
                            <label class="control-label">Size</label>
                            <select class="form-control">
                                <option>Small</option>
                                <option>Medium</option>
                                <option>Large</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group" style="display:inline-block; margin-top:10px; margin-left:15px;">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">Extra Cheese (Rs.150.00)</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-6" style="display:inline-block; margin-top:-10px;">
                            <label class="control-label">Toppings</label>
                            <select class="form-control">
                                <option>Topping 01</option>
                                <option>Topping 02</option>
                                <option>Topping 03</option>
                            </select>
                        </div>
                        <div class="col-sm-6" style="display:inline-block; margin-top:-10px;">
                            <label class="control-label">&nbsp;</label>
                            <select class="form-control">
                                <option>Topping 01</option>
                                <option>Topping 02</option>
                                <option>Topping 03</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group" style="display:inline-block; margin-top:10px; margin-left:15px;">
                        <label class="control-label">Special Instructions</label>
                        <textarea class="form-control" cols="35"
                                  placeholder="Mention any special instructions"></textarea>
                    </div>
                    <div class="form-group" style="margin-left:15px;">
                        <label class="control-label" style="padding-right:15px;">Quantity:</label>
                        <input class="spin" type="number" min="1" max="100" value="1">
                        <label class="control-label"
                               style="padding-left:30px; padding-right:10px;">Price:&nbsp;&nbsp;</label>
                        <input type="text" disabled="" style="width:10em">
                    </div>
                </form>
            </div>
            <div class="modal-footer" style="margin-top:-20px;">
                <a class="btn btn-default" data-dismiss="modal">Cancel</a>
                <button id="modifyOk" class="btn btn-success btn-popup-modify-cart">Update cart</button>
            </div>
        </div>
    </div>
</div>

<a href="#" class="scrollup"></a>
</body>
</html>