class StudentVisit < ApplicationRecord

  belongs_to :certifier
  belongs_to :student
end
