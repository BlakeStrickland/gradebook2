class Student < ActiveRecord::Base
  has_secure_password
  belongs_to :parent
  belongs_to :teacher
end
