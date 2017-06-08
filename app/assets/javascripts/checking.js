$(document).ready(function() {

  $('body').on(
    'keypress',
    "input[data-behaviour='card_barcode']",
    function(e) {
      if (e.which == 13) {
        e.preventDefault();
        $($(this).data('next')).focus();
      }
    }
  );

});
