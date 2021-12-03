class BehaviorSerializer < ActiveModel::Serializer
  attributes :id, :behavior_notes, :date, :student_id
  belongs_to :student
end
