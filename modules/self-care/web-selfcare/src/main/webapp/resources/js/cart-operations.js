// This JavaScript file contains the operations of shopping cart.
$(document).ready(function () {
    calculateTotal(".tot-price");
    calculateDicountedTotal();
    calculateNetAmount();

    $('#myCarousel').carousel({
        interval: 5000
    })

    $("#coupon-alert-div").hide();

    $("#coupon-submit").click(function () {
        couponValidator();
    });

    $(".mod").click(function () {
        $("#modify-item-popup").modal("show");
        $('#modifyOk').off('click');
        $('#modifyOk').click(function(){
            $.notify("Shopping cart updated.", {
                align: "center",
                verticalAlign: "top",
                type: 'toast',
                delay: 2000,
                animationType:"fade"
            });
            $("#modify-item-popup").modal("hide");
        });
    });

    // Remove item from the shopping cart
    $(".del").click(function () {
        var closest = $(this).closest('tr'); // find the closest table row
        $("#delete-confirm-popup").modal('show');
        $('#removeOk').off('click');
        $('#removeOk').click(function () {
            closest.remove(); // remove the closest table row
            calculateTotal(".tot-price");
            recalculateTotals();
            $("#delete-confirm-popup").modal('hide');
            $.notify("Selected item removed from the shopping cart.", {
                align: "center",
                verticalAlign: "top",
                type: 'toast',
                delay: 2000,
                animationType:"fade"
            });
            if ($("#label-tot").val() !== 0) {
                $("#coupon-submit").prop('disabled', false);
                $("#checkoutButton").prop('disabled', false);
            } else {
                $("#coupon-submit").prop('disabled', true);
                $("#checkoutButton").prop('disabled', true);
            }
        });
    });

    $(".spin").click(function () {
        var qty = $(this).val();
        var price = $(this).closest('tr').children('td:eq(1)').text();
        var total = qty * price;
        $(this).closest('tr').children('td:eq(3)').text(total.toFixed(2));
        calculateTotal(".tot-price");
        recalculateTotals();
    });

    $(".spin").keyup(function () {
        var qty = $(this).val();
        var price = $(this).closest('tr').children('td:eq(1)').text();
        var total = qty * price;
        $(this).closest('tr').children('td:eq(3)').text(total.toFixed(2));
        calculateTotal(".tot-price");
        recalculateTotals();
    });

    $("#checkoutButton").click(function () {
        $("#proceed-checkout-confirm").modal('show');
    });
});

// Validate the coupon
function couponValidator() {
    var enteredCouponVal = $("#txt-coupon").val();
    if (enteredCouponVal.length === 0) {
        $("#coupon-validate-msg").text("Enter coupon code to validate.");
        $("#coupon-alert-div").attr('class', 'alert alert-danger');
        $("#coupon-alert-div").show();
        return false;
    } else if (enteredCouponVal !== "abc123") {
        $("#coupon-validate-msg").text("Invalid coupon code.");
        $("#coupon-alert-div").attr("class", "alert alert-danger");
        $("#coupon-alert-div").show();
        return false;
    } else {
        $("#coupon-alert-div").attr("class", "alert alert-success");
        $("#coupon-validate-msg").text("Coupon code validated.");
        $("#coupon-alert-div").show();
        var discount = $("#label-tot").text() * 20 / 100;
        $("#label-dis").text(discount.toFixed(2));
        $("#txt-coupon").attr("disabled",true);
        calculateDicountedTotal();
        calculateNetAmount();
        return true;
    }
}

// Re-calculate the total upon the modifications to the shopping cart
function recalculateTotals(){
    if($("#coupon-alert-div").hasClass("alert alert-success")){
        var discount = $("#label-tot").text() * 20 / 100;
        $("#label-dis").text(discount.toFixed(2));
        calculateDicountedTotal();
        calculateNetAmount();
    }else{
        calculateDicountedTotal();
        calculateNetAmount();
    }
}

// Calculate the total of shopping cart items
function calculateTotal(element) {
    var sum = 0;
    $(element).each(function () {
        var value = $(this).text();
        // add only if the value is number
        if (!isNaN(value) && value.length != 0) {
            sum += parseFloat(value);
        }
    });
    $("#label-tot").text(sum.toFixed(2));
}

// Calculate the total after deducting the discounts
function calculateDicountedTotal(element) {
    var total = $("#label-tot").text();
    var discount = $("#label-dis").text();
    $("#label-distot").text(parseFloat(total - discount).toFixed(2));
}

// Calculate the net amount by adding 5% service charge
function calculateNetAmount() {
    var discountedTotal = $("#label-distot").text();
    $("#net-amount-field").text(parseFloat(discountedTotal * 105 / 100).toFixed(2));
}