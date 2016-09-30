// This JavaScript file contains the setup for 'go to top' feature.
$(document).ready(function () {
    // Appear/disappear according when scrolling
    $(window).scroll(function () {
        if ($(this).scrollTop() > 10) {
            $('.scrollup').fadeIn();
        } else {
            $('.scrollup').fadeOut();
        }
    });

    // Go to the page top when clicked
    $('.scrollup').click(function () {
        $("html, body").animate({scrollTop: 0}, 600);
        return false;
    });
});