$(document).ready(function () {

    $("#username").focus();
    
    $("#username").blur(function () {

        var username = $('#username').val();
        if (username.length == 0) {

            $('#username').next('div.red').remove();
            $('#username').after('<div class="red">username is Required</div>');

        } else {

            $(this).next('div.red').remove();
            return true;

        }

    });
})