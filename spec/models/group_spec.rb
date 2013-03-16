# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Group do
  describe '.new' do
    it 'creates an instance of Group' do
      group = Group.new
      expect(group).to be_an_instance_of(Group)
    end
  end
  describe '#students' do
    it 'has students' do
      group = Group.new
      student = Student.new
      group.students << student
      expect(group.students.first).to be_an_instance_of(Student)
    end
  end
  describe '.create' do
    it 'has an id' do
      group = Group.create(name: 'Group 1')
      expect(group.id).to_not be nil
    end
    it 'fails validation if name is blank' do
      group = Group.create
      expect(group.id).to be nil
    end
  end
end
