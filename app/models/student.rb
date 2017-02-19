class Student < ApplicationRecord
  self.primary_key  = "student_id"
  belongs_to :campus
  belongs_to :federal_benefit
  belongs_to :state_benefit

   has_many :student_visits
   has_many :certifiers, through: :student_visits
end
