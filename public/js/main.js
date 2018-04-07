$(document).ready(function() {
    $(".menu-trigger").click(function () {
        $(".main-menu").slideToggle();
        $(".main-menu").removeClass('hider');
    });

    $(".close-btn").click(function () {
        $(".main-menu").slideToggle();
    });

});

