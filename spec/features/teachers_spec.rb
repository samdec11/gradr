require 'spec_helper'

describe 'Teachers' do
  describe 'GET /' do
    it 'shows a link for creating a new teacher account' do
      visit root_path
      page.should have_link('Create Account')
      page.should have_link('Login')
    end
    it 'goes to the groups page for the logged in teacher' do
      Teacher.create(name: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      login
      current_path.should eq groups_path
    end
    it 'displays all the classes that belong to the teacher' do
      teacher = Teacher.create(name: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      group = Group.create(name: 'Class 1')
      teacher.groups << group
      login
      page.should have_text('Class 1')
    end
  end
  describe 'GET /students/new' do
    it 'shows the create form when the Create Account button is clicked', :js => true do
      visit root_path
      click_link('Create Account')
      page.should have_button('Create Teacher')
    end
    it 'clears the form when the cancel button is pressed', :js => true do
      visit root_path
      click_link('Create Account')
      click_button('create_cancel')
      page.should_not have_button('Create Teacher')
    end
  end
  describe 'POST /students' do
    it 'allows a teacher to create an account', :js => true do
      visit root_path
      click_link('Create Account')
      fill_in('teacher_name', :with => 'Bob')
      fill_in('teacher_email', :with => 'bob@gmail.com')
      fill_in('teacher_password', :with => 'a')
      fill_in('teacher_password_confirmation', :with => 'a')
      click_button('Create Teacher')
      page.should have_text('You have successfully created an account!')
      expect(Teacher.first.name).to eq 'Bob'
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
