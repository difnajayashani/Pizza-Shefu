function usage(){
    $.notify("Alert!");
}

function api_type(type){
    $.notify("Thank you for your valued feedback", {type:type});
}

function api_position(){
    var an = $(":radio[name=align]:checked").val();
    var vn = $(":radio[name=verticalAlign]:checked").val();
    $.notify("Alert!", {align:an, verticalAlign:vn});
}

function api_delay(){
    $.notify("Alert!", {delay: $("#delayValue").val()});
}

function myFunc(){
    alert("삭제하였습니다");
}

function example1(){
    $.notify({
        delay : 999999,
        message : "hello world!",
        type : "warning",
        close : "true",
        animation : true,
        animationType : "scale",
        align: "center",
        verticalAlign: "middle",
        color: "#777",
        background: "#eee"
    });
}

function example2(){
    $.notify({
        delay : 0,
        message : "hello world!",
        animation : true,
        align: "center",
        verticalAlign: "middle",
        buttons: ["확인","취소"],
        buttonFunc: ["test"],
        buttonAlign: "right",
        blur: 0.2
    });
}

$(function(){
    $("input[name=align]:radio").change(function(){
        $("#positionBtn").html("align : <var>"+$(this).val()+"</var>, verticalAlign : <var>"+$(":radio[name=verticalAlign]:checked").val()+"</var>");
    });
    $("input[name=verticalAlign]:radio").change(function(){
        $("#positionBtn").html("align : <var>"+$(":radio[name=align]:checked").val()+"</var>, verticalAlign : <var>"+$(this).val()+"</var>");
    });
});


!function ($) {
    $(function(){
        window.prettyPrint && prettyPrint()
    })
}(window.jQuery)