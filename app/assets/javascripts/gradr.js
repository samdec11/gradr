$(function() {
  // ($(document).not($('#drop'))).click(cancel_form);

});

function cancel_login_form()
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

function cancel_create_form() {
  $('#new_account_form').empty();
}