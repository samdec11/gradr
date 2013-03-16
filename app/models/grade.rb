class Grade < ActiveRecord::Base
  attr_accessible :name, :assignment_id, :student_id
  has_one :student
  has_one :assignment
  belongs_to :students
  belongs_to :assignments
end