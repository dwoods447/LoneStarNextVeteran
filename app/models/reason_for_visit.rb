class ReasonForVisit < ApplicationRecord
  self.primary_key = "reason_for_visit_id"

   has_one :student_visit
end
