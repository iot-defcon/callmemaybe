if (Math.random() < 0.9 || document.location.href.indexOf('callmemaybe') != -1) {
    $('#like_buttons').after(
      '<div class="container" style="padding-top: 15px">' +
      '  <div class="alert" style="color: #AE3027; background-color: #FFBD36">' +
      '    <strong>What do you wish you could do or change on this site?</strong> ' +
      '    Call us at Urban Dictionary!' +
      '    <a href="tel:3477781749">(347) 778-1749</a>' +
      '  </div>' +
      '</div>'
    );
}
