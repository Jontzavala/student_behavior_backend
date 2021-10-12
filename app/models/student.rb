class Student < ApplicationRecord
  belongs_to :course

  def naming
    self.name.upcase
  end

  def course_name=(cour_attribute)
    if !cour_attribute.blank?
      self.course = Course.find_or_create_by(name: cour_attribute.upcase)
    end
  end

  def course_name
    self.course.name
  end
end
