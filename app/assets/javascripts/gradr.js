$(function() {
  // ($(document).not($('#drop'))).click(cancel_form);

});

function cancel_form()
{
  $('#drop').removeClass('open').attr("style", "");
  $('#email').val("");
  $('#password').val("");
}


function cancel_class_form()
{
  $('#classform').empty();
  $('#add_class_button').show();
  $('#add_student_button').show();
}