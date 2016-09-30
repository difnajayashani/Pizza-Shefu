//userAdd js
$(document).ready(function () {
    $("#staffDetail").hide();

    $("#staff").click(function(){
        $("#staffDetail").show();
    });

    $("#customer").click(function(){
        $("#staffDetail").hide();
    });
});

//customerView js
    function showMe(){

        var regPeriod= document.getElementById("regPeriod");
        var fname= document.getElementById("cname");
        var city= document.getElementById("city");
        var designation= document.getElementById("designation");
        var department= document.getElementById("department");
        var branch= document.getElementById("branch");

        //customer filter elements
        if (  $("#regCheck").is(":checked")){
            regPeriod.style.display = "block";
        } else{
            regPeriod.style.display = "none";
        }

        if (  $("#nameCheck").is(":checked")){
            fname.style.display = "block";
        } else{
            fname.style.display = "none";
        }

        if (  $("#liveCheck").is(":checked")){
            city.style.display = "block";
        } else{
            city.style.display = "none";
        }

        //staff filter elements
        if (  $("#desigCheck").is(":checked")){
            designation.style.display = "block";
        } else{
            designation.style.display = "none";
        }

        if (  $("#depCheck").is(":checked")){
            department.style.display = "block";
        } else{
            department.style.display = "none";
        }

        if (  $("#branchCheck").is(":checked")){
            branch.style.display = "block";
        } else{
            branch.style.display = "none";
        }


    }


function showMeBlocked(){

    //blocked staff users
    var blockPeriod= document.getElementById("blockPeriod");
    var bsname= document.getElementById("bsname");
    var branch= document.getElementById("branch");

    //blocked customers
    var blockcPeriod= document.getElementById("blockcPeriod");
    var bcname= document.getElementById("bcname");
    var blockcCity= document.getElementById("blockcCity");


    //blocked users filter
    if (  $("#blockCheck").is(":checked")){
        blockPeriod.style.display = "block";
    } else{
        blockPeriod.style.display = "none";
    }

    if (  $("#bsCheck").is(":checked")){
        bsname.style.display = "block";
    } else{
        bsname.style.display = "none";
    }

    if (  $("#branchCheck").is(":checked")){
        branch.style.display = "block";
    } else{
        branch.style.display = "none";
    }


    //blocked customer filters
    if (  $("#blockcCheck").is(":checked")){
        blockcPeriod.style.display = "block";
    } else{
        blockcPeriod.style.display = "none";
    }

    if (  $("#bcCheck").is(":checked")){
        bcname.style.display = "block";
    } else{
        bcname.style.display = "none";
    }

    if (  $("#citycCheck").is(":checked")){
        blockcCity.style.display = "block";
    } else{
        blockcCity.style.display = "none";
    }


}

//toast messages bootstrap





 /*   function maketoast ()
    {
        var priority = 'success';
        var title    = 'Success';
        var message  = 'It worked!';
        $.toaster({ priority : priority, title : title, message : message });
    }
*/



