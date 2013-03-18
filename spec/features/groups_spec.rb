require 'spec_helper'

describe 'Groups' do
  describe 'GET /' do
    it 'goes to the show page for the logged in teacher' do
      teacher = Teacher.create(name: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      login
      current_path.should eq groups_path
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