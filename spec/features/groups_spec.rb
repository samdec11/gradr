require 'spec_helper'

describe 'Groups' do
  describe 'GET /' do
    it 'goes to the show page for the logged in teacher' do
      teacher = Teacher.create(name: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      visit groups_path(teacher)
      current_path.should == groups_path(teacher)
    end
  end

end