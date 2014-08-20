var pageVariations = [
    function () {
    },
    function () {
        $(document.body).addClass('variation1');
    }
];

var experiment = 'A6baa2IYRrWkqeVgndseyA';
var variation = cxApi.getChosenVariation(experiment);
if (variation === undefined) {
    variation = Math.floor(Math.random() * 1000000000) % pageVariations.length;
    cxApi.setChosenVariation(variation, experiment);
}

pageVariations[variation]();
