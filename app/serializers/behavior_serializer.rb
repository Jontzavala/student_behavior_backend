class BehaviorSerializer < ActiveModel::Serializer
  attributes :id, :behavior_notes, :attendence, :date, :student_id
  belongs_to :student
end
