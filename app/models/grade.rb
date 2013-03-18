# == Schema Information
#
# Table name: grades
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  assignment_id :integer
#  student_id    :integer
#

class Grade < ActiveRecord::Base
  attr_accessible :name, :assignment_id, :student_id, :date
  has_one :student
  has_one :assignment
  belongs_to :student
  belongs_to :assignment
end
