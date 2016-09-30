<!DOCTYPE html>
<html>
<head lang="en">
    <title>Menu</title>
    <link rel="shortcut icon" href="">
    <%@include file="include.jsp" %>
    <script src="<c:url value="/resources/js/menu-operations.js"/>" ></script>
    <script src="<c:url value="/resources/js/jquery.contenthover.js"/>" ></script>



</head>
<body>
<%@include file="NewHeader.jsp" %>

<div id="myToast" class="toast-popup"></div>
<div class="loader-anim"></div>
<div class="main-div">
    <div class="section">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div>
                    <div style="display: inline-block;">
                        <img class="icons" src="<c:url value="/resources/images/icons/menu.png"/>"/>
                        <h3 id="menu-panel-heading" class="header-panel">Menu-Pizza</h3>
                    </div>
                    <div style="display: inline-block; float:right;">
                        <div class="form-group">
                            <div class="col-sm-10" style="padding-right: 0px;">
                                <input id="txt-menu-search" type="text" class="form-control input-sm"
                                       placeholder="Search">
                            </div>
                            <div class="col-sm-2" style="padding-left: 2px;">
                                <button class="btn btn-primary input-sm" id="btn-menu-search"><span><i
                                        class="glyphicon glyphicon-search"></i></span></button>
                            </div>
                        </div>
                        <div style="margin-top: 40px;">
                            <label>Filter:</label>
                            <label class="checkbox-inline"><input type="checkbox" value="search-pizza"
                                                                  checked>Pizzas</label>
                            <label class="checkbox-inline"><input type="checkbox" value="search-desserts" checked>Desserts</label>
                            <label class="checkbox-inline"><input type="checkbox" value="search-beverages" checked>Beverages</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="container">

                    <!-- Pizza collapse -->
                    <div class="row" id="pizza-collapse">
                        <div class="col-md-9">
                            <ul class="nav nav-pills nav-justified">
                                <li class="active tab-pizzas"><a href="#">Pizza</a></li>
                                <li><a class="tab-desserts" href="#">Desserts</a></li>
                                <li><a class="tab-beverages" href="#">Beverages</a></li>
                            </ul>

                            <div>
                                <div class="panel-group" id="pizza-accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="pizza-accordion"
                                                   href="#pizza-collapse-deepdish">
                                                    Deep Dish
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="pizza-collapse-deepdish" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/01.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/02.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add to cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/03.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/04.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/05.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/06.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/07.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/08.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="pizza-accordion"
                                                   href="#pizza-collapse-italiano">
                                                    Italiano</a>
                                            </h4>
                                        </div>
                                        <div id="pizza-collapse-italiano" class="panel-collapse collapsing">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/09.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/10.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/11.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/12.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="pizza-accordian"
                                                   href="#pizza-collapse-gourmet">
                                                    Gourmet</a>
                                            </h4>
                                        </div>
                                        <div id="pizza-collapse-gourmet" class="panel-collapse collapsing">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/13.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/14.png"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/15.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/16.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/17.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/18.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/19.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/20.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="pizza-accordion"
                                                   href="#pizza-collapse-thincrust">
                                                    NY Thin Crust</a>
                                            </h4>
                                        </div>
                                        <div id="pizza-collapse-thincrust" class="panel-collapse collapsing">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/21.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/22.png"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/23.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/pizzas/24.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <button class="btn btn-success btn-xs btn-addtocart-pizza">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3" style="margin-top: 25px;">
                            <img src="<c:url value="/resources/images/icons/favorite.png"/>" width="30px" height="30px"/>
                            <h4 style="display:inline-block;">Top rated pizzas</h4>

                            <div id="myCarousel1" class="carousel slide" data-ride="carousel1">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel1" data-slide-to="1"></li>
                                    <li data-target="#myCarousel1" data-slide-to="2"></li>
                                    <li data-target="#myCarousel1" data-slide-to="3"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img src="<c:url value="/resources/images/pizzas/pizza1-nota.jpg"/>" >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/pizzas/Margherita-Pizza-With-Salami-2-400x600.png"/>" >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/pizzas/c3fc09ff6816d3ec759a68680c61f736.jpg"/>" >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/pizzas/pizza_diavolo.jpg"/>" >
                                    </div>
                                </div>

                                <!-- Left and right controls -->
                                <a class="left carousel-control" href="#myCarousel1" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel1" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Desserts collapse -->
                    <div class="row" id="desserts-collapse">
                        <div class="col-md-9">
                            <ul class="nav nav-pills nav-justified">
                                <li class="tab-pizzas"><a href="#">Pizza</a></li>
                                <li class="active"><a class="tab-desserts" href="#">Desserts</a></li>
                                <li><a class="tab-beverages" href="#">Beverages</a></li>
                            </ul>

                            <div>
                                <div class="panel-group" id="desserts-accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="desserts-accordion"
                                                   href="#desserts-collapse-icecream">
                                                    Ice Cream</a>
                                            </h4>
                                        </div>
                                        <div id="desserts-collapse-icecream" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/desserts/ice-cream%2001.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/desserts/ice-cream%2002.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/desserts/ice-cream%2003.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/desserts/ice-cream%2004.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/desserts/ice-cream%2005.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/desserts/ice-cream%2006.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="desserts-accordion"
                                                       href="#desserts-collapse-pudding">
                                                        Pudding</a>
                                                </h4>
                                            </div>
                                            <div id="desserts-collapse-pudding" class="panel-collapse collapsing">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/pudding%2001.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/pudding%2002.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/pudding%2003.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/pudding%2004.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="desserts-accordian"
                                                       href="#desserts-collapse-salad">
                                                        Salads</a>
                                                </h4>
                                            </div>
                                            <div id="desserts-collapse-salad" class="panel-collapse collapsing">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/salads%2001.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/salads%2002.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/salads%2003.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="desserts-accordion"
                                                       href="#desserts-collapse-brownies">
                                                        Brownies</a>
                                                </h4>
                                            </div>
                                            <div id="desserts-collapse-brownies" class="panel-collapse collapsing">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/brownies%2001.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/brownies%2002.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="desserts-accordion"
                                                       href="#desserts-collapse-cake">
                                                        Cake</a>
                                                </h4>
                                            </div>
                                            <div id="desserts-collapse-cake" class="panel-collapse collapsing">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/cake%2001.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/cake%2002.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/cake%2003.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/cake%2004.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <img src="<c:url value="/resources/images/desserts/cake%2005.jpg"/>"
                                                                 class="img-responsive menu-images">

                                                            <div class="contenthover">
                                                                Item description goes here.
                                                                <div>
                                                                    <label class="add-to-cart-label-qty">QTY:</label>
                                                                    <input class="spin add-to-cart-spin" type="number"
                                                                           min="1" max="100" value="1">
                                                                    <button class="btn btn-success btn-xs btn-addtocart-dessert">
                                                                        Add
                                                                        to
                                                                        cart
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <h4>A title</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3" style="margin-top: 25px;">
                            <img src="<c:url value="/resources/images/icons/favorite.png"/>" width="30px" height="30px"/>
                            <h4 style="display:inline-block;">Top rated desserts</h4>

                            <div id="myCarousel2" class="carousel slide" data-ride="carousel2">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel2" data-slide-to="1"></li>
                                    <li data-target="#myCarousel2" data-slide-to="2"></li>
                                    <li data-target="#myCarousel2" data-slide-to="3"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img src="<c:url value="/resources/images/desserts/Pretzel_Peanut_Clusters-3-1.jpg"/>" >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/desserts/millionaires-shortbread-bars-no-bake-dessert-400x600.jpg"/>" >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/desserts/dcd1215458d3caf672f9f432464c5e42.jpg"/>" >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/desserts/flourless-chocolate-cake-8-400x600.jpg"/>" >
                                    </div>
                                </div>

                                <!-- Left and right controls -->
                                <a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Beverages collapse -->
                    <div class="row" id="beverage-collapse">
                        <div class="col-md-9">
                            <ul class="nav nav-pills nav-justified">
                                <li class="tab-pizzas"><a href="#">Pizza</a></li>
                                <li><a class="tab-desserts" href="#">Desserts</a></li>
                                <li class="active"><a class="tab-beverages" href="#">Beverages</a></li>
                            </ul>

                            <div>
                                <div class="panel-group" id="beverage-accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="beverage-accordion"
                                                   href="#beverage-collapse-tea">
                                                    Tea</a>
                                            </h4>
                                        </div>
                                        <div id="beverage-collapse-tea" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/tea%2001.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/tea%2002.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/tea%2003.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="beverage-accordion"
                                                   href="#beverage-collapse-coffee">
                                                    Coffee</a>
                                            </h4>
                                        </div>
                                        <div id="beverage-collapse-coffee" class="panel-collapse collapsing">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/coffee%2001.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/coffee%2002.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/coffee%2003.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/coffee%2004.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/coffee%2005.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="beverage-accordian"
                                                   href="#beverage-collapse-softdrink">
                                                    Soft Drink</a>
                                            </h4>
                                        </div>
                                        <div id="beverage-collapse-softdrink" class="panel-collapse collapsing">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/soft-drink%2001.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/soft-drink%2002.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/soft-drink%2003.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/soft-drink%2004.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="beverage-accordion"
                                                   href="#beverage-collapse-freshjuice">
                                                    Fresh Juice</a>
                                            </h4>
                                        </div>
                                        <div id="beverage-collapse-freshjuice" class="panel-collapse collapsing">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/fresh-juice%2001.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/fresh-juice%2002.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <img src="<c:url value="/resources/images/beverages/fresh-juice%2003.jpg"/>"
                                                             class="img-responsive menu-images">

                                                        <div class="contenthover">
                                                            Item description goes here.
                                                            <div>
                                                                <label class="add-to-cart-label-qty">QTY:</label>
                                                                <input class="spin add-to-cart-spin" type="number"
                                                                       min="1" max="100" value="1">
                                                                <button class="btn btn-success btn-xs btn-addtocart-beverage">
                                                                    Add
                                                                    to
                                                                    cart
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <h4>A title</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3" style="margin-top: 25px;">
                            <img src="<c:url value="/resources/images/icons/favorite.png"/>" width="30px" height="30px"/>
                            <h4 style="display:inline-block;">Top rated Beverages</h4>

                            <div id="myCarousel3" class="carousel slide" data-ride="carousel3">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel3" data-slide-to="1"></li>
                                    <li data-target="#myCarousel3" data-slide-to="2"></li>
                                    <li data-target="#myCarousel3" data-slide-to="3"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img src="<c:url value="/resources/images/beverages/Bergers-Catering-Cold-Beverages-400x600.jpg"/>" >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/beverages/Irish-Coffee-22-400x600.jpg"/> " >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/beverages/aerated_02_big.jpg"/>" >
                                    </div>

                                    <div class="item">
                                        <img src="<c:url value="/resources/images/beverages/Bergers-Catering-Hot-Beverage-Service-400x600.jpg"/>">
                                    </div>
                                </div>

                                <!-- Left and right controls -->
                                <a class="left carousel-control" href="#myCarousel3" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel3" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<a href="#" class="scrollup"></a>

<!-- Add to cart with customization popup -->
<div id="add-to-cart-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <img class="icons" src="<c:url value="/resources/images/icons/shopping-cart-add.png"/>" >
                <h4 class="modal-title header-panel">Customize and Add to Cart</h4>
            </div>
            <div class="modal-body">
                <p>Customize the following item as you wish and click add to cart to add
                    the item to cart.</p>

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
                <button class="btn btn-success btn-popup-add-to-cart-pizza">Add to Cart</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>