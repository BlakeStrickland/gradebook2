class Parent < ActiveRecord::Base
  has_many :students
  has_secure_password
end
