# == Schema Information
#
# Table name: grades
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  assignment_id :integer
#  student_id    :integer
#  date          :date
#  value         :integer
#

class Grade < ActiveRecord::Base
  attr_accessible :name, :assignment_id, :student_id, :date, :value
  has_many :assignments
end
