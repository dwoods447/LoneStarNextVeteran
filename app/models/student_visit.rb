class StudentVisit < ApplicationRecord
  belongs_to :certifier
  belongs_to :student
  belongs_to :reason_for_visit

end
