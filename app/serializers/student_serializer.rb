class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :seat_number, :course_id, :course_name
  has_one :behavior
  belongs_to :course
end
