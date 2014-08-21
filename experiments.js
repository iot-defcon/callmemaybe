var pageVariations = [
    function () {
        $(".autolink").each(function () {
            $(this).replaceWith($(this).text());
        });
    },
    function () {
    },
    function () {
        $('.autolink').css({color: '#FFC745'});
    },
    function () {
        $('.autolink').css({color: '#FFC745', 'text-decoration': 'underline'});
    },
    function () {
        $('.autolink').css({'text-decoration': 'underline'});
    },
    function () {
        $('.autolink').css({'background-color': '#FFC745', 'border-radius': '5px', padding: '3px', 'color': '#333'});
    },
    function () {
        $('.autolink').css({'background-color': 'lightgrey', 'border-radius': '5px', padding: '3px', 'color': 'white'});
    }
];

if (document.location.pathname == '/') {
    var experiment = '9I2nDfeoTBi0qLE89paAZA';
    var variation = cxApi.getChosenVariation(experiment);
    if (variation === undefined) {
        variation = Math.floor(Math.random() * 1000000000) % pageVariations.length;
        cxApi.setChosenVariation(variation, experiment);
    }

    pageVariations[variation]();

    window._gaq = window._gaq || [];
    window._gaq.push(['_trackEvent', 'Experiments', 'variation', experiment, variation, true]);
}