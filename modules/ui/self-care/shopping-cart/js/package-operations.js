$(document).ready(function () {
    packageThumbnailsOverlay();
});

// Configurations of the overlay description of the images of packages
function packageThumbnailsOverlay() {
    $('.package-images').contenthover({
        overlay_background: '#000',
        overlay_opacity: 0.8,
        overlay_y_position: 'center'
    });
}