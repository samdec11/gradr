require 'spec_helper'

describe 'Session' do
  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login')
    end
  end
  describe 'GET /login' do
    it 'displays the login form', :js => true do
      visit root_path
      click_link('Login')
      page.should have_button('Cancel')
      page.should have_button('Start Grading')
    end
  end
  # describe 'JS cancel_form()' do
  #   it 'removes the login form', :js => true do
  #     visit root_path
  #     click_link('Login')
  #     click_button('Cancel')
  #     page.should_not have_button('Start Grading')
  #   end
  # end
  # describe 'POST /login' do
  #   let(:teacher) { Teacher.create(email: 'bob@gmail.com', name: 'Bob', password: 'a', password_confirmation: 'a') }
  #   it 'logs the teacher into the system if credentials are correct', :js => true do
  #     visit root_path
  #     click_link('Login')
  #     fill_in('Email', :with => teacher.email)
  #     fill_in('Password', :with => 'a')
  #     click_button('Start Grading')
  #     visit root_path

  #     page.should_not have_button('Start Grading')
  #     page.should have_link('Bob')
  #     page.should_not have_link('Register')
  #     page.should_not have_link('Login')
  #     page.should have_link('Bob')
  #     page.should_not have_link('Register')
  #     page.should_not have_link('Login')
  #   end
  #   it 'logs the teacher off the system', :js => true do
  #     visit root_path
  #     click_link('Login')
  #     fill_in('Email', :with => teacher.email)
  #     fill_in('Password', :with => 'a')
  #     click_button('Start Grading')
  #     click_link('Bob')
  #     page.should_not have_link('Bob')
  #     page.should have_link('Register')
  #     page.should have_link('Login')
  #     page.should_not have_button('Free')
  #     visit root_path
  #     page.should_not have_link('Bob')
  #     page.should have_link('Register')
  #     page.should have_link('Login')
  #     page.should_not have_button('Basic')
  #   end
  #   it 'does not log the teacher into the system if credentials are incorrect', :js => true do
  #     visit root_path
  #     click_link('Login')
  #     fill_in('Email', :with => teacher.email)
  #     fill_in('Password', :with => 'b')
  #     click_button('Start Grading')
  #     page.should have_button('Start Grading')
  #   end
  # end
end