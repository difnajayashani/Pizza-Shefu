$(document).ready(function () {
    // Filter searched results
    $("#chkbox-search-pizza").click(function () {
        if ($(this).is(':checked')) {
            $("#search-pizza-collapse").show();
        } else {
            $("#search-pizza-collapse").hide();
        }
    });

    // Filter searched results
    $("#chkbox-search-dessert").click(function () {
        if ($(this).is(':checked')) {
            $("#search-desserts-collapse").show();
        } else {
            $("#search-desserts-collapse").hide();
        }
    });

    // Filter searched results
    $("#chkbox-search-beverage").click(function () {
        if ($(this).is(':checked')) {
            $("#search-beverages-collapse").show();
        } else {
            $("#search-beverages-collapse").hide();
        }
    });
});