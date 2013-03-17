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
      page.should have_selector('#drop', visible: true)
      page.should have_button('Start Grading')
    end
  end
  describe 'JS cancel_form()' do
    it 'removes the login form', :js => true do
      visit root_path
      click_link('Login')
      click_button('Cancel')
      page.should have_selector('#drop', visible: false)
    end
  end
  describe 'POST /login' do
    let(:teacher) { Teacher.create(email: 'bob@gmail.com', name: 'Bob', password: 'a', password_confirmation: 'a') }
    it 'logs the teacher into the system if credentials are correct', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => teacher.email)
      fill_in('Password', :with => 'a')
      click_button('Start Grading')
      visit root_path
      page.should_not have_selector('#drop')
      page.should have_link('Bob')
      page.should have_link('Students')
      page.should have_link('Assignments')
    end
    it 'logs the teacher off the system' do
      teacher = Teacher.create(name: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      login
      click_link('Bob')
      page.should_not have_link('Bob')
      page.should_not have_link('Students')
      page.should_not have_link('Assignments')
      page.should have_selector('#drop', visible: false)
      page.should have_link('Create Account')
      page.should have_link('Login')
      visit root_path
      page.should_not have_link('Bob')
      page.should_not have_link('Students')
      page.should_not have_link('Assignments')
      page.should have_selector('#drop', visible: false)
      page.should have_link('Create Account')
      page.should have_link('Login')
    end
    it 'does not log the teacher into the system if credentials are incorrect', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => teacher.email)
      fill_in('Password', :with => 'b')
      click_button('Start Grading')
      page.should have_button('Start Grading')
    end
  end
end

def login
  visit root_path
  click_link('Login')
  fill_in('Email', :with => 'bob@gmail.com')
  fill_in('Password', :with => 'a')
  click_button('Start Grading')
end