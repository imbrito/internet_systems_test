class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  validates :student_id, :course_id, :numericality => { :greater_than_or_equal_to => 0 }
end
