var background_color = "#fde99c";

$(document).ready(function () {
    hideErrorLabels();

    $("#txt-fname").keyup(function () {
        validateFirstName();
    });
    $("#txt-fname").focusout(function () {
        validateFirstName();
    });

    $("#txt-lname").keyup(function () {
        validateLastName();
    });
    $("#txt-lname").focusout(function () {
        validateLastName();
    });

    $("#txt-contactno").keyup(function () {
        validateContactNo();
    });
    $("#txt-contactno").focusout(function () {
        validateContactNo();
    });

    $("#txt-email").keyup(function () {
        validateEmail();
    });
    $("#txt-email").focusout(function () {
        validateEmail();
    });

    $("#txt-deliadd01").keyup(function () {
        validateDeliveryAddress01();
    });
    $("#txt-deliadd01").focusout(function () {
        validateDeliveryAddress01();
    });

    $("#txt-deliadd04").keyup(function () {
        validateDeliveryAddress04();
    });
    $("#txt-deliadd04").focusout(function () {
        validateDeliveryAddress04();
    });

    $("#btn-delivery-submit").click(function () {
        if (validateFirstName() == false || validateLastName() == false || validateContactNo() == false || validateEmail() == false || validateDeliveryAddress01() == false || validateDeliveryAddress04() == false) {
            $("#validation-error-popup").modal('show');
        }else{
            window.location='../pages/delivery-summary.html';
        }
    });
});

// Validate the first name
function validateFirstName() {
    if ($("#txt-fname").val().length == 0) {
        $("#fname_error").show();
        $("#txt-fname").css("background-color", background_color);
        $("#fname_error").text("First name should not be empty.");
        return false;
    } else {
        var inputVal = $("#txt-fname").val();
        var numericReg = /^[a-zA-Z]+$/;
        if (!numericReg.test(inputVal)) {
            $("#fname_error").show();
            $("#txt-fname").css("background-color", background_color);
            $("#fname_error").text("Invalid first name. Only alphabetic characters without spaces allowed.");
            return false;
        } else {
            $("#txt-fname").css("background-color", "white");
            $("#fname_error").hide();
        }
    }
}

// Validate the last name
function validateLastName() {
    if ($("#txt-lname").val().length == 0) {
        $("#txt-lname").css("background-color", "white");
        $("#lname_error").hide();
    } else {
        var inputVal = $("#txt-lname").val();
        var numericReg = /^[a-zA-Z]+$/;
        if (!numericReg.test(inputVal)) {
            $("#lname_error").show();
            $("#txt-lname").css("background-color", background_color);
            $("#lname_error").text("Invalid last name. Only alphabetic characters without spaces allowed.");
            return false;
        } else {
            $("#txt-lname").css("background-color", "white");
            $("#lname_error").hide();
        }
    }
}

// Validate the tel no
function validateContactNo() {
    if ($("#txt-contactno").val().length != 11) {
        $("#contactno_error").show();
        $("#txt-contactno").css("background-color", background_color);
        $("#contactno_error").text("Telephone no should contain 11 characters without the leading zero.");
        return false;
    } else {
        var inputVal = $("#txt-contactno").val();
        var telReg = /^94[^0]\d+$/;
        if (!telReg.test(inputVal)) {
            $("#contactno_error").show();
            $("#txt-contactno").css("background-color", background_color);
            $("#contactno_error").text("Please enter a valid telephone no.");
            return false;
        } else {
            $("#txt-contactno").css("background-color", "white");
            $("#contactno_error").hide();
        }
    }
}

//Validate the email address
function validateEmail() {
    if ($("#txt-email").val().length == 0) {
        $("#txt-email").css("background-color", "white");
        $("#email_error").hide();
    } else {
        var inputVal = $("#txt-email").val();
        var emailReg = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
        if (!emailReg.test(inputVal)) {
            $("#email_error").show();
            $("#txt-email").css("background-color", background_color);
            $("#email_error").text("Please enter a valid email.");
            return false;
        } else {
            $("#txt-email").css("background-color", "white");
            $("#email_error").hide();
        }
    }
}

//Validate the delivery address field 01
function validateDeliveryAddress01() {
    if ($("#txt-deliadd01").val().length == 0) {
        $("#address_error").show();
        $("#txt-deliadd01").css("background-color", background_color);
        $("#address_error").text("Please enter the mandatory fields of the address.");
        return false;
    } else {
        $("#txt-deliadd01").css("background-color", "white");
        $("#address_error").hide();
    }
}

//Validate the delivery address field 04
function validateDeliveryAddress04() {
    if ($("#txt-deliadd04").val().length == 0) {
        $("#address_error").show();
        $("#txt-deliadd04").css("background-color", background_color);
        $("#address_error").text("Please enter the mandatory fields.");
        return false;
    } else {
        $("#txt-deliadd04").css("background-color", "white");
        $("#address_error").hide();
    }
}

function hideErrorLabels() {
    $("#fname_error").hide();
    $("#lname_error").hide();
    $("#contactno_error").hide();
    $("#email_error").hide();
    $("#address_error").hide();
}