$(document).ready(function () {
    $("#btn-pay").click(function () {
        var selectedVal = $("input[type=radio][name=paymentradio]:checked").val();
        if (selectedVal == "payondel") {
            window.location.href = "success";
        } else {
            window.location.href = "pay";
        }
    });
});