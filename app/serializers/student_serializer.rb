class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :seat_number, :course_id
  #has_many :behaviors
  belongs_to :course
end
