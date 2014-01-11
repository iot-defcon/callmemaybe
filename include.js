if (Math.random() < 0.0 || document.location.href.indexOf('callmemaybe') != -1) {
    $('#like_buttons').after(
      '<div class="container" style="padding-top: 15px">' +
      '  <div class="alert" style="color: #AE3027; background-color: #FFBD36">' +
      '    <strong>What color should we make the background next?</strong> ' +
      '    Call Heather and tell her what you think!' +
      '    <a href="tel:3477781749">(347) 778-1749</a>' +
      '  </div>' +
      '</div>'
    );
}
