class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :seat_number, :course_id
  belongs_to :course
end
