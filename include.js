if (Math.random() < 0.02 || document.location.href.indexOf('callmemaybe') != -1) {
    $('#like_buttons').after(
      '<div class="container" style="padding-top: 15px">' +
      '  <div class="alert" style="color: #AE3027; background-color: #FFBD36">' +
      '    <strong>How do you use Urban Dictionary?</strong> ' +
      '    We want to talk to you! Call us now: ' +
      '    <a href="tel:3477781749">(347) 778-1749</a>' +
      '    (If busy or no answer, try again in 5 minutes)' +
      '  </div>' +
      '</div>'
    );
}
