# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assignment < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  belongs_to :grade
  belongs_to :student
  belongs_to :group
end
