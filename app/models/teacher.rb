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
#


class Teacher < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation
  validates :name, :email, :password, :presence => true
  has_many :groups
end
