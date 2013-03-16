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

class Group < ActiveRecord::Base
  attr_accessible :name, :teacher_id
  validates :name, :presence => true
  has_and_belongs_to_many :students
  has_many :assignments
  belongs_to :teacher
end
