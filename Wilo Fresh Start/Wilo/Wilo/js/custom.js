$(document).ready(function () {
    $(".dropdown ul").wrap("<div />");

    // Notification/inbox dropdown menu
    $(".dropdown").hover(function () {
        $(this).find("div").stop(true, true).fadeIn(500);
    }, function () {
        $(this).find("div").stop(true, true).fadeOut(500);
    });
    
    $(function () {
        $("#accordion").accordion({
            collapsible: true
        });
    });
});

var logicModule = function () {
    
    function loadPage(link) {
        window.location = link;
    }

    return {
        loadPage: loadPage
    };

}();