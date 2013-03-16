require 'spec_helper'

describe Grade do
  describe '#student' do
    it 'belongs to a student' do
      student = Student.new
      grade = Grade.new
      student.assignments.first.grade = grade
      expect(student.grade).to be_an_instance_of(Grade)
    end
  end
