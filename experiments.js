var pageVariations = [
    function () {
        console.log($);
    },
    function () {
        var newClass = document.body.getAttribute('class') + ' variation1';
        document.body.setAttribute('class', newClass);
    }
];

var experiment = 'A6baa2IYRrWkqeVgndseyA';
var variation = cxApi.getChosenVariation(experiment);
if (variation === undefined) {
    variation = Math.floor(Math.random() * 1000000000) % pageVariations.length;
    cxApi.setChosenVariation(variation, experiment);
}

pageVariations[variation]();
