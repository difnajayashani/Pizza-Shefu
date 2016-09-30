var background_color = "#fde99c";

$(document).ready(function () {
    hideErrorLabels();

    $("#email1").keyup(function () {
        validateEmail();
    });
    $("#email1").focusout(function () {
        validateEmail();
    });

})
function validateEmail() {
    if ($("#email1").val().length == 0) {
        $("#email_error").show();
        $("#email1").css("background-color", background_color);
        $("#email_error").text("Please enter the mandatory fields of the address.");
        return false;
    } else {
        $("#email1").css("background-color", "white");
        $("#email_error").hide();
    }
}
function hideErrorLabels() {
    $("#email_error").hide();
}
