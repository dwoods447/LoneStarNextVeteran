class StateBenefit < ApplicationRecord
  self.primary_key = "state_benefit_id"
  has_one :student
end
