class StudentVisit < ApplicationRecord
  belongs_to :certifier
  belongs_to :student
  belongs_to :reason_for_visit

  validates_presence_of :student_id
  validates_length_of :student_id,  :maximum => 7
  validates :student,
            :presence=> {:message => "The Student ID# #{@student_id}, is not associated with any Student. Please enter a valid StudentID."}
end
