$(function() {
  ($(document).not($('#drop'))).click(cancel_form);

});

function cancel_form()
{
  $('#drop').removeClass('open').attr("style", "");
}