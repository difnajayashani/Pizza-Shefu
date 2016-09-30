$(document).ready(function () {
    $("#desserts-collapse").hide(menuThumbnailsOverlay());
    $("#beverage-collapse").hide(menuThumbnailsOverlay());

    // Keep only one collapsible group open.
    /*    $('.panel-heading a').on('click', function (e) {
     if ($(this).parents('.panel').children('.panel-collapse').hasClass('in')) {
     e.stopPropagation();
     }
     });*/

    menuThumbnailsOverlay();

    // Dynamically change the tab contents according to the selected menu
    $(".tab-desserts").click(function () {
        $("#pizza-collapse").hide();
        $("#beverage-collapse").hide();
        $("#desserts-collapse").show();
        $("#menu-panel-heading").text("Menu-Desserts");
    });

    // Dynamically change the tab contents according to the selected menu
    $(".tab-pizzas").click(function () {
        $("#desserts-collapse").hide();
        $("#beverage-collapse").hide();
        $("#pizza-collapse").show();
        $("#menu-panel-heading").text("Menu-Pizza");
    });

    // Dynamically change the tab contents according to the selected menu
    $(".tab-beverages").click(function () {
        $("#desserts-collapse").hide();
        $("#pizza-collapse").hide();
        $("#beverage-collapse").show();
        $("#menu-panel-heading").text("Menu-Beverages");
    });

    $(".btn-addtocart-dessert").click(function () {
        // Initialize the toast notification
        $.notify("Selected dessert added to the shopping cart.", {
            align: "center",
            verticalAlign: "top",
            type: 'toast',
            delay: 2000,
            animationType: "fade"
        });
    });

    $(".btn-addtocart-beverage").click(function () {
        // Initialize the toast notification
        $.notify("Selected beverage added to the shopping cart.", {
            align: "center",
            verticalAlign: "top",
            type: 'toast',
            delay: 2000,
            animationType: "fade"
        });
    });

    $(".btn-addtocart-pizza").click(function () {
        $("#add-to-cart-popup").modal('show');
    });

    $(".btn-popup-add-to-cart-pizza").click(function () {
        $("#add-to-cart-popup").modal('hide');
        // Initialize the toast notification
        $.notify("Selected pizza added to the shopping cart.", {
            align: "center",
            verticalAlign: "top",
            type: 'toast',
            delay: 2000,
            animationType: "fade"
        });
    });

    // Validate the search textbox
    $("#btn-menu-search").click(function () {
        if ($("#txt-menu-search").val().length == 0) {
            $("#txt-menu-search").css("border-color", "red");
            $.notify(" Search field is empty...", {
                align: "center",
                verticalAlign: "top",
                delay: 2000,
                animationType: "fade",
                color: "#fff",
                background: "#D44950"
            });
        }else{
            $("#txt-menu-search").css("border-color", "blue");
            window.location.href = "../pages/search-results.html";
        }
    });
});

// Configurations of the overlay description of the images of menu items
function menuThumbnailsOverlay() {
    $('.menu-images').contenthover({
        overlay_background: '#000',
        overlay_opacity: 0.8,
        overlay_y_position: 'center'
    });
}