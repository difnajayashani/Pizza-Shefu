$(document).ready(function () {
    $("#pickup-div").hide();
    $("#date").prop("disabled", true);
    $("#timepicker1").prop("disabled", true);
    $("#timepicker2").prop("disabled", true);

    // Dynamically change the content according to the delivery options
    $("input[type=radio][name=optradio]").change(function () {
        var selectedVal = $("input[type=radio][name=optradio]:checked").val();
        if (selectedVal == "pickup") {
            $("#delivery-div").hide();
            $("#pickup-div").show();
        } else {
            $("#pickup-div").hide();
            $("#delivery-div").show();
        }
    });

    // Enable/disable date/time fields according to the selection (deliver now/later)
    $("input[type=radio][name=radiodelwhen]").change(function () {
        var selectedVal = $("input[type=radio][name=radiodelwhen]:checked").val();
        if (selectedVal == "del-later") {
            $("#date").prop("disabled", false);
            $("#timepicker1").prop("disabled", false);
        } else {
            $("#date").prop("disabled", true);
            $("#timepicker1").prop("disabled", true);
        }
    });

    // Enable/disable date/time fields according to the selection (pickup now/later)
    $("input[type=radio][name=radiopickwhen]").change(function () {
        var selectedVal = $("input[type=radio][name=radiopickwhen]:checked").val();
        if (selectedVal == "pick-later") {
            $("#timepicker2").prop("disabled", false);
        } else {
            $("#timepicker2").prop("disabled", true);
        }
    });
});