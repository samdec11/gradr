# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# == Schema Information
#
# Table name: teachers
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  email                 :string(255)
#  password              :string(255)
#  password_confirmation :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
require 'spec_helper'


describe Teacher do
  describe '.new' do
    it 'creates an instance of Teacher' do
      teacher = Teacher.new
      expect(teacher).to be_an_instance_of(Teacher)
    end
  end
  describe '#groups' do
    it 'has groups' do
      group = Group.new
      teacher = Teacher.new
      teacher.groups << group
      expect(teacher.groups.first).to be_an_instance_of(Group)
    end
  end
  describe '#students' do
    it 'has students' do
      group = Group.new
      teacher = Teacher.new
      student = Student.new
      teacher.groups.first.students << student
      expect(teacher.groups.first.students.first).to be_an_instance_of(Student)
    end
  end
  describe '.create' do
    it 'has an id' do
      teacher = Teacher.create(name: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(teacher.id).to_not be nil
    end
    it 'fails validation if name, email, and password are blank' do
      teacher = Teacher.create
      expect(teacher.id).to be nil
    end
  end
end
