# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  groupsize  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assignment < ActiveRecord::Base
  attr_accessible :name, :groupsize
  validates :name, :groupsize, :presence => true
  validates :groupsize, :numericality =>[:greater_than => 0]
  has_one :grade
  belongs_to :group
end
