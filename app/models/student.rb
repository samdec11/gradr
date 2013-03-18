# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  attr_accessible :name, :group_id
  validates :name, :presence => :true
  has_many :assignments
  has_and_belongs_to_many :groups
end
