if (Math.random() < 0.0 || document.location.href.indexOf('callmemaybe') != -1) {
    $('#like_buttons').after(
      '<div class="container" style="padding-top: 15px">' +
      '  <div class="alert" style="color: #AE3027; background-color: #FFBD36">' +
      '    <strong>Wanna chat with Urban Dictionary?</strong> ' +
      '    Tell us what you think!' +
      '    <a href="tel:3477781749">(347) 778-1749</a>' +
      '  </div>' +
      '</div>'
    );
}
