class Student < ApplicationRecord
  has_many :behaviors
  belongs_to :course
end
