$(function() {
  // ($(document).not($('#drop'))).click(cancel_form);
  $('.class_names').click(show_students_in_class);

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


function cancel_student_form()
{
  $('#student_form').empty();
  $('#new_student_button').show();
}

function cancel_create_form() {
  $('#new_account_form').empty();
}

function show_students_in_class()
{
  $('.class_names').children().show();
}