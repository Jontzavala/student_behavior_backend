class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :seat_number, :course_id, :course_name
  belongs_to :course
end
