class Campus < ApplicationRecord
  self.primary_key = "campus_id"
  has_one :student
end
