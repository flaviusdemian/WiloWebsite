$(document).ready(function () {

});

var logicModule = function () {

    function loadPage(link) {
        window.location = link;
    }

    return {
        loadPage: loadPage
    };

}();