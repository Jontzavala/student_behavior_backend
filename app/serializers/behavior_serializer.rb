class BehaviorSerializer < ActiveModel::Serializer
  attributes :id, :behavior_notes, :presence, :date, :student_id
  #belongs_to :student
end
