class FederalBenefit < ApplicationRecord
  self.primary_key = "federal_benefit_id"
  has_one :student
end
