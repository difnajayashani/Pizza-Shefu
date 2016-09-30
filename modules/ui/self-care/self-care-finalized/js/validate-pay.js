var background_color = "#fde99c";

$(document).ready(function () {
    hideErrorLabels();

    $("#txt-card-name").keyup(function () {
        validateCardName();
    });
    $("#txt-card-name").focusout(function () {
        validateCardName();
    });

    $("#txt-card-no").keyup(function () {
        validateCardNumber();
    });
    $("#txt-card-no").focusout(function () {
        validateCardNumber();
    });

    $("#txt-cvv-no").keyup(function () {
        validateCVV();
    });
    $("#txt-cvv-no").focusout(function () {
        validateCVV();
    });

    $("#btn-confirm-pay").click(function () {
        if (validateCardName() == false || validateCardNumber() == false || validateCVV() == false) {
            $("#pay-validation-error-popup").modal('show');
        }else{
            $("#confirm-payment-popup").modal('show');
        }

    });

    $("#btn-pay-popup").click(function () {
        window.location.href = "../pages/success.html";
    });

});

//Validate the card name
function validateCardName() {
    if ($("#txt-card-name").val().length == 0) {
        $("#cardname_error").show();
        $("#txt-card-name").css("background-color", background_color);
        $("#cardname_error").text("Please enter the mandatory fields of the address.");
        return false;
    } else {
        $("#txt-card-name").css("background-color", "white");
        $("#cardname_error").hide();
    }
}

//Validate the card no
function validateCardNumber() {
    if ($("#txt-card-no").val().length == 0) {
        $("#cardno_error").show();
        $("#txt-card-no").css("background-color", background_color);
        $("#cardno_error").text("Please enter the mandatory fields of the address.");
        return false;
    } else {
        $("#txt-card-no").css("background-color", "white");
        $("#cardno_error").hide();
    }
}

//Validate the CVV
function validateCVV() {
    if ($("#txt-cvv-no").val().length == 0) {
        $("#cvv_error").show();
        $("#txt-cvv-no").css("background-color", background_color);
        $("#cvv_error").text("Please enter the mandatory fields of the address.");
        return false;
    } else {
        $("#txt-cvv-no").css("background-color", "white");
        $("#cvv_error").hide();
    }
}

function hideErrorLabels() {
    $("#cardname_error").hide();
    $("#cardno_error").hide();
    $("#cvv_error").hide();
}

